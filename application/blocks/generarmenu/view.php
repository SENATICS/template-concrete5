<?php
defined('C5_EXECUTE') or die("Access Denied.");


if (Page::getCurrentPage()->isEditMode()) { ?>

	<div class="ccm-edit-mode-disabled-item">
		<div style="padding:8px 0px;"><?php echo t('Menu en edición'); ?></div>
	</div>
	
<?php } else{ 
		$colortxt = "";
		switch($colorTexto) {
			case 1:
				$colortxt = '#000000';
				break;
			default:
				$colortxt = '#FFFFFF';
		}
	?>
    <style>
        nav#nav { background: <?php echo $color; ?> !important;}
	  .Menu_general > li { color: <?php echo $colortxt; ?> !important;}
      .Menu_general > li > a { color: <?php echo $colortxt; ?> !important;}</style>
	<div class="menucomponente" id="menu_ordenador">
        <nav id="nav">
		<li> 
			
			<ul class="Menu_general">
			
				<?php if(count($items) > 0) {
					 $flag=false; 
					 $orden=0;
					foreach($items as $item) { ?>
						
								<?php if ($item['subMenu']==0){ ?>
									<?php 
										if ($flag) {
											?></li><?php
										}
										$flag=true;
										$orden=0;
									 ?>
									<li>
										<?php if($item['link']!='#' || $item['link']=='') {?>
											<a href="<?php echo($item['link']); ?>" <?php if(intval($item['target'])==1) { echo 'target="_blank"'; }?> >
										<?php }else{?>
											<div class="sub_menu_margin"><?php 
										}?>
                                        
											<?php if($item['nombre']) {
                                                echo($item['nombre']);
                                            }?>
                                        
										<?php if($item['link']!='#') { ?>
											</a>
										<?php }else{ ?>
                                        	</div>
                                        <?php }?>
								<?php }else{ ?>
								<?php if ($orden==0) { ?>
									<div class="sub"> </div>
									<ul>
										
										<?php foreach($items as $submenu) { ?>
											
											<?php if($submenu['orden']>=$item['orden']) { ?>
												 
													<?php if ($submenu['subMenu']==0) {
														break 1;
													} else{ ?>
												<li>
													<a href="<?php echo($submenu['link']);?>" <?php if(intval($submenu['target'])==1) { echo 'target="_blank"'; }?> >
														<?php if($submenu['nombre']) {
															echo($submenu['nombre']);
														}?>
													</a>
												</li>
												<?php $orden=$submenu['orden']; ?>
												<?php	}?>
													
											<?php }; 
										}; ?>
									</ul>
									
								<?php }
								}; 
								?>
						
					<?php };
				}; ?>
			</ul>
		</li>
		</nav>
	</div>
    
    
    <!-- MENU MODO RESPOSIVE -->
<div class="menucomponente" id="menu_movil">
    <label for="check">
        <div class="base_menu">
            <div class="Menu_mobile" id="Menu1"></div>
            <div class="Menu_mobile_on" id="Menu2"></div>
        </div>
    </label>
    <input type="checkbox" id="check" class="oculto" onchange="javascript:showMenu()" />
    <div id="navegacion_movil">
        <div class="gw-sidebar">
          <div id="gw-sidebar" class="gw-sidebar">
            <div class="nano-content">
            	<ul class="gw-nav gw-nav-list">
                    
            <!--
                  
                    <li class="init-un-active"> <a href="javascript:void(0)"> <span class="gw-menu-text">MENU 1</span> </a> </li>
                    <li class="init-arrow-down"> <a href="javascript:void(0)"> <span class="gw-menu-text">MENU 2</span> <b class="gw-arrow icon-arrow-up8"></b> </a>
                      <ul class="gw-submenu">
                        <li> <a href="#">Sub Menu 1</a></li>
                        <li> <a href="#">Sub Menu 2</a></li>
                        <li> <a href="#">Sub Menu 3</a></li>
                      </ul>
                    </li>
                    
                  -->
                  
                  
                  
                  <?php if(count($items) > 0) {
					 $flag=false; 
					 $orden=0;
					 foreach($items as $item) { ?>
						
								<?php if ($item['subMenu']==0){ ?>
									<?php 
										if ($flag) {
											?></li>
												<?php if($item['link']!='#') { ?>
                                                    
                                                <?php }?>
											<?php
										}
										$flag=true;
										$orden=0;
									 ?>
                                     <?php if($item['link']!='#' || $item['link']=='') {?>
											<li class="init-un-active">
										<?php }else{?>
                                        	<li class="init-arrow-down">
                                        <?php }?>
										
											<?php if($item['nombre']) {
                                                ?> <a href="<?php echo($item['link']); ?>"><span class="gw-menu-text"><?php echo($item['nombre']);  ?> </span></a><?php
                                            }?>
								<?php }else{ ?>
								<?php if ($orden==0) { ?>
                                	<b class="gw-arrow icon-arrow-up8"></b> 
									<ul class="gw-submenu">
										
										<?php foreach($items as $submenu) { ?>
											
											<?php if($submenu['orden']>=$item['orden']) { ?>
												 
													<?php if ($submenu['subMenu']==0) {
														break 1;
													} else{ ?>
												<li>
													<a href="<?php echo($submenu['link']);?>">
														<?php if($submenu['nombre']) {
															echo($submenu['nombre']);
														}?>
													</a>
												</li>
												<?php $orden=$submenu['orden']; ?>
												<?php	}?>
													
											<?php }; 
										}; ?>
									</ul>
									
								<?php }
								}; 
								?>
						
					<?php };
				}; ?>
                
                </ul>
              
            </div>
          </div>
        </div>
      </div>
    </div>



    
<?php } ?>
