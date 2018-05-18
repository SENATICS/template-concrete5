<?php
namespace Concrete\Core\Mail;

use Config;
use Concrete\Core\Logging\GroupLogger;
use Zend\Mail\Message;
use Zend\Mail\Transport\Sendmail as SendmailTransport;
use Zend\Mail\Transport\Smtp as SmtpTransport;
use Zend\Mail\Transport\SmtpOptions;
use Zend\Mime\Message as MimeMessage;
use Zend\Mime\Mime;
use Zend\Mime\Part as MimePart;
use Exception;
use Monolog\Logger;

class Service
{
    protected $headers;
    protected $to;
    protected $replyto;
    protected $cc;
    protected $bcc;
    protected $from;
    protected $data;
    protected $subject;
    protected $attachments;
    protected $template;
    protected $body;
    protected $bodyHTML;
    protected $testing;

    public function __construct()
    {
        $this->reset();
    }

    /**
     * this method is called by the Loader::helper to clean up the instance of this object
     * resets the class scope variables.
     */
    public function reset()
    {
        $this->headers = array();
        $this->to = array();
        $this->replyto = array();
        $this->cc = array();
        $this->bcc = array();
        $this->from = array();
        $this->data = array();
        $this->subject = '';
        $this->attachments = array();
        $this->template = '';
        $this->body = false;
        $this->bodyHTML = false;
        $this->testing = false;
    }

    public static function getMailerObject()
    {
        $response = array();
        $response['mail'] = new Message();
        $response['mail']->setEncoding(APP_CHARSET);

        if (strcasecmp(Config::get('concrete.mail.method'), 'smtp') == 0) {
            $config = array(
                'host' => Config::get('concrete.mail.methods.smtp.server'),
            );

            $username = Config::get('concrete.mail.methods.smtp.username');
            $password = Config::get('concrete.mail.methods.smtp.password');
            if ($username != '') {
                $config['connection_class'] = 'login';
                $config['connection_config'] = array();
                $config['connection_config']['username'] = $username;
                $config['connection_config']['password'] = $password;
            }

            $port = Config::get('concrete.mail.methods.smtp.port', '');
            if ($port != '') {
                $config['port'] = $port;
            }

            $encr = Config::get('concrete.mail.methods.smtp.encryption', '');
            if ($encr != '') {
                $config['connection_config']['ssl'] = $encr;
            }
            $transport = new SmtpTransport();
            $options = new SmtpOptions($config);
            $transport->setOptions($options);
            $response['transport'] = $transport;
        } else {
            $response['transport'] = new SendmailTransport();
        }

        return $response;
    }

    /**
     * Adds a parameter to a mail template.
     *
     * @param string $key
     * @param mixed $val
     */
    public function addParameter($key, $val)
    {
        $this->data[$key] = $val;
    }

    /**
     * Add attachment to send with an email.
     *
     * Sample Code:
     * $attachment = $mailHelper->addAttachment($fileObject);
     * $attachment->filename = "CustomFilename";
     * $mailHelper->send();
     *
     * @param \Concrete\Core\File\File $fob File to attach
     *
     * @return \StdClass Pointer to the attachment
     *
     * @throws \Exception
     */
    public function addAttachment(\Concrete\Core\File\File $fob)
    {

        // Get file version.
        $fv = $fob->getVersion();

        // Get file data.
        $mimetype = $fv->getMimeType();
        $filename = $fv->getFilename();
        $resource = $fob->getFileResource();
        $content = $resource->read();

        // Create attachment.
        $mp = new MimePart($content);
        $mp->type = $mimetype;
        $mp->disposition = Mime::DISPOSITION_ATTACHMENT;
        $mp->encoding = Mime::ENCODING_BASE64;
        $mp->filename = $filename;

        // Add mimepart to attachments.
        $this->attachments[] = $mp;
    }

    /**
     * Loads an email template from the /mail/ directory.
     *
     * @param string $template
     * @param string $pkgHandle
     */
    public function load($template, $pkgHandle = null)
    {
        extract($this->data);

        // loads template from mail templates directory
        if (file_exists(DIR_FILES_EMAIL_TEMPLATES."/{$template}.php")) {
            include DIR_FILES_EMAIL_TEMPLATES."/{$template}.php";
        } else {
            if ($pkgHandle != null) {
                if (is_dir(DIR_PACKAGES.'/'.$pkgHandle)) {
                    include DIR_PACKAGES.'/'.$pkgHandle.'/'.DIRNAME_MAIL_TEMPLATES."/{$template}.php";
                } else {
                    include DIR_PACKAGES_CORE.'/'.$pkgHandle.'/'.DIRNAME_MAIL_TEMPLATES."/{$template}.php";
                }
            } else {
                include DIR_FILES_EMAIL_TEMPLATES_CORE."/{$template}.php";
            }
        }

        if (isset($from)) {
            $this->from($from[0], $from[1]);
        }
        $this->template = $template;
        $this->subject = $subject;
        $this->body = (isset($body) && is_string($body)) ? $body : false;
        $this->bodyHTML = (isset($bodyHTML) && is_string($bodyHTML)) ? $bodyHTML : false;
    }

    /**
     * Manually set the text body of a mail message, typically the body is set in the template + load method.
     *
     * @param string|false $body Set the text body (false to not use plain text body)
     */
    public function setBody($body)
    {
        $this->body = $body;
    }

    /**
     * Manually set the message's subject.
     *
     * @param string $subject
     */
    public function setSubject($subject)
    {
        $this->subject = $subject;
    }

    /**
     * Returns the message's subject.
     *
     * @return string
     */
    public function getSubject()
    {
        return $this->subject;
    }

    /**
     * Returns the message's text body.
     *
     * @return string|false
     */
    public function getBody()
    {
        return $this->body;
    }

    /**
     * Returns the message's html body.
     *
     * @return string|false
     */
    public function getBodyHTML()
    {
        return $this->bodyHTML;
    }

    /**
     * manually set the HTML portion of a MIME encoded message, can also be done by setting $bodyHTML in a mail template.
     *
     * @param string|false $html Set the html body (false to not use html body)
     */
    public function setBodyHTML($html)
    {
        $this->bodyHTML = $html;
    }

    /**
     * @param MailImporter $importer
     * @param array $data
     */
    public function enableMailResponseProcessing($importer, $data)
    {
        foreach ($this->to as $em) {
            $importer->setupValidation($em[0], $data);
        }
        $this->from($importer->getMailImporterEmail());
        $this->body = $importer->setupBody(($this->body === false) ? '' : $this->body);
    }

    /**
     * @param array $arr
     *
     * @return string
     *
     * @todo documentation
     */
    protected function generateEmailStrings($arr)
    {
        $str = '';
        for ($i = 0; $i < count($arr); $i++) {
            $v = $arr[$i];
            if (isset($v[1])) {
                $str .= '"'.$v[1].'" <'.$v[0].'>';
            } elseif (isset($v[0])) {
                $str .= $v[0];
            }
            if (($i + 1) < count($arr)) {
                $str .= ', ';
            }
        }

        return $str;
    }

    /**
     * Sets the from address on the email about to be sent out.
     *
     * @param string $email
     * @param string $name
     */
    public function from($email, $name = null)
    {
        $this->from = array($email, $name);
    }

    /**
     * Sets to the to email address on the email about to be sent out.
     *
     * @param string $email
     * @param string $name
     */
    public function to($email, $name = null)
    {
        if (strpos($email, ',') > 0) {
            $email = explode(',', $email);
            foreach ($email as $em) {
                $this->to[] = array($em, $name);
            }
        } else {
            $this->to[] = array($email, $name);
        }
    }

    /**
     * Adds an email address to the cc field on the email about to be sent out.
     *
     * @param string $email
     * @param string $name
     *
     * @since 5.5.1
     */
    public function cc($email, $name = null)
    {
        if (strpos($email, ',') > 0) {
            $email = explode(',', $email);
            foreach ($email as $em) {
                $this->cc[] = array($em, $name);
            }
        } else {
            $this->cc[] = array($email, $name);
        }
    }

    /**
     * Adds an email address to the bcc field on the email about to be sent out.
     *
     * @param string $email
     * @param string $name
     *
     * @since 5.5.1
     */
    public function bcc($email, $name = null)
    {
        if (strpos($email, ',') > 0) {
            $email = explode(',', $email);
            foreach ($email as $em) {
                $this->bcc[] = array($em, $name);
            }
        } else {
            $this->bcc[] = array($email, $name);
        }
    }

    /*
     * Sets the reply-to address on the email about to be sent out
     * @param string $email
     * @param string $name
     * @return void
     */
    public function replyto($email, $name = null)
    {
        if (strpos($email, ',') > 0) {
            $email = explode(',', $email);
            foreach ($email as $em) {
                $this->replyto[] = array($em, $name);
            }
        } else {
            $this->replyto[] = array($email, $name);
        }
    }

    /** Set the testing state (if true the email logging never occurs and sending errors will throw an exception)
     * @param bool $testing
     */
    public function setTesting($testing)
    {
        $this->testing = $testing ? true : false;
    }

    /** Retrieve the testing state
     * @return boolean
     */
    public function getTesting()
    {
        return $this->testing;
    }

    /**
     * Set additional headers
     *
     * @param array $headers
     * @param string $val
     */
    public function setAdditionalHeaders($headers)
    {
        $this->headers = $headers;
    }

    /**
     * Sends the email.
     *
     * @param bool $resetData Whether or not to reset the service to its default values.
     *
     * @throws \Exception
     *
     * @return bool
     */
    public function sendMail($resetData = true)
    {
        $_from[] = $this->from;
        $fromStr = $this->generateEmailStrings($_from);
        $toStr = $this->generateEmailStrings($this->to);
        $replyStr = $this->generateEmailStrings($this->replyto);
        $zendMailData = self::getMailerObject();

        $mail = $zendMailData['mail'];
        $transport = $zendMailData['transport'];

        if (is_array($this->from) && count($this->from)) {
            if ($this->from[0] != '') {
                $from = $this->from;
            }
        }
        if (!isset($from)) {
            $from = array(Config::get('concrete.email.default.address'), Config::get('concrete.email.default.name'));
            $fromStr = Config::get('concrete.email.default.address');
        }

        // The currently included Zend library has a bug in setReplyTo that
        // adds the Reply-To address as a recipient of the email. We must
        // set the Reply-To before any header with addresses and then clear
        // all recipients so that a copy is not sent to the Reply-To address.
        if (is_array($this->replyto)) {
            foreach ($this->replyto as $reply) {
                $mail->setReplyTo($reply[0], $reply[1]);
            }
        }

        $mail->setFrom($from[0], $from[1]);
        $mail->setSubject($this->subject);
        foreach ($this->to as $to) {
            $mail->addTo($to[0], $to[1]);
        }

        if (is_array($this->cc) && count($this->cc)) {
            foreach ($this->cc as $cc) {
                $mail->addCc($cc[0], $cc[1]);
            }
        }

        if (is_array($this->bcc) && count($this->bcc)) {
            foreach ($this->bcc as $bcc) {
                $mail->addBcc($bcc[0], $bcc[1]);
            }
        }
        $headers = $mail->getHeaders();
        if ($headers->has('messageid')) {
            $messageIdHeader = $headers->get('messageid');
        } else {
            $messageIdHeader = new \Zend\Mail\Header\MessageId();
            $headers->addHeader($messageIdHeader);
        }

        $headers->addHeaders($this->headers);

        $messageIdHeader->setId();

        $body = new MimeMessage();
        if (($this->body !== false) && ($this->bodyHTML !== false)) {
            $alternatives = new MimeMessage();
            $text = new MimePart($this->body);
            $text->type = 'text/plain';
            $text->charset = APP_CHARSET;
            $alternatives->addPart($text);
            $html = new MimePart($this->bodyHTML);
            $html->type = 'text/html';
            $html->charset = APP_CHARSET;
            $alternatives->addPart($html);
            $alternativesPath = new MimePart($alternatives->generateMessage());
            $alternativesPath->type = 'multipart/alternative;'.Mime::LINEEND.' boundary="'.$alternatives->getMime()->boundary().'"';
            $body->addPart($alternativesPath);
        } elseif ($this->body !== false) {
            $text = new MimePart($this->body);
            $text->type = 'text/plain';
            $text->charset = APP_CHARSET;
            $body->addPart($text);
        } elseif ($this->bodyHTML !== false) {
            $html = new MimePart($this->bodyHTML);
            $html->type = 'text/html';
            $html->charset = APP_CHARSET;
            $body->addPart($html);
        }
        foreach ($this->attachments as $att) {
            $body->addPart($att);
        }
        if (count($body->getParts()) === 0) {
            $text = new MimePart('');
            $text->type = 'text/plain';
            $text->charset = APP_CHARSET;
            $body->addPart($text);
        }
        $mail->setBody($body);

        $sent = false;
        try {
            if (Config::get('concrete.email.enabled')) {
                $transport->send($mail);
            }
            $sent = true;
        } catch (Exception $e) {
            if ($this->getTesting()) {
                throw $e;
            }
            $l = new GroupLogger(LOG_TYPE_EXCEPTIONS, Logger::CRITICAL);
            $l->write(t('Mail Exception Occurred. Unable to send mail: ').$e->getMessage());
            $l->write($e->getTraceAsString());
            if (Config::get('concrete.log.emails')) {
                $l->write(t('Template Used').': '.$this->template);
                $l->write(t('To').': '.$toStr);
                $l->write(t('From').': '.$fromStr);
                if (isset($this->replyto)) {
                    $l->write(t('Reply-To').': '.$replyStr);
                }
                $l->write(t('Subject').': '.$this->subject);
                $l->write(t('Body').': '.$this->body);
            }
            $l->close();
        }

        // add email to log
        if (Config::get('concrete.log.emails') && !$this->getTesting()) {
            $l = new GroupLogger(LOG_TYPE_EMAILS, Logger::INFO);
            if (Config::get('concrete.email.enabled')) {
                $l->write('**'.t('EMAILS ARE ENABLED. THIS EMAIL WAS SENT TO mail()').'**');
            } else {
                $l->write('**'.t('EMAILS ARE DISABLED. THIS EMAIL WAS LOGGED BUT NOT SENT').'**');
            }
            $l->write(t('Template Used').': '.$this->template);
            $l->write(t('Mail Details: %s', $mail->toString()));
            $l->close();
        }

        // clear data if applicable
        if ($resetData) {
            $this->reset();
        }

        return $sent;
    }
}
