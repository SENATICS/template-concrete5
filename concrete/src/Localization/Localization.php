<?php
namespace Concrete\Core\Localization;

use Config;
use Concrete\Core\Cache\Adapter\ZendCacheDriver;
use Core;
use Events;
use Zend\I18n\Translator\Translator;
use Punic\Data as PunicData;

class Localization
{
    private static $loc = null;
    /**
     * @var ZendCacheDriver|null
     */
    private static $cache = null;

    public static function getInstance()
    {
        if (null === self::$loc) {
            self::$loc = new self();
        }

        return self::$loc;
    }

    public static function changeLocale($locale)
    {
        $loc = self::getInstance();
        $loc->setLocale($locale);
    }
    /** Returns the currently active locale
     * @return string
     *
     * @example 'en_US'
     */
    public static function activeLocale()
    {
        $loc = self::getInstance();

        return $loc->getLocale();
    }
    /** Returns the language for the currently active locale
     * @return string
     *
     * @example 'en'
     */
    public static function activeLanguage()
    {
        return current(explode('_', self::activeLocale()));
    }

    protected $translate = null;

    public function setLocale($locale)
    {
        if (($locale == 'en_US') && (!Config::get('concrete.misc.enable_translate_locale_en_us'))) {
            $this->translate = null;
        } else {
            $this->translate = new Translator();
            $this->translate->setLocale($locale);
            $this->translate->setCache(self::getCache());
            // Core language files
            $languageFile = DIR_LANGUAGES . "/$locale/LC_MESSAGES/messages.mo";
            if (!is_file($languageFile)) {
                $languageFile = DIR_LANGUAGES_CORE . "/$locale/LC_MESSAGES/messages.mo";
                if (!is_file($languageFile)) {
                    $languageFile = '';
                }
            }
            if ($languageFile !== '') {
                $this->translate->addTranslationFile('gettext', $languageFile);
            }
            // Package language files
            if (Config::get('app.bootstrap.packages_loaded') === true) {
                $pkgList = \Concrete\Core\Package\PackageList::get();
                foreach ($pkgList->getPackages() as $pkg) {
                    $pkg->setupPackageLocalization($locale, $this->translate);
                }
                // Site language files
                static::setupSiteLocalization($this->translate);
            }
        }
        PunicData::setDefaultLocale($locale);
        $event = new \Symfony\Component\EventDispatcher\GenericEvent();
        $event->setArgument('locale', $locale);
        Events::dispatch('on_locale_load', $event);
    }

    /**
     * Load the site language files (must be done after all packages called their setupPackageLocalization)
     */
    public static function setupSiteLocalization(Translator $translate = null)
    {
        if (\Core::make('multilingual/detector')->isEnabled()) {
            if ($translate === null) {
                $translate = static::getInstance()->getActiveTranslateObject();
            }
            if ($translate !== null) {
                $languageFile = DIR_LANGUAGES_SITE_INTERFACE . "/" . $translate->getLocale() . ".mo";
                if (is_file($languageFile)) {
                    $translate->addTranslationFile('gettext', $languageFile);
                }
            }
        }
    }

    public function getLocale()
    {
        $translate = $this->getActiveTranslateObject();

        return $translate ? $translate->getLocale() : 'en_US';
    }

    public function getActiveTranslateObject()
    {
        return isset($this->translate) ? $this->translate : null;
    }

    public static function getTranslate()
    {
        $loc = self::getInstance();

        return $loc->getActiveTranslateObject();
    }

    public static function getAvailableInterfaceLanguages()
    {
        $languages = array();
        $fh = Core::make('helper/file');

        if (file_exists(DIR_LANGUAGES)) {
            $contents = $fh->getDirectoryContents(DIR_LANGUAGES);
            foreach ($contents as $con) {
                if (is_dir(DIR_LANGUAGES . '/' . $con) && file_exists(DIR_LANGUAGES . '/' . $con . '/LC_MESSAGES/messages.mo')) {
                    $languages[] = $con;
                }
            }
        }
        if (file_exists(DIR_LANGUAGES_CORE)) {
            $contents = $fh->getDirectoryContents(DIR_LANGUAGES_CORE);
            foreach ($contents as $con) {
                if (is_dir(DIR_LANGUAGES_CORE . '/' . $con) && file_exists(DIR_LANGUAGES_CORE . '/' . $con . '/LC_MESSAGES/messages.mo') && (!in_array($con, $languages))) {
                    $languages[] = $con;
                }
            }
        }

        return $languages;
    }

    /**
     * Generates a list of all available languages and returns an array like
     * [ "de_DE" => "Deutsch (Deutschland)",
     *   "en_US" => "English (United States)",
     *   "fr_FR" => "Francais (France)"]
     * The result will be sorted by the key.
     * If the $displayLocale is set, the language- and region-names will be returned in that language.
     *
     * @param string|null $displayLocale Language of the description.
     *                    Set to null to get each locale name in its own language,
     *                    set to '' to use the current locale,
     *                    set to a specific locale to get the names in that language
     *
     * @return array An associative Array with locale as the key and description as content
     */
    public static function getAvailableInterfaceLanguageDescriptions($displayLocale = '')
    {
        $languages = self::getAvailableInterfaceLanguages();
        if (count($languages) > 0) {
            array_unshift($languages, 'en_US');
        }
        $locales = array();
        foreach ($languages as $lang) {
            $locales[$lang] = self::getLanguageDescription($lang, $displayLocale);
        }
        natcasesort($locales);

        return $locales;
    }

    /**
     * Get the description of a locale consisting of language and region description
     * e.g. "French (France)".
     *
     * @param string $locale Locale that should be described
     * @param string|null $displayLocale Language of the description.
     *                    Set to null to get each locale name in its own language,
     *                    set to '' to use the current locale,
     *                    set to a specific locale to get the names in that language
     *
     * @return string Description of a language
     */
    public static function getLanguageDescription($locale, $displayLocale = '')
    {
        return \Punic\Language::getName($locale, is_null($displayLocale) ? $locale : $displayLocale);
    }

    /**
     * @return ZendCacheDriver
     */
    protected static function getCache()
    {
        if (is_null(self::$cache)) {
            self::$cache = new ZendCacheDriver('cache/expensive');
        }

        return self::$cache;
    }

    /**
     * Clear the translations cache.
     */
    public static function clearCache()
    {
        $locale = static::activeLocale();
        self::getCache()->flush();
        static::changeLocale($locale);
    }
}
