<?php if (is_object($user)) {
    $token_validator = \Core::make('helper/validation/token');

    $dh = Core::make('helper/date'); /* @var $dh \Concrete\Core\Localization\Service\Date */
    ?>

    <style type="text/css">
        div[data-container=editable-fields] section {
            margin-bottom: 30px;
            position: relative;
            border-bottom: 1px solid #f1f1f1;
            padding-bottom: 30px;
            clear: both;
        }
    </style>

    <form action="<?php echo $view->action('update_status', $user->getUserID()) ?>" method="post">
        <?php echo $token_validator->output() ?>
        <div class="ccm-dashboard-header-buttons btn-group">
            <?php if (Config::get('concrete.user.registration.validate_email') == true && $canActivateUser) { ?>
                <?php if ($user->isValidated() < 1) { ?>
                    <button type="submit" name="task" value="validate"
                            class="btn btn-default"><?php echo t('Mark Email as Valid') ?></button>
                <?php } ?>
            <?php } ?>

            <?php if ($canActivateUser) { ?>
                <?php if ($user->isActive()) { ?>
                    <button type="submit" name="task" value="deactivate"
                            class="btn btn-default"><?php echo t('Deactivate User') ?></button>
                <?php } else { ?>
                    <button type="submit" name="task" value="activate"
                            class="btn btn-default"><?php echo t('Activate User') ?></button>
                <?php } ?>
            <?php } ?>

            <?php if ($canSignInAsUser) { ?>
                <button type="submit" name="task" value="sudo"
                        class="btn btn-default"><?php echo t('Sign in As User') ?></button>
            <?php } ?>
            <?php if ($canDeleteUser) { ?>
                <button type="submit" name="task" value="delete" class="btn btn-danger"><?php echo t('Delete') ?></button>
            <?php } ?>
        </div>
    </form>


    <div data-container="editable-fields">

        <section>
            <div class="row">
                <div class="col-md-6">
                    <h4><?php echo t('Basic Details') ?></h4>

                    <div class="row">
                        <div class="col-md-4"><p><?php echo t('Username') ?></p></div>
                        <div class="col-md-8"><p><span <?php if ($canEditUserName) { ?>data-editable-field-type="xeditable"
                                                       data-url="<?php echo $view->action('update_username', $user->getUserID()) ?>"
                                                       data-type="text"
                                                       data-name="uName" <?php } ?>><?php echo h($user->getUserName()) ?></span></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4"><p><?php echo t('Email Address') ?></p></div>
                        <div class="col-md-8"><p><span <?php if ($canEditEmail) { ?>data-editable-field-type="xeditable"
                                                       data-url="<?php echo $view->action('update_email', $user->getUserID()) ?>"
                                                       data-type="email"
                                                       data-name="uEmail"<?php } ?>><?php echo h($user->getUserEmail()) ?></span></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4"><p><?php echo t('Password') ?></p></div>
                        <div class="col-md-8"><p><?php if ($canEditPassword) { ?><a href="#" class="btn btn-xs btn-default"
                                                                                 data-button="change-password"><?php echo t('Change') ?></a><?php } else { ?>*********<?php } ?>
                            </p></div>
                    </div>
                    <div class="row">
                        <div class="col-md-4"><p><?php echo t('Profile Picture') ?></p></div>
                        <div class="col-md-8"><p>

                            <div <?php if ($canEditAvatar) { ?>data-editable-field-type="image"
                                 data-editable-field-inline-commands="true"
                                 data-url="<?php echo $view->action('update_avatar', $user->getUserID()) ?>"<?php } ?>>
                                <ul class="ccm-edit-mode-inline-commands">
                                    <li><a href="#" data-editable-field-command="clear"><i
                                                class="fa fa-trash-o"></i></a></li>
                                </ul>
	                <span class="editable-image-wrapper">
	                    <input type="file" id="file-avatar" name="avatar"/>
	                    <div
                            class="editable-image-display"><?php echo $user->getUserAvatar()->output() ?></div>
					</span>
                            </div>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <h4><?php echo t('Account') ?></h4>

                    <div class="row">
                        <div class="col-md-4"><p><?php echo t('Date Created') ?></p></div>
                        <div class="col-md-8"><p><?php echo $dh->formatDateTime($user->getUserDateAdded()) ?></p></div>
                    </div>
                    <div class="row">
                        <div class="col-md-4"><p><?php echo t('Last IP Address') ?></p></div>
                        <div class="col-md-8"><p><?php echo $user->getLastIPAddress() ?></p></div>
                    </div>
                    <?php if (ENABLE_USER_TIMEZONE) {
                        $uTimezone = $user->getUserTimezone();
                        if (empty($uTimezone)) {
                            $uTimezone = date_default_timezone_get();
                        }
                        ?>
                        <div class="row">
                            <div class="col-md-4"><p><?php echo t('Timezone') ?></p></div>
                            <div class="col-md-8"><p><span
                                        <?php if ($canEditTimezone) { ?>data-editable-field-type="xeditable"
                                        data-source="<?php echo $view->action('get_timezones') ?>"
                                        data-url="<?php echo $view->action('update_timezone', $user->getUserID()) ?>"
                                        data-type="select2" data-name="uTimezone"
                                        data-value="<?php echo h($uTimezone) ?>"<?php } ?>><?php echo $dh->getTimezoneDisplayName($uTimezone) ?></span>
                                </p></div>
                        </div>
                    <?php } ?>
                    <?php
                    $languages = Localization::getAvailableInterfaceLanguages();
                    if (count($languages) > 0) { ?>
                        <div class="row">
                            <div class="col-md-4"><p><?php echo t('Language') ?></p></div>
                            <div class="col-md-8"><p><span
                                        <?php if ($canEditLanguage) { ?>data-editable-field-type="xeditable"
                                        data-source="<?php echo $view->action('get_languages') ?>"
                                        data-url="<?php echo $view->action('update_language', $user->getUserID()) ?>"
                                        data-type="select"
                                        data-name="uDefaultLanguage"<?php } ?>><?php echo h($user->getUserDefaultLanguage()); ?></span>
                                </p></div>
                        </div>
                    <?php } ?>
                    <?php if (Config::get('concrete.user.registration.validate_email')) { ?>
                        <div class="row">
                            <div class="col-md-4"><p><?php echo t('Full Record') ?></p></div>
                            <div class="col-md-8"><p><?php echo ($user->isFullRecord()) ? "Yes" : "No" ?></p></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4"><p><?php echo t('Email Validated') ?></p></div>
                            <div class="col-md-8"><p><?php
                                    switch ($user->isValidated()) {
                                        case '-1':
                                            print t('Unknown');
                                            break;
                                        case '0':
                                            print t('No');
                                            break;
                                        case '1':
                                            print t('Yes');
                                            break;
                                    } ?></p></div>
                        </div>
                    <?php } ?>

                    <h4><?php echo t('Groups') ?></h4>

                    <div data-container="group-list"></div>

                    <?php
                    if ($canAddGroup) { ?>
                        <hr>
                        <a class="btn btn-default btn-xs" data-button="assign-groups" dialog-width="640"
                           dialog-height="480" dialog-modal="true"
                           href="<?php echo URL::to('/ccm/system/dialogs/group/search') ?>?filter=assign"
                           dialog-title="<?php echo t('Add Groups') ?>" dialog-modal="false"><?php echo t('Add Group') ?></a>
                    <?php } ?>
                </div>

            </div>
        </section>

        <section>
            <h4><?php echo t('Other Attributes') ?></h4>
            <?php Loader::element('attribute/editable_list', array(
                'attributes' => $attributes,
                'object' => $user,
                'saveAction' => $view->action('update_attribute', $user->getUserID()),
                'clearAction' => $view->action('clear_attribute', $user->getUserID()),
                'permissionsArguments' => array('attributes' => $allowedEditAttributes),
                'permissionsCallback' => function ($ak, $permissionsArguments) {
                    return (is_array($permissionsArguments['attributes']) && in_array($ak->getAttributeKeyID(), $permissionsArguments['attributes']));
                }
            )); ?>
        </section>

    </div>

    <?php if ($canEditPassword) { ?>

        <div style="display: none">
            <div data-dialog="change-password" class="ccm-ui">
                <form data-dialog-form="change-password"
                      action="<?php echo $view->action('change_password', $user->getUserID()) ?>">
                    <?php echo $token_validator->output('change_password') ?>

                    <div class="form-group">
                        <?php echo $form->label('uPassword', t('Password')) ?>
                        <?php echo $form->password('uPassword', array('autocomplete' => 'off')) ?>
                    </div>

                    <div class="form-group">
                        <?php echo $form->label('uPasswordConfirm', t('Confirm Password')) ?>
                        <?php echo $form->password('uPasswordConfirm', array('autocomplete' => 'off')) ?>
                    </div>

                    <div class="dialog-buttons">
                        <button class="btn btn-default pull-left"
                                data-dialog-action="cancel"><?php echo t('Cancel') ?></button>
                        <button type="button" data-dialog-action="submit"
                                class="btn btn-primary pull-right"><?php echo t('Update') ?></button>
                    </div>


                </form>
            </div>
        </div>
    <?php } ?>

    <script type="text/template" data-template="user-add-groups">
        <% _.each(groups, function(group) { %>
        <div class="row" data-editable-field-inline-commands="true" data-group-id="<%=group.gID%>">
            <ul class="ccm-edit-mode-inline-commands">
                <li><a href="#" data-group-id="<%=group.gID%>" data-button="delete-group"><i class="fa fa-trash-o"></i></a>
                </li>
            </ul>
            <div class="col-md-6"><p><%=group.gDisplayName%></p></div>
            <div class="col-md-6"><p><%=group.gDateTimeEntered%></p></div>
        </div>
        <% }); %>
    </script>

    <script type="text/javascript">
        $(function () {

            var _addGroupsTemplate = _.template($('script[data-template=user-add-groups]').html());
            $('div[data-container=group-list]').append(
                _addGroupsTemplate({'groups': <?php echo $groupsJSON?>})
            );
            $('div[data-container=editable-fields]').concreteEditableFieldContainer({
                url: '<?php echo $view->action('save', $user->getUserID())?>',
                data: {
                    ccm_token: '<?php echo $token_validator->generate()?>'
                }
            });

            $('button[name=task][value=sudo]').on('click', function () {
                return confirm('<?php echo t("This will end your current session and sign you in as %s", $user->getUserName())?>');
            });

            $('button[name=task][value=delete]').on('click', function () {
                return confirm('<?php echo t("Are you sure you want to permanently remove this user?")?>');
            });
            ConcreteEvent.subscribe('SelectGroup', function (e, data) {
                $.concreteAjax({
                    url: "<?php echo URL::to('/ccm/system/user/add_group')?>",
                    data: {
                        gID: data.gID,
                        uID: '<?php echo $user->getUserID()?>',
                        ccm_token: '<?php echo $token_validator->generate('add_group') ?>'
                    },
                    success: function (r) {

                        $('div[data-container=group-list]').append(
                            _addGroupsTemplate({'groups': r.groups})
                        );
                        _.each(r.groups, function (group) {
                            $('div[data-container=group-list] div[data-group-id=' + group.gID + ']').addClass('animated bounceIn');
                        });
                        jQuery.fn.dialog.closeTop();
                    }
                });
            });

            $('div[data-container=editable-fields]').on('click', 'a[data-button=change-password]', function () {
                $.fn.dialog.open({
                    element: 'div[data-dialog=change-password]',
                    title: '<?php echo t('Change Password')?>',
                    width: '280',
                    height: '220',
                    modal: true,
                    close: function () {
                        $(this).find('input[type=password]').val('');
                    }
                });
                return false;
            });

            $('div[data-container=editable-fields]').on('click', 'a[data-button=delete-group]', function () {
                $.concreteAjax({
                    url: "<?php echo URL::to('/ccm/system/user/remove_group')?>",
                    data: {
                        gID: $(this).attr('data-group-id'),
                        uID: '<?php echo $user->getUserID()?>',
                        ccm_token: '<?php echo $token_validator->generate('remove_group') ?>'
                    },
                    success: function (r) {
                        $('div[data-container=group-list] div[data-group-id=' + r.group.gID + ']').queue(function () {
                            $(this).addClass('animated bounceOutLeft');
                            $(this).dequeue();
                        }).delay(500).queue(function () {
                            $(this).remove();
                            $(this).dequeue();
                        })
                        jQuery.fn.dialog.closeTop();
                    }
                });
                return false;
            });

            $('a[data-button=assign-groups]').dialog();

        });
    </script>
<?php } else {

    $tp = Loader::helper('concrete/user');
    if ($tp->canAccessUserSearchInterface()) { ?>
        <div class="ccm-dashboard-content-full" data-search="users">
            <?php Loader::element('users/search', array('controller' => $searchController)) ?>
        </div>

        <div class="ccm-dashboard-header-buttons">
            <a href="<?php echo View::url('/dashboard/users/add') ?>"
               class="btn btn-primary"><?php echo t("Add User") ?></a>
        </div>

    <?php } else { ?>
        <p><?php echo t('You do not have access to user search. This setting may be changed in the access section of the dashboard settings page.') ?></p>
    <?php } ?>

<?php } ?>
