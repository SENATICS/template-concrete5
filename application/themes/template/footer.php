<footer id="footer">
	<div class="contenedor_portal">
    
                
        <table width="100%" >
          <tr>
            <th scope="col" class="footer_table">
            
            <div class="logofooter">
            <!--<img src="<?php echo $view->getThemePath(); ?>/img/Logo-de-la-SENATICS-en-alfacolor.png" width="250" height="49">-->
            <?php 
                $dp = $c->getCollectionID() == 1 ? $c : Page::getByID(1,'ACTIVE');
                $a = new Area('logofooter');
                $a->display($dp);  
            ?>
            </div>
        
            </th>
            <th scope="col" class="footer_table">
            
            <div class="detalles">
                <?php 
                $dp = $c->getCollectionID() == 1 ? $c : Page::getByID(1,'ACTIVE');
                $a = new Area('detallesfooter');
                $a->display($dp);  
            ?>
            </div>
            
            </th>
          </tr>
        </table>
    	<div class="version">Versión del Template <b>1.12</b></div>
        <!--Desarrollo: Edgar Cabral, Andres Ortiz-->
    </div>
</footer>