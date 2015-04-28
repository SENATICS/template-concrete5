<?php defined('C5_EXECUTE') or die("Access Denied.");

use \Concrete\Core\File\Type\Type as FileType;
header('Content-type: text/javascript');
?>

var ccmi18n = {

    expand: "<?php echo t('Expand')?>",
    cancel: "<?php echo t('Cancel')?>",
    collapse: "<?php echo t('Collapse')?>",
    error: "<?php echo t('Error')?>",
    deleteBlock: "<?php echo t('Block Deleted')?>",
    deleteBlockMsg: "<?php echo t('The block has been removed successfully.')?>",
    addBlock: "<?php echo t('Add Block')?>",
    addBlockNew: "<?php echo t('Add Block')?>",
    addBlockStack: "<?php echo t('Add Stack')?>",
    addBlockStackMsg: "<?php echo t('The stack has been added successfully')?>",
    addBlockPaste: "<?php echo t('Paste from Clipboard')?>",
    changeAreaCSS: "<?php echo t('Design')?>",
    editAreaLayout: "<?php echo t('Edit Layout')?>",
    addAreaLayout: "<?php echo t('Add Layout')?>",
    moveLayoutUp: "<?php echo t('Move Up')?>",
    moveLayoutDown: "<?php echo t('Move Down')?>",
    moveLayoutAtBoundary: "<?php echo t('This layout section can not be moved further in this direction.')?>",
    areaLayoutPresets: "<?php echo t('Layout Presets')?>",
    lockAreaLayout: "<?php echo t('Lock Layout')?>",
    unlockAreaLayout: "<?php echo t('Unlock Layout')?>",
    deleteLayout: "<?php echo t('Delete')?>",
    deleteLayoutOptsTitle: "<?php echo t('Delete Layout')?>",
    confirmLayoutPresetDelete: "<?php echo t('Are you sure you want to delete this layout preset?')?>",
    setAreaPermissions: "<?php echo t('Set Permissions')?>",
    addBlockMsg: "<?php echo t('The block has been added successfully.')?>",
    updateBlock: "<?php echo t('Update Block')?>",
    updateBlockMsg: "<?php echo t('The block has been saved successfully.')?>",
    copyBlockToScrapbookMsg: "<?php echo t('The block has been added to your clipboard.')?>",
    content: "<?php echo t('Content')?>",
    closeWindow: "<?php echo t('Close')?>",
    editBlock: "<?php echo t('Edit')?>",
    editBlockWithName: "<?php echo tc('%s is a block type name', 'Edit %s')?>",
    setPermissionsDeferredMsg: "<?php echo t('Permission setting saved. You must complete the workflow before this change is active.')?>",
    editStackContents: "<?php echo t('Manage Stack Contents')?>",
    compareVersions: "<?php echo t('Compare Versions')?>",
    blockAreaMenu: "<?php echo t("Add Block")?>",
    arrangeBlock: "<?php echo t('Move')?>",
    arrangeBlockMsg: "<?php echo t('Blocks arranged successfully.')?>",
    copyBlockToScrapbook: "<?php echo t('Copy to Clipboard')?>",
    changeBlockTemplate: "<?php echo t('Custom Template')?>",
    changeBlockCSS: "<?php echo t("Design")?>",
    errorCustomStylePresetNoName: "<?php echo t('You must give your custom style preset a name.')?>",
    changeBlockBaseStyle: "<?php echo t("Set Block Styles")?>",
    confirmCssReset: "<?php echo t("Are you sure you want to remove all of these custom styles?")?>",
    confirmCssPresetDelete: "<?php echo t("Are you sure you want to delete this custom style preset?")?>",
    setBlockPermissions: "<?php echo t('Set Permissions')?>",
    setBlockAlias: "<?php echo t('Setup on Child Pages')?>",
    setBlockComposerSettings: "<?php echo t("Composer Settings")?>",
    themeBrowserTitle: "<?php echo t('Get More Themes')?>",
    themeBrowserLoading: "<?php echo t('Retrieving theme data from concrete5.org marketplace.')?>",
    addonBrowserLoading: "<?php echo t('Retrieving add-on data from concrete5.org marketplace.')?>",
    clear: "<?php echo t('Clear')?>",
    requestTimeout: "<?php echo t('This request took too long.')?>",
    generalRequestError: "<?php echo t('An unexpected error occurred.')?>",
    helpPopup: "<?php echo t('Help')?>",
    community: "<?php echo t('concrete5 Marketplace')?>",
    communityCheckout: "<?php echo t('concrete5 Marketplace - Purchase & Checkout')?>",
    communityDownload: "<?php echo t('concrete5 Marketplace - Download')?>",
    noIE6: "<?php echo t('concrete5 does not support Internet Explorer 6 in edit mode.')?>",
    helpPopupLoginMsg: "<?php echo t('Get more help on your question by posting it to the concrete5 help center on concrete5.org')?>",
    marketplaceErrorMsg: "<?php echo t('<p>You package could not be installed.  An unknown error occured.</p>')?>",
    marketplaceInstallMsg: "<?php echo t('<p>Your package will now be downloaded and installed.</p>')?>",
    marketplaceLoadingMsg: "<?php echo t('<p>Retrieving information from the concrete5 Marketplace.</p>')?>",
    marketplaceLoginMsg: "<?php echo t('<p>You must be logged into the concrete5 Marketplace to install add-ons and themes.  Please log in.</p>')?>",
    marketplaceLoginSuccessMsg: "<?php echo t('<p>You have successfully logged into the concrete5 Marketplace.</p>')?>",
    marketplaceLogoutSuccessMsg: "<?php echo t('<p>You are now logged out of concrete5 Marketplace.</p>')?>",
    deleteAttributeValue: "<?php echo t('Are you sure you want to remove this value?')?>",
    customizeSearch: "<?php echo t('Customize Search')?>",
    properties: "<?php echo t('Page Saved')?>",
    savePropertiesMsg: "<?php echo t('Page Properties saved.')?>",
    saveSpeedSettingsMsg: "<?php echo t("Full page caching settings saved.")?>",
    saveUserSettingsMsg: "<?php echo t("User Settings saved.")?>",
    ok: "<?php echo t('Ok')?>",
    scheduleGuestAccess: "<?php echo t('Schedule Guest Access')?>",
    scheduleGuestAccessSuccess: "<?php echo t('Timed Access for Guest Users Updated Successfully.')?>",
    newsflowLoading: "<?php echo t("Checking for updates.")?>",
    x: "<?php echo t('x')?>",
    user_activate: "<?php echo t('Activate Users')?>",
    user_deactivate: "<?php echo t('Deactivate Users')?>",
    user_delete: "<?php echo t('Delete')?>",
    user_group_remove: "<?php echo t('Remove From Group')?>",
    user_group_add: "<?php echo t('Add to Group')?>",
    none: "<?php echo t('None')?>",
    editModeMsg: "<?php echo t("Let's start editing a page.")?>",
    editMode: "<?php echo t('Edit Mode')?>",
    save: "<?php echo t('Save')?>",
    currentImage: "<?php echo t('Current Image')?>",
    image: "<?php echo t('Image')?>",
    size: "<?php echo t('Size')?>",
    chooseFont: "<?php echo t('Choose Font')?>",
    fontWeight: "<?php echo t('Font Weight')?>",
    italic: "<?php echo t('Italic')?>",
    underline: "<?php echo t('Underline')?>",
    uppercase: "<?php echo t('Uppercase')?>",
    fontSize: "<?php echo t('Font Size')?>",
    letterSpacing: "<?php echo t('Letter spacing')?>",
    lineHeight: "<?php echo t('Line Height')?>",
    emptyArea: "<?php echo t('Empty %s Area', '<%- area_handle %>') ?>"
};

var ccmi18n_editor = {

    insertLinkToFile: "<?php echo t('Insert Link to File')?>",
    insertImage: "<?php echo t('Insert Image')?>",
    insertLinkToPage: "<?php echo t('Link to Page')?>"

};

var ccmi18n_sitemap = {

    seo: "<?php echo t('SEO')?>",
    pageLocation: "<?php echo t('Location')?>",
    pageLocationTitle: "<?php echo t('Location')?>",
    visitExternalLink: "<?php echo t('Visit')?>",
    editExternalLink: "<?php echo t('Edit External Link')?>",
    deleteExternalLink: "<?php echo t('Delete')?>",
    copyProgressTitle: "<?php echo t('Copy Progress')?>",
    addExternalLink: "<?php echo t('Add External Link')?>",
    sendToTop: "<?php echo t('Send To Top')?>",
    sendToBottom: "<?php echo t('Send To Bottom')?>",
    emptyTrash: "<?php echo t('Empty Trash')?>",
    restorePage: "<?php echo t('Restore Page')?>",
    deletePageForever: "<?php echo t('Delete Forever')?>",
    previewPage: "<?php echo t('Preview')?>",
    visitPage: "<?php echo t('Visit')?>",
    pageAttributes: "<?php echo t('Attributes')?>",
    speedSettings: "<?php echo t('Caching')?>",
    speedSettingsTitle: "<?php echo t('Caching')?>",
    pageAttributesTitle: "<?php echo t('Attributes')?>",
    pagePermissionsTitle: "<?php echo t('Page Permissions')?>",
    setPagePermissions: "<?php echo t('Permissions')?>",
    setPagePermissionsMsg: "<?php echo t('Page permissions updated successfully.')?>",
    pageDesignMsg: "<?php echo t('Theme and page type updated successfully.')?>",
    pageDesign: "<?php echo t('Design')?>",
    pageVersions: "<?php echo t('Versions')?>",
    deletePage: "<?php echo t('Delete')?>",
    deletePages: "<?php echo t('Delete Pages')?>",
    deletePageSuccessMsg: "<?php echo t('The page has been removed successfully.')?>",
    deletePageSuccessDeferredMsg: "<?php echo t('Delete request saved. You must complete the workflow before the page is fully removed.')?>",
    addPage: "<?php echo t('Add Page')?>",
    moveCopyPage: "<?php echo t('Move/Copy')?>",
    reorderPage: "<?php echo t('Change Page Order')?>",
    reorderPageMessage: "<?php echo t('Move or reorder pages by dragging their icons.')?>",
    moveCopyPageMessage: "<?php echo t('Choose a new parent page from the sitemap.')?>",
    editInComposer: "<?php echo t('Edit in Composer')?>",

    searchPages: "<?php echo t('Search Pages')?>",
    explorePages: "<?php echo t('Flat View')?>",
    backToSitemap: "<?php echo t('Back to Sitemap')?>",
    searchResults: "<?php echo t('Search Results')?>",
    createdBy: "<?php echo t('Created By')?>",
    choosePage: "<?php echo t('Choose a Page')?>",
    viewing: "<?php echo t('Viewing')?>",
    results: "<?php echo t('Result(s)')?>",
    max: "<?php echo t('max')?>",
    noResults: "<?php echo t('No results found.')?>",
    areYouSure: "<?php echo t('Are you sure?')?>",
    loadError: "<?php echo t('Unable to load sitemap data. Response received: ')?>",
    loadErrorTitle: "<?php echo t('Unable to load sitemap data.')?>",
    on: "<?php echo t('on')?>"

};

var ccmi18n_spellchecker = {

    resumeEditing: "<?php echo t('Resume Editing')?>",
    noSuggestions: "<?php echo t('No Suggestions')?>"

};

var ccmi18n_groups = {

    editGroup: "<?php echo t('Edit Group')?>",
    editPermissions: "<?php echo t('Edit Permissions')?>"

};

var ccmi18n_filemanager = {

    view: "<?php echo t('View')?>",
    download: "<?php echo t('Download')?>",
    select: "<?php echo t('Choose')?>",
    duplicateFile: "<?php echo t('Copy File')?>",
    clear: "<?php echo t('Clear')?>",
    edit: "<?php echo t('Edit')?>",
    replace: "<?php echo t('Replace')?>",
    duplicate: "<?php echo t('Copy')?>",
    chooseNew: "<?php echo t('Choose New File')?>",
    sets: "<?php echo t('Sets')?>",
    permissions: "<?php echo t('Permissions')?>",
    properties: "<?php echo t('Properties')?>",
    deleteFile: "<?php echo t('Delete')?>",
    title: "<?php echo t('File Manager')?>",
    uploadErrorChooseFile: "<?php echo t('You must choose a file.')?>",
    rescan: "<?php echo t('Rescan')?>",
    pending: "<?php echo t('Pending')?>",
    uploadComplete: "<?php echo t('Upload Complete')?>",
    uploadProgress: "<?php echo t('Upload Progress')?>",

    PTYPE_CUSTOM: "<?php //=FilePermissions::PTYPE_CUSTOM?>",
    PTYPE_NONE: "<?php //=FilePermissions::PTYPE_NONE?>",
    PTYPE_ALL: "<?php //=FilePermissions::PTYPE_ALL?>",

    FTYPE_IMAGE: "<?php echo FileType::T_IMAGE?>",
    FTYPE_VIDEO: "<?php echo FileType::T_VIDEO?>",
    FTYPE_TEXT: "<?php echo FileType::T_TEXT?>",
    FTYPE_AUDIO: "<?php echo FileType::T_AUDIO?>",
    FTYPE_DOCUMENT: "<?php echo FileType::T_DOCUMENT?>",
    FTYPE_APPLICATION: "<?php echo FileType::T_APPLICATION?>"

};

var ccmi18n_chosen = {

    placeholder_text_multiple: "<?php echo t('Select Some Options')?>",
    placeholder_text_single: "<?php echo t('Select an Option')?>",
    no_results_text: "<?php echo t(/*i18n After this text we have a search criteria: for instance 'No results match "Criteria"'*/'No results match')?>"

};

var ccmi18n_topics = {

    addCategory: "<?php echo t('Add Category')?>",
    editCategory: "<?php echo t('Edit Category')?>",
    deleteCategory: "<?php echo t('Delete Category')?>",
    cloneCategory: "<?php echo t('Clone Category')?>",
    addTopic: "<?php echo t('Add Topic')?>",
    editTopic: "<?php echo t('Edit Topic')?>",
    deleteTopic: "<?php echo t('Delete Topic')?>",
    cloneTopic: "<?php echo t('Clone Topic')?>",
    editPermissions: "<?php echo t('Edit Permissions')?>"

};
