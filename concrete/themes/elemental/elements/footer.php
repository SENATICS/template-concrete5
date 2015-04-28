<?php use Concrete\Core\Validation\CSRF\Token;

defined('C5_EXECUTE') or die("Access Denied."); ?>

<footer id="footer-theme">
    <section>
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <?php
                $a = new GlobalArea('Footer Site Title');
                $a->display();
                ?>
            </div>
            <div class="col-sm-3">
                <?php
                $a = new GlobalArea('Footer Social');
                $a->display();
                ?>
            </div>
        </div>
    </div>
    </section>
    <section>
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
            <?php
            $a = new GlobalArea('Footer Legal');
            $a->display();
            ?>
            </div>
            <div class="col-sm-3">
                <?php
                $a = new GlobalArea('Footer Navigation');
                $a->display();
                ?>
            </div>
            <div class="col-sm-3">
                <?php
                $a = new GlobalArea('Footer Contact');
                $a->display();
                ?>
            </div>
        </div>
    </div>
    </section>
</footer>

<footer id="concrete5-brand">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <span><?php echo t('Built with <a href="http://www.concrete5.org" class="concrete5">concrete5</a> CMS.')?></span>
                <span class="pull-right">
                    <?php
                    if (!id(new User)->isLoggedIn()) {
                        ?>
                        <a href="<?php echo URL::to('/login')?>">
                            <?php echo t('Log in') ?>
                        </a>
                        <?php
                    } else {
                        $token = new Token();
                        ?>
                        <form action="<?php echo URL::to('/login', 'logout') ?>">
                            <?php id(new Token())->output('logout'); ?>
                            <a href="#" onclick="$(this).closest('form').submit();return false">
                                <?php echo t('Log out') ?>
                            </a>
                        </form>
                        <?php
                    }
                    ?>
                </span>
            </div>
        </div>
    </div>
</footer>


<?php $this->inc('elements/footer_bottom.php');?>
