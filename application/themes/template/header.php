<!--Desarrollo: Edgar Cabral, Andres Ortiz-->
<div class="cabecera_general">
    
    <table width="100%" id="cabeza">
      <tr>
        <th scope="col" class="footer_table">
        
        <div class="logo">
                <?php 
                    $dp = $c->getCollectionID() == 1 ? $c : Page::getByID(1,'ACTIVE');
                    $a = new Area('logocompa');
                    $a->display($dp); ?>
   		</div>
        
        </th>
        <th scope="col" class="footer_table">
        
        <div class="logogobierno">
                <?php 
                    $dp = $c->getCollectionID() == 1 ? $c : Page::getByID(1,'ACTIVE');
                    $a = new Area('logo2');
                    $a->display($dp); ?>
        
            <div class="Buscador">
                    <?php 
                        $dp = $c->getCollectionID() == 1 ? $c : Page::getByID(1,'ACTIVE');
                        $a = new Area('buscar');
                        $a->display($dp); ?>
            </div>
        </div>
        </th>
      </tr>
    </table>
    
	<!-- Navegacion -->
    <div id="barrademenu">
				<?php
                    $dp = $c->getCollectionID() == 1 ? $c : Page::getByID(1,'ACTIVE');
                    $a = new Area('Menu');
                    $a->display($dp); ?>
    </div>
    <!-- /Navegacion -->

</div>	