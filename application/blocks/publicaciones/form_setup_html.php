<?php defined('C5_EXECUTE') or die("Access Denied.");

$fp = FilePermissions::getGlobal();
$tp = new TaskPermission();

echo Core::make('helper/concrete/ui')->tabs(array(
    array('publicaciones', t('Publicaciones'), true),
    array('configuracion', t('Configuración'))
));
?>

<script>
    var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Core::make('helper/validation/token')->generate('editor'); ?>";
    $(document).ready(function() {
        var ccmReceivingEntry = '';
        var sliderEntriesContainer = $('.ccm-image-slider-entries');
        var _templateSlide = _.template($('#imageTemplate').html());

        var attachDelete = function($obj) {
            $obj.click(function() {
                var deleteIt = confirm('<?php echo t('Are you sure?'); ?>');
                if (deleteIt === true) {
                    $(this).closest('.ccm-image-slider-entry').remove();
                    doSortCount();
                }
            });
        };

        var attachFileManagerLaunch = function($obj) {
            $obj.click(function() {
                var oldLauncher = $(this);
                ConcreteFileManager.launchDialog(function(data) {
                    ConcreteFileManager.getFileDetails(data.fID, function(r) {
                        jQuery.fn.dialog.hideLoader();
                        var file = r.files[0];
                        oldLauncher.html(file.resultsThumbnailImg);
                        oldLauncher.next('.image-fID').val(file.fID);
                    });
                });
            });
        };

        var doSortCount = function() {
            $('.ccm-image-slider-entry').each(function(index) {
                $(this).find('.ccm-image-slider-entry-sort').val(index);
            });
        };

        sliderEntriesContainer.on('change', 'select[data-field=entry-link-select]', function() {
            var container = $(this).closest('.ccm-image-slider-entry');
            switch (parseInt($(this).val())) {
                case 2:
                    container.find('div[data-field=entry-link-page-selector]').addClass('hide-slide-link').removeClass('show-slide-link');
                    container.find('div[data-field=entry-link-url]').addClass('show-slide-link').removeClass('hide-slide-link');
                    container.find('div[data-field=entry-link-text]').addClass('show-slide-link').removeClass('hide-slide-link');
                    container.find('div[data-field=entry-link-target]').addClass('show-slide-link').removeClass('hide-slide-link');
                    break;
                case 1:
                    container.find('div[data-field=entry-link-url]').addClass('hide-slide-link').removeClass('show-slide-link');
                    container.find('div[data-field=entry-link-page-selector]').addClass('show-slide-link').removeClass('hide-slide-link');
                    container.find('div[data-field=entry-link-text]').addClass('show-slide-link').removeClass('hide-slide-link');
                    container.find('div[data-field=entry-link-target]').addClass('show-slide-link').removeClass('hide-slide-link');
                    break;
                default:
                    container.find('div[data-field=entry-link-page-selector]').addClass('hide-slide-link').removeClass('show-slide-link');
                    container.find('div[data-field=entry-link-url]').addClass('hide-slide-link').removeClass('show-slide-link');
                    container.find('div[data-field=entry-link-text]').addClass('hide-slide-link').removeClass('show-slide-link');
                    container.find('div[data-field=entry-link-target]').addClass('hide-slide-link').removeClass('show-slide-link');
                    break;
            }
        });

        <?php if ($rows) {
            foreach ($rows as $row) {
                $linkType = 0;
                if ($row['linkURL']) {
                    $linkType = 2;
                } else if ($row['internalLinkCID']) {
                    $linkType = 1;
                } 
                $targetFinal = 0;
                if ($row['target'] == 0) {
                    $targetFinal = 0;
                } else if ($row['target'] == 1) {
                    $targetFinal = 1;
                } 
                ?>
               sliderEntriesContainer.append(_templateSlide({
                    fID: '<?php echo $row['fID']; ?>',
                    <?php if (File::getByID($row['fID'])) { ?>
                    image_url: '<?php echo File::getByID($row['fID'])->getThumbnailURL('file_manager_listing'); ?>',
                    <?php } else { ?>
                    image_url: '',
                   <?php } ?>
                    link_url: '<?php echo $row['linkURL']; ?>',
                    link_type: '<?php echo $linkType; ?>',
                    title: '<?php echo addslashes(h($row['title'])); ?>',
                    description: '<?php echo str_replace(array("\t", "\r", "\n"), "", addslashes(h($row['description']))); ?>',
                    targetFinal: '<?php echo $targetFinal; ?>',
                    btnTexto: '<?php echo addslashes(h($row['btnTexto'])); ?>',
                    sort_order: '<?php echo $row['sortOrder']; ?>'
                }));
                sliderEntriesContainer.find('.ccm-image-slider-entry:last-child div[data-field=entry-link-page-selector]').concretePageSelector({
                    'inputName': 'internalLinkCID[]', 'cID': <?php if ($linkType == 1) { ?><?php echo intval($row['internalLinkCID']); ?><?php } else { ?>false<?php } ?>
                });
            <?php }
        } ?>

        doSortCount();
        sliderEntriesContainer.find('select[data-field=entry-link-select]').trigger('change');

        $('.ccm-add-image-slider-entry').click(function() {
            var thisModal = $(this).closest('.ui-dialog-content');
            sliderEntriesContainer.append(_templateSlide({
                fID: '',
                title: '',
                link_url: '',
                cID: '',
                description: '',
                link_type: 0,
                targetFinal: 0,
                sort_order: '',
                btnTexto: '',
                image_url: ''
            }));

            $('.ccm-image-slider-entry').not('.slide-closed').each(function() {
                $(this).addClass('slide-closed');
                var thisEditButton = $(this).closest('.ccm-image-slider-entry').find('.btn.ccm-edit-slide');
                thisEditButton.text(thisEditButton.data('slideEditText'));
            });
            var newSlide = $('.ccm-image-slider-entry').last();
            var closeText = newSlide.find('.btn.ccm-edit-slide').data('slideCloseText');
            newSlide.removeClass('slide-closed').find('.btn.ccm-edit-slide').text(closeText);

            thisModal.scrollTop(newSlide.offset().top);
            newSlide.find('.redactor-content').redactor({
                minHeight: 200,
                'concrete5': {
                    filemanager: <?php echo $fp->canAccessFileManager(); ?>,
                    sitemap: <?php echo $tp->canAccessSitemap(); ?>,
                    lightbox: true
                }
            });
            attachDelete(newSlide.find('.ccm-delete-image-slider-entry'));
            attachFileManagerLaunch(newSlide.find('.ccm-pick-slide-image'));
            newSlide.find('div[data-field=entry-link-page-selector-select]').concretePageSelector({
                'inputName': 'internalLinkCID[]'
            });
            doSortCount();
        });

        $('.ccm-image-slider-entries').on('click','.ccm-edit-slide', function() {
            $(this).closest('.ccm-image-slider-entry').toggleClass('slide-closed');
            var thisEditButton = $(this).closest('.ccm-image-slider-entry').find('.btn.ccm-edit-slide');
            if (thisEditButton.data('slideEditText') === thisEditButton.text()) {
                thisEditButton.text(thisEditButton.data('slideCloseText'));
            } else if (thisEditButton.data('slideCloseText') === thisEditButton.text()) {
                thisEditButton.text(thisEditButton.data('slideEditText'));
            }
        });

        $('.ccm-image-slider-entries').sortable({
            placeholder: "ui-state-highlight",
            axis: "y",
            handle: "i.fa-arrows",
            cursor: "move",
            update: function() {
                doSortCount();
            }
        });

        attachDelete($('.ccm-delete-image-slider-entry'));
        attachFileManagerLaunch($('.ccm-pick-slide-image'));
        $(function() {  // activate redactors
            $('.redactor-content').redactor({
                minHeight: 200,
                'concrete5': {
                    filemanager: <?php echo $fp->canAccessFileManager(); ?>,
                    sitemap: <?php echo $tp->canAccessSitemap(); ?>,
                    lightbox: true
                }
            });
        });
    });
</script>
<style>
    .ccm-image-slider-block-container .redactor_editor {
        padding: 20px;
    }
    .ccm-image-slider-block-container input[type="text"],
    .ccm-image-slider-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-image-slider-block-container .btn-success {
        margin-bottom: 20px;
    }
    .ccm-image-slider-entries {
        padding-bottom: 30px;
    }
    .ccm-image-slider-block-container .slide-well {
        min-height: 20px;
        padding: 10px;
        margin-bottom: 10px;
        background-color: #f5f5f5;
        border: 1px solid #e3e3e3;
        border-radius: 4px;
        -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.05);
        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.05);
        box-shadow: inset 0 1px 1px rgba(0,0,0,0.05);
    }
    .ccm-pick-slide-image {
        padding: 5px;
        cursor: pointer;
        background: #dedede;
        border: 1px solid #cdcdcd;
        text-align: center;
        vertical-align: middle;
        width: 72px;
        height: 72px;
        display: table-cell;
    }
    .ccm-pick-slide-image img {
        max-width: 100%;
    }
    .ccm-image-slider-entry {
        position: relative;
    }
    .ccm-image-slider-entry.slide-closed .form-group {
        display: none;
    }
    .ccm-image-slider-entry.slide-closed .form-group:first-of-type {
        display: block;
        margin-bottom: 0px;
    }
    .ccm-image-slider-entry.slide-closed .form-group:first-of-type label {
        display: none;
    }
    .btn.ccm-edit-slide {
        position: absolute;
        top: 10px;
        right: 127px;
    }
    .btn.ccm-delete-image-slider-entry {
        position: absolute;
        top: 10px;
        right: 41px;
    }
    .ccm-image-slider-block-container i:hover {
        color: #428bca;
    }
    .ccm-image-slider-block-container i.fa-arrows {
        position: absolute;
        top: 6px;
        right: 5px;
        cursor: move;
        font-size: 20px;
        padding: 5px;
    }
    .ccm-image-slider-block-container .ui-state-highlight {
        height: 94px;
        margin-bottom: 15px;
    }
    .ccm-image-slider-entries .ui-sortable-helper {
        -webkit-box-shadow: 0px 10px 18px 2px rgba(54,55,66,0.27);
        -moz-box-shadow: 0px 10px 18px 2px rgba(54,55,66,0.27);
        box-shadow: 0px 10px 18px 2px rgba(54,55,66,0.27);
    }
    .ccm-image-slider-block-container .show-slide-link {
        display: block;
    }
    .ccm-image-slider-block-container .hide-slide-link {
        display: none;
    }
</style>

<div id="ccm-tab-content-publicaciones" class="ccm-tab-content">
    <div class="ccm-image-slider-block-container">
        <div class="ccm-image-slider-entries">

        </div>
        <div>
            <button type="button" class="btn btn-success ccm-add-image-slider-entry"><?php echo t('Agrear nueva publicación'); ?></button>
        </div>
    </div>
</div>

<div id="ccm-tab-content-configuracion" class="ccm-tab-content">
    <div class="form-group">
        <?php echo $form->label('item_por_pagina', t('Cantidad de publicaciones a mostrar por página')); ?>
        <div class="input-group" style="width: 50%">
        <?php echo $form->number('item_por_pagina', $item_por_pagina ? $item_por_pagina : 5, array('min' => '1', 'max' => '100'))?><span class="input-group-addon"><?php echo t('Publicaciones'); ?></span>
        </div>
    </div>
</div>

<script type="text/template" id="imageTemplate">
    <div class="ccm-image-slider-entry slide-well slide-closed">
        <button type="button" class="btn btn-default ccm-edit-slide" data-slide-close-text="<?php echo t('Colapsar'); ?>" data-slide-edit-text="<?php echo t('Editar'); ?>"><?php echo t('Editar'); ?></button>
        <button type="button" class="btn btn-danger ccm-delete-image-slider-entry"><?php echo t('Remove'); ?></button>
        <i class="fa fa-arrows"></i>
        <div class="form-group">
            <h5 style="titulo"><%=title%></h5>     
            <label><?php echo t('Image'); ?></label>
            <div class="ccm-pick-slide-image">
                <% if (image_url.length > 0) { %>
                    <img src="<%= image_url %>" />
                <% } else { %>
                    <i class="fa fa-picture-o"></i>
                <% } %>
            </div> 
            <input type="hidden" name="<?php echo $view->field('fID'); ?>[]" class="image-fID" value="<%=fID%>" />
        </div>
        <div class="form-group" >
            <label><?php echo t('Title'); ?></label>
            <input type="text" name="<?php echo $view->field('title'); ?>[]" value="<%=title%>" />
        </div>
        <div class="form-group" >
            <label><?php echo t('Description'); ?></label>
            <div class="redactor-edit-content"></div>
            <textarea style="display: none" class="redactor-content" name="<?php echo $view->field('description'); ?>[]"><%=description%></textarea>
        </div>
        <div class="form-group" >
           <label><?php echo t('Link'); ?></label>
            <select data-field="entry-link-select" name="linkType[]" class="form-control" style="width: 60%;">
                <option value="0" <% if (!link_type) { %>selected<% } %>><?php echo t('None'); ?></option>
                <option value="1" <% if (link_type == 1) { %>selected<% } %>><?php echo t('Another Page'); ?></option>
                <option value="2" <% if (link_type == 2) { %>selected<% } %>><?php echo t('External URL'); ?></option>
            </select>
        </div>
        <div data-field="entry-link-url" class="form-group hide-slide-link">
           <label><?php echo t('URL:'); ?></label>
            <input type="text" name="linkURL[]" value="<%=link_url%>"/>
        </div>
        <div data-field="entry-link-page-selector" class="form-group hide-slide-link">
           <label><?php echo t('Choose Page:'); ?></label>
            <div data-field="entry-link-page-selector-select"></div>
        </div>
        <div data-field="entry-link-text" class="form-group hide-slide-link">
           <label><?php echo t('Texto para el botón:'); ?></label>
            <input type="text" name="<?php echo $view->field('btnTexto'); ?>[]" value="<%=btnTexto%>"/>
        </div>
        <div data-field="entry-link-target" class="form-group hide-slide-link">
            <label><?php echo t('target'); ?></label>
            <select name="target[]" class="form-control" style="width: 60%;">
                <option value="0" <% if (targetFinal == 0){ %>selected<% } %>><?php echo t('Abrir en esta pagina (_self)')?></option>
                <option value="1" <% if (targetFinal == 1){ %>selected<% } %>><?php echo t('Abrir en nueva pestaña (_blank)')?></option>
            </select>
        </div>
        <input class="ccm-image-slider-entry-sort" type="hidden" name="<?php echo $view->field('sortOrder'); ?>[]" value="<%=sort_order%>"/>
    </div>
</script>
