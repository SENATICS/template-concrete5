<?php

use \Concrete\Core\Localization\Localization;

header('Content-type: text/javascript; charset=' . APP_CHARSET);

$jh = Core::make('helper/json');

$locale = Localization::activeLocale();

?>
jQuery.Redactor.opts.langs[<?php echo $jh->encode($locale)?>] = {
    html: <?php echo $jh->encode(t('HTML'))?>,
    video: <?php echo $jh->encode(t('Insert Video'))?>,
    image: <?php echo $jh->encode(t('Insert Image'))?>,
    table: <?php echo $jh->encode(t('Table'))?>,
    link: <?php echo $jh->encode(t('Link'))?>,
    link_insert: <?php echo $jh->encode(t('Insert link'))?>,
    link_edit: <?php echo $jh->encode(t('Edit link'))?>,
    unlink: <?php echo $jh->encode(t('Unlink'))?>,
    formatting: <?php echo $jh->encode(t('Formatting'))?>,
    paragraph: <?php echo $jh->encode(t('Normal text'))?>,
    quote: <?php echo $jh->encode(t('Quote'))?>,
    code: <?php echo $jh->encode(t('Code'))?>,
    header1: <?php echo $jh->encode(t('Header 1'))?>,
    header2: <?php echo $jh->encode(t('Header 2'))?>,
    header3: <?php echo $jh->encode(t('Header 3'))?>,
    header4: <?php echo $jh->encode(t('Header 4'))?>,
    header5: <?php echo $jh->encode(t('Header 5'))?>,
    /* concrete5 */
    header6: <?php echo $jh->encode(t('Header 6'))?>,
    customStyles: <?php echo $jh->encode(t('Custom Styles'))?>,
    /* end concrete5 */
    bold: <?php echo $jh->encode(t('Bold'))?>,
    italic: <?php echo $jh->encode(t('Italic'))?>,
    fontcolor: <?php echo $jh->encode(t('Font Color'))?>,
    backcolor: <?php echo $jh->encode(t('Back Color'))?>,
    unorderedlist: <?php echo $jh->encode(t('Unordered List'))?>,
    orderedlist: <?php echo $jh->encode(t('Ordered List'))?>,
    outdent: <?php echo $jh->encode(t('Outdent'))?>,
    indent: <?php echo $jh->encode(t('Indent'))?>,
    cancel: <?php echo $jh->encode(t('Cancel'))?>,
    insert: <?php echo $jh->encode(t('Insert'))?>,
    save: <?php echo $jh->encode(t('Save'))?>,
    _delete: <?php echo $jh->encode(t('Delete'))?>,
    insert_table: <?php echo $jh->encode(t('Insert Table'))?>,
    insert_row_above: <?php echo $jh->encode(t('Add Row Above'))?>,
    insert_row_below: <?php echo $jh->encode(t('Add Row Below'))?>,
    insert_column_left: <?php echo $jh->encode(t('Add Column Left'))?>,
    insert_column_right: <?php echo $jh->encode(t('Add Column Right'))?>,
    delete_column: <?php echo $jh->encode(t('Delete Column'))?>,
    delete_row: <?php echo $jh->encode(t('Delete Row'))?>,
    delete_table: <?php echo $jh->encode(t('Delete Table'))?>,
    rows: <?php echo $jh->encode(t('Rows'))?>,
    columns: <?php echo $jh->encode(t('Columns'))?>,
    add_head: <?php echo $jh->encode(t('Add Head'))?>,
    delete_head: <?php echo $jh->encode(t('Delete Head'))?>,
    title: <?php echo $jh->encode(t('Title'))?>,
    image_position: <?php echo $jh->encode(t('Position'))?>,
    none: <?php echo $jh->encode(t('None'))?>,
    left: <?php echo $jh->encode(t('Left'))?>,
    right: <?php echo $jh->encode(t('Right'))?>,
    center: <?php echo $jh->encode(t('Center'))?>,
    image_web_link: <?php echo $jh->encode(t('Image Web Link'))?>,
    text: <?php echo $jh->encode(t('Text'))?>,
    mailto: <?php echo $jh->encode(t('Email'))?>,
    web: <?php echo $jh->encode(t('URL'))?>,
    video_html_code: <?php echo $jh->encode(t('Video Embed Code'))?>,
    file: <?php echo $jh->encode(t('Insert File'))?>,
    upload: <?php echo $jh->encode(t('Upload'))?>,
    download: <?php echo $jh->encode(t('Download'))?>,
    choose: <?php echo $jh->encode(t('Choose'))?>,
    or_choose: <?php echo $jh->encode(t('Or choose'))?>,
    drop_file_here: <?php echo $jh->encode(t('Drop file here'))?>,
    align_left: <?php echo $jh->encode(t('Align text to the left'))?>,
    align_center: <?php echo $jh->encode(t('Center text'))?>,
    align_right: <?php echo $jh->encode(t('Align text to the right'))?>,
    align_justify: <?php echo $jh->encode(t('Justify text'))?>,
    horizontalrule: <?php echo $jh->encode(t('Insert Horizontal Rule'))?>,
    deleted: <?php echo $jh->encode(t('Deleted'))?>,
    anchor: <?php echo $jh->encode(t('Anchor'))?>,
    open_link: <?php echo $jh->encode(t('Open link'))?>,
    default_behavior: <?php echo $jh->encode(t('Default Behavior'))?>,
    in_lightbox: <?php echo $jh->encode(t('In a Lightbox'))?>,
    open_link_in_lightbox: <?php echo $jh->encode(t('Open Link in Lightbox'))?>,
    link_new_tab: <?php echo $jh->encode(t('Open link in new tab'))?>,
    underline: <?php echo $jh->encode(t('Underline'))?>,
    alignment: <?php echo $jh->encode(t('Alignment'))?>,
    filename: <?php echo $jh->encode(t('Name (optional)'))?>,
    edit: <?php echo $jh->encode(t('Edit'))?>
};

jQuery.Redactor.opts.lang = <?php echo $jh->encode($locale)?>;
jQuery.each(jQuery.Redactor.opts.langs.en, function(key, value) {
    if(!(key in jQuery.Redactor.opts.langs[<?php echo $jh->encode($locale)?>])) {
        jQuery.Redactor.opts.langs[<?php echo $jh->encode($locale)?>][key] = value;
    }
});

var ccmi18n_redactor = {
    remove_font: <?php echo $jh->encode(t('Remove font'))?>,
    change_font_family: <?php echo $jh->encode(t('Change font family'))?>,
    remove_font_size: <?php echo $jh->encode(t('Remove font size'))?>,
    change_font_size: <?php echo $jh->encode(t('Change font size'))?>,
    cancel: <?php echo $jh->encode(t('Cancel'))?>,
    save: <?php echo $jh->encode(t('Save'))?>,
    remove_style: <?php echo $jh->encode(t('Remove Style'))?>
 };
 