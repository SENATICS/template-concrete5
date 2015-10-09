<?php
use Concrete\Core\Attribute\Key\Key;
use Concrete\Core\Http\ResponseAssetGroup;

defined('C5_EXECUTE') or die('Access denied.');

$r = ResponseAssetGroup::get();
$r->requireAsset('javascript', 'underscore');
$r->requireAsset('javascript', 'core/events');
$r->requireAsset('core/legacy');

$activeAuths = AuthenticationType::getList(true, true);
$form = Loader::helper('form');

$active = null;
if ($authType) {
    $active = $authType;
    $activeAuths = array($authType);
}

/** @var Key[] $required_attributes */

$attribute_mode = (isset($required_attributes) && count($required_attributes));
?>
<style>
    body {
        background: url("<?php echo BASE_URL ?>/application/single_pages/bg_login.jpg");
        background-size: cover;
    }
    html{
        height:100%;   
    }
    #ccm-toolbar{
        display:none !important;   
    }
    .types{
        display:none;   
    }
    .container{
        padding-top:0px !important;    
    }
    .footer-SENATICs{
        background:rgba(0,0,0,0.8);
        color:#FFF;
        padding:10px;
        box-sizing:border-box;
        position:fixed;
        width:100%;
        bottom:0;
        left:0;
        text-align:center;
    }
    .login-page .types{
        padding:0px !important;
    }
    .titulo-Iniciar{
        font-size: 40px !important; 
        color: #FFF !important;
        font-weight:300;
        text-align:center;
        margin-bottom:40px !important;
        text-shadow:3px 3px 7px rgba(0,0,0,0.2);
        font-family:"HelveticaNeue-Light","Helvetica Neue Light","Helvetica Neue",Helvetica,Arial,"Lucida Grande",sans-serif;
    }
    .login-form{
        height:auto !important;   
    }
    @media only screen and (max-width: 768px) {
        .login-page .types{
            height:auto;
        }
    }
    @media only screen and (max-width: 400px) {
        .titulo-Iniciar{
            font-size: 20px !important;
        }   
    }
</style>
<div class="login-page">
    <div class="col-sm-4 col-sm-offset-4">
        <h3 class="titulo-Iniciar">Acceder al Portal</h3>
    </div>
    <div class="col-sm-4 col-sm-offset-4 login-form">
        
        <div class="row login-row">
            <div class="types col-sm-8">
                
                <p>Imagen</p>

                <ul class="auth-types" style="display:none !important;">
                    <?php
                    if ($attribute_mode) {
                        ?>
                        <li data-handle="required_attributes">
                            <i class="fa fa-question"></i>
                            <span><?php echo t('Attributes') ?></span>
                        </li>
                        <?php
                    } else {
                        /** @var AuthenticationType[] $activeAuths */
                        foreach ($activeAuths as $auth) {
                            ?>
                            <li data-handle="<?php echo $auth->getAuthenticationTypeHandle() ?>">
                                <?php echo $auth->getAuthenticationTypeIconHTML() ?>
                                <span><?php echo $auth->getAuthenticationTypeName() ?></span>
                            </li>
                        <?php
                        }
                    }
                    ?>
                </ul>
            </div>
            <div class="controls col-sm-12 col-xs-12">
                <?php
                if ($attribute_mode) {
                    $attribute_helper = new Concrete\Core\Form\Service\Widget\Attribute();
                    ?>
                    <form action="<?php echo View::action('fill_attributes') ?>" method="POST">
                        <div data-handle="required_attributes"
                             class="authentication-type authentication-type-required-attributes">
                            <div class="ccm-required-attribute-form"
                                 style="height:340px;overflow:auto;margin-bottom:20px;">
                                <?php
                                foreach ($required_attributes as $key) {
                                    echo $attribute_helper->display($key, true);
                                }
                                ?>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary pull-right"><?php echo t('Submit') ?></button>
                            </div>

                        </div>
                    </form>
                    <?php
                } else {
                    foreach ($activeAuths as $auth) {
                        ?>
                        <div data-handle="<?php echo $auth->getAuthenticationTypeHandle() ?>"
                             class="authentication-type authentication-type-<?php echo $auth->getAuthenticationTypeHandle() ?>">
                            <?php $auth->renderForm($authTypeElement ?: 'form', $authTypeParams ?: array()) ?>
                        </div>
                    <?php
                    }
                }
                ?>
            </div>
        </div>
    </div>
    <div class="footer-SENATICs">
        <p>Sitio Desarrollado por la SENATICs | <a href="http://www.senatics.gov.py" target="_blank">www.senatics.gov.py</a></p>
    </div>
    <script type="text/javascript">
        
    </script>
</div>
