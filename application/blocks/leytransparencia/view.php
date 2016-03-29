<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>
<style type="text/css">
    #menu ul, #menu li { margin: 0px;
    padding: 0px; outline: 0;
    }
    #menu {  text-align: left;}
    #menu ul { list-style-type: none;  background-color:#FFF; border-radius:5px; padding-top:5px; padding-bottom:5px; }
    #menu ul li.nivel1 { float: left; cursor:pointer;
    }
    #menu ul li a {display: block;
    text-decoration: none;
    color: #333;
    background-color: #fff;
    position: relative;
    }
    #menu ul li:hover {position: relative;
    }
    #menu ul li ul li a:hover {background-color: #d71e1e;
    color: #fff;
    position: relative;
    }
    #menu ul li a.nivel1 {display: block!important;display: none;
    position: relative;border-radius:5px;
    }
    #menu ul li ul {display: none; border-radius:5px;border:1px solid #ddd; 
        box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.3);
        -moz-box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.3);
        -webkit-box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.3);
        margin-top:-10px;
    }
    #menu ul li a:hover ul, #menu ul li:hover ul {display: block;
    position: absolute;left: 0px;
    }
    #menu ul li ul li a {width: 195px;
    padding: 6px 0px 8px 0px;
    border-top-color: #000;
    padding-left:5px;
    padding-left:15px;
        padding-right:10px;
    }
    #menu ul li ul li a:hover {border-top-color: #000;
    position: relative;
    }
    table.falsa {border-collapse:collapse;
    border:0px;
    float: left;
    position: relative;
    }
</style>

<body>
<section id="menu">
    <ul style="padding-left:0px !important">
        <li class="nivel1" style="list-style-type:none !important">
            <?php if($linkURL != "none") { ?>
    <a href="<?php echo $linkURL;?>" target="_blank"><img src="<?php echo BASE_URL?>/application/blocks/leytransparencia/Transparencia.png" width="100%" style="border-radius:3px;"/></a>
            <?php }else{ ?>
                <img src="<?php echo BASE_URL?>/application/blocks/leytransparencia/Transparencia.png" width="100%" style="border-radius:3px;"/>
            <?php } ?>
            <ul style="z-index:999; padding-left:0px !important;">
                <?php
                    foreach($items as $item) {
                        $f = File::getByID($item['fID']);
                        if(is_object($f)) { ?>
                            <li style="list-style-type:none !important">
                            <a href="<?php echo $f->getURL();?>" target="_blank"><?php echo html_entity_decode($item['nombre']); ?></a></li>
                    <?php 
                        }
                    }
                ?>
                
                <?php if($linkURL != "none") { ?>
                    <hr style="margin:5px !important">
                    <li style="list-style-type:none !important"><a href="<?php echo $linkURL;?>" target="_blank">Ir al Historial</a></li>
                <?php } ?>
            </ul>
        </li>
    </ul>
</section>
