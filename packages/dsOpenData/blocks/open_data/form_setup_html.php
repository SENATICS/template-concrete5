<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
?>

<?php  if (empty($catalogos)): ?>
    <div class="alert alert-info">
        <?php  echo t('No existe Catálogo. Añadir desde el dedashboard.') ?>
    </div>
<?php  else: ?>
    <div>
        <h3>
            Ajustes del Bloque:
        </h3>
        <fieldset>
            <label for="opendataID"><?php  echo t('Seleccionar Catálogo') ?></label>

            <div style="margin-top: 10px;">
                <select name="opendataID" id="opendataID">
                    <?php  foreach ($catalogos as $cal): ?>
                        <option
                            value="<?php  echo $cal['opendataID'] ?>" <?php  if ($opendataID == $cal['opendataID']) echo "selected" ?>><?php  echo $cal['title'] ?></option>
                    <?php  endforeach; ?>
                </select>
            </div>
        </fieldset>

    </div>
<?php  endif; ?>