core = 7.21
api = 2

; Drupal Core
projects[drupal][version] = "7.21"

; ====== CIVICRM RELATED =========

libraries[civicrm][download][type] = get
libraries[civicrm][download][url] = "http://downloads.civicrm.org/civicrm-4.2.8-starterkit.tgz"
libraries[civicrm][destination] = modules
libraries[civicrm][directory_name] = civicrm
libraries[civicrm][patch][1830410] = http://drupal.org/files/1830410-fix-hook-requirements-4-5.patch
libraries[civicrm][patch][1830416] = http://drupal.org/files/1830416-sub-folder-support-3.patch
libraries[civicrm][patch][1787984] = http://drupal.org/files/1787984-IDS-directory-fix-crm-core-4-5.patch
; I think this patch has been resolved in 4.2.8, but needs testing
;libraries[civicrm][patch][1879796] = http://drupal.org/files/1879796-IDS-path-fix-in-ClassLoader-3.patch
libraries[civicrm][patch][1830434] = http://drupal.org/files/1830410-theme_status_report.patch
libraries[civicrm][patch][1844558] = http://drupal.org/files/1844558-run-civicrm-from-profile-dir-config-2.patch
;libraries[civicrm][patch][] = http://drupal.org/files/1844558-run-civicrm-from-profile-dir-drupal.patch
libraries[civicrm][patch][1948504] = http://drupal.org/files/1948504-civicrm_group_role-error-when-removing-role.patch

libraries[jquery][download][type] = get
libraries[jquery][download][url] = "http://code.jquery.com/jquery-1.7.2.min.js"
libraries[jquery][destination] = "modules/civicrm/packages"
libraries[jquery][directory_name] = jquery
libraries[jquery][download][filename] = jquery.min.js
libraries[jquery][patch][1787976] = http://drupal.org/files/1787976-jquery-missing-files-9.patch
libraries[jquery][patch][] = http://drupal.org/files/textarearesizer-4.patch
libraries[jquery][patch][] = http://drupal.org/files/jquery.validate.patch
libraries[jquery][patch][] = http://drupal.org/files/1787976-jquery-ui-missing-files-3.patch

libraries[jquery_ui][download][type] = get
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.8.16.zip"
libraries[jquery_ui][destination] = "modules/civicrm/packages/jquery/jquery-ui-1.8.16"
libraries[jquery_ui][directory_name] = development-bundle

libraries[jstree][download][type] = get
libraries[jstree][download][url] = "https://github.com/vakata/jstree/archive/v.pre1.0.zip"
libraries[jstree][destination] = "modules/civicrm/packages/jquery/plugins"
libraries[jstree][directory_name] = jstree

libraries[phpids][download][type] = get
libraries[phpids][download][url] = "http://phpids.org/files/phpids-0.7.zip"
libraries[phpids][destination] = "modules/civicrm/packages"
libraries[phpids][directory_name] = IDS
libraries[phpids][patch][1787984] = http://drupal.org/files/1787984-IDS-directory-fix-IDS.patch

libraries[dompdf][download][type] = get
libraries[dompdf][download][url] = "http://dompdf.googlecode.com/files/dompdf_0-6-0_beta3.tar.gz"
libraries[dompdf][destination] = "modules/civicrm/packages"
libraries[dompdf][directory_name] = dompdf

; CKEDitor and TinyMCE are included twice... really need to change that
; with a patch that allows CiviCRM to use sites/all/libraries

libraries[ckeditor-civicrm][download][type] = get
libraries[ckeditor-civicrm][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
libraries[ckeditor-civicrm][destination] = "modules/civicrm/packages"
libraries[ckeditor-civicrm][directory_name] = ckeditor

libraries[tinymce-civicrm][download][type] = get
libraries[tinymce-civicrm][download][url] = "https://github.com/downloads/tinymce/tinymce/tinymce_3.4.8.zip"
libraries[tinymce-civicrm][destination] = "modules/civicrm/packages"
libraries[tinymce-civicrm][directory_name] = tinymce

; ====== MODERATE =========

; CiviCRM Modules
projects[civicrm_cron][subdir] = "contrib"
projects[civicrm_cron][version] = "1.0-beta2"

projects[civicrm_multiday_event][subdir] = "contrib-cm"
projects[civicrm_multiday_event][version] = "1.0-beta3"

projects[civicrm_user_reference][subdir] = "contrib-cm"
projects[civicrm_user_reference][version] = "1.x-dev"

projects[civicrm_realname][subdir] = "contrib"
projects[civicrm_realname][version] = "1.0"

; Community Media Modules
projects[cm_show_vod][subdir] = "contrib-cm"
projects[cm_show_vod][version] = "1.x-dev"

projects[cm_airing][subdir] = "contrib-cm"
projects[cm_airing][version] = "1.x-dev"

projects[cm_project][subdir] = "contrib-cm"
projects[cm_project][version] = "2.x-dev"

; Contrib Modules
projects[auto_nodetitle][subdir] = "contrib"
projects[auto_nodetitle][version] = "1.0"

projects[colors][subdir] = "contrib"
projects[colors][version] = "1.0-rc1"

projects[socialmedia][subdir] = "contrib"
projects[socialmedia][version] = "1.0-beta11"

projects[field_collection][subdir] = "contrib"
projects[field_collection][version] = "1.x-dev"

projects[field_permissions][subdir] = "contrib"
projects[field_permissions][version] = "1.0-beta2"

projects[environment_indicator][subdir] = "contrib"
projects[environment_indicator][version] = "1.1"

projects[entityreference][subdir] = "contrib"
projects[entityreference][version] = "1.0-rc3"

projects[feeds][subdir] = "contrib"
projects[feeds][version] = "2.x-dev"

projects[og][subdir] = "contrib"
projects[og][version] = "2.0-beta4"

projects[og_extras][subdir] = "contrib"
projects[og_extras][version] = "1.1"

projects[date][subdir] = "contrib"
projects[date][version] = "2.6"

projects[fullcalendar][subdir] = "contrib"
projects[fullcalendar][version] = "2.0"

projects[media][subdir] = "contrib"
projects[media][version] = "2.0-unstable7"

projects[media_youtube][subdir] = "contrib"
projects[media_youtube][version] = "2.0-rc1"

projects[media_vimeo][subdir] = "contrib"
projects[media_vimeo][version] = "2.x-dev"

projects[media_bliptv][subdir] = "contrib"
projects[media_bliptv][version] = "1.x-dev"

projects[media_archive][subdir] = "contrib"
projects[media_archive][version] = "1.x-dev"

projects[media_cloudcast][subdir] = "contrib"
projects[media_cloudcast][version] = "1.x-dev"

projects[flag][subdir] = "contrib"
projects[flag][version] = "2.0"

projects[devel][subdir] = "contrib"
projects[devel][version] = "1.2"

projects[devel][subdir] = "contrib"
projects[devel][version] = "1.3"

projects[delta][subdir] = "contrib"
projects[delta][version] = "3.0-beta9"

projects[context][subdir] = "contrib"
projects[context][version] = "3.0-beta4"

projects[references][subdir] = "contrib"
projects[references][version] = "2.0"

projects[file_entity][subdir] = "contrib"
projects[file_entity][version] = "2.0-unstable7"

projects[job_scheduler][subdir] = "contrib"
projects[job_scheduler][version] = "2.0-alpha3"

projects[realname][subdir] = "contrib"
projects[realname][version] = "1.0"

projects[token][subdir] = "contrib"
projects[token][version] = "1.3"

projects[views_accordion][subdir] = "contrib"
projects[views_accordion][version] = "1.0-rc2"

; ====== CIVICRM RELATED =========

libraries[civicrm][download][type] = get
libraries[civicrm][download][url] = "http://downloads.civicrm.org/civicrm-4.2.8-starterkit.tgz"
libraries[civicrm][destination] = modules
libraries[civicrm][directory_name] = civicrm
libraries[civicrm][patch][1830410] = http://drupal.org/files/1830410-fix-hook-requirements-4-5.patch
libraries[civicrm][patch][1830416] = http://drupal.org/files/1830416-sub-folder-support-3.patch
libraries[civicrm][patch][1787984] = http://drupal.org/files/1787984-IDS-directory-fix-crm-core-4-5.patch
; I think this patch has been resolved in 4.2.8, but needs testing
;libraries[civicrm][patch][1879796] = http://drupal.org/files/1879796-IDS-path-fix-in-ClassLoader-3.patch
libraries[civicrm][patch][1830434] = http://drupal.org/files/1830410-theme_status_report.patch
libraries[civicrm][patch][1844558] = http://drupal.org/files/1844558-run-civicrm-from-profile-dir-config-2.patch
;libraries[civicrm][patch][] = http://drupal.org/files/1844558-run-civicrm-from-profile-dir-drupal.patch

libraries[jquery][download][type] = get
libraries[jquery][download][url] = "http://code.jquery.com/jquery-1.7.2.min.js"
libraries[jquery][destination] = "modules/civicrm/packages"
libraries[jquery][directory_name] = jquery
libraries[jquery][download][filename] = jquery.min.js
libraries[jquery][patch][1787976] = http://drupal.org/files/1787976-jquery-missing-files-9.patch
libraries[jquery][patch][] = http://drupal.org/files/textarearesizer-4.patch
libraries[jquery][patch][] = http://drupal.org/files/jquery.validate.patch
libraries[jquery][patch][] = http://drupal.org/files/1787976-jquery-ui-missing-files-3.patch

libraries[jquery_ui][download][type] = get
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.8.16.zip"
libraries[jquery_ui][destination] = "modules/civicrm/packages/jquery/jquery-ui-1.8.16"
libraries[jquery_ui][directory_name] = development-bundle

libraries[jstree][download][type] = get
libraries[jstree][download][url] = "https://github.com/vakata/jstree/archive/v.pre1.0.zip"
libraries[jstree][destination] = "modules/civicrm/packages/jquery/plugins"
libraries[jstree][directory_name] = jstree

libraries[phpids][download][type] = get
libraries[phpids][download][url] = "http://phpids.org/files/phpids-0.7.zip"
libraries[phpids][destination] = "modules/civicrm/packages"
libraries[phpids][directory_name] = IDS
libraries[phpids][patch][1787984] = http://drupal.org/files/1787984-IDS-directory-fix-IDS.patch

libraries[dompdf][download][type] = get
libraries[dompdf][download][url] = "http://dompdf.googlecode.com/files/dompdf_0-6-0_beta3.tar.gz"
libraries[dompdf][destination] = "modules/civicrm/packages"
libraries[dompdf][directory_name] = dompdf

; CKEDitor and TinyMCE are included twice... really need to change that
; with a patch that allows CiviCRM to use sites/all/libraries

libraries[ckeditor-civicrm][download][type] = get
libraries[ckeditor-civicrm][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"
libraries[ckeditor-civicrm][destination] = "modules/civicrm/packages"
libraries[ckeditor-civicrm][directory_name] = ckeditor

libraries[tinymce-civicrm][download][type] = get
libraries[tinymce-civicrm][download][url] = "https://github.com/downloads/tinymce/tinymce/tinymce_3.4.8.zip"
libraries[tinymce-civicrm][destination] = "modules/civicrm/packages"
libraries[tinymce-civicrm][directory_name] = tinymce

; ====== MODERATE =========

; CiviCRM Modules
projects[civicrm_cron][subdir] = "contrib"
projects[civicrm_cron][version] = "1.0-beta2"

projects[civicrm_multiday_event][subdir] = "contrib-cm"
projects[civicrm_multiday_event][version] = "1.0-beta5"

projects[civicrm_user_reference][subdir] = "contrib-cm"
projects[civicrm_user_reference][version] = "1.x-dev"

projects[civicrm_realname][subdir] = "contrib"
projects[civicrm_realname][version] = "1.0"

; Community Media Modules
projects[cm_show_vod][subdir] = "contrib-cm"
projects[cm_show_vod][version] = "1.x-dev"

projects[cm_airing][subdir] = "contrib-cm"
projects[cm_airing][version] = "3.x-dev"

projects[cm_project][subdir] = "contrib-cm"
projects[cm_project][version] = "1.x-dev"

projects[cm_profile][subdir] = "contrib-cm"
projects[cm_profile][version] = "1.x-dev"

projects[jupload][subdir] = "contrib-cm"
projects[jupload][version] = "1.x-dev"

; Contrib Modules
projects[auto_nodetitle][subdir] = "contrib"
projects[auto_nodetitle][version] = "1.0"

projects[colors][subdir] = "contrib"
projects[colors][version] = "1.0-rc1"

projects[socialmedia][subdir] = "contrib"
projects[socialmedia][version] = "1.0-beta13"

projects[field_collection][subdir] = "contrib"
projects[field_collection][version] = "1.0-beta5"

projects[field_permissions][subdir] = "contrib"
projects[field_permissions][version] = "1.0-beta2"

projects[environment_indicator][subdir] = "contrib"
projects[environment_indicator][version] = "1.1"

projects[entityreference][subdir] = "contrib"
projects[entityreference][version] = "1.0"

projects[feeds][type] = module
projects[feeds][download][type] = git
projects[feeds][download][revision] = 58aad5655af63c2f32c8dfe3d58be9cd40567518
projects[feeds][download][branch] = 1033202-entity-processor

projects[og][subdir] = "contrib"
projects[og][version] = "2.0"

projects[og_extras][subdir] = "contrib"
projects[og_extras][version] = "1.1"

projects[date][subdir] = "contrib"
projects[date][version] = "2.6"

projects[fullcalendar][subdir] = "contrib"
projects[fullcalendar][version] = "2.0"

projects[link][subdir] = "contrib"
projects[link][version] = "1.0"

projects[media][subdir] = "contrib"
projects[media][version] = "2.x-dev"

projects[media_youtube][subdir] = "contrib"
projects[media_youtube][version] = "2.0-rc2"

projects[media_vimeo][subdir] = "contrib"
projects[media_vimeo][version] = "2.x-dev"

projects[media_bliptv][subdir] = "contrib"
projects[media_bliptv][version] = "1.x-dev"

projects[media_archive][subdir] = "contrib"
projects[media_archive][version] = "1.x-dev"

projects[media_cloudcast][subdir] = "contrib"
projects[media_cloudcast][version] = "1.x-dev"

projects[flag][subdir] = "contrib"
projects[flag][version] = "2.0"

projects[devel][subdir] = "contrib"
projects[devel][version] = "1.3"

projects[delta][subdir] = "contrib"
projects[delta][version] = "3.0-beta9"

projects[context][subdir] = "contrib"
projects[context][version] = "3.0-beta4"

projects[references][subdir] = "contrib"
projects[references][version] = "2.1"

projects[file_entity][subdir] = "contrib"
projects[file_entity][version] = "2.x-dev"

projects[job_scheduler][subdir] = "contrib"
projects[job_scheduler][version] = "2.0-alpha3"

projects[realname][subdir] = "contrib"
projects[realname][version] = "1.1"

projects[views_accordion][subdir] = "contrib"
projects[views_accordion][version] = "1.0-rc2"

projects[hms_field][subdir] = "contrib"
projects[hms_field][version] = "1.1"
projects[hms_field][patch][1794930] = "http://drupal.org/files/1794930-hms-feeds-support_0.patch"

;Libraries

libraries[fullcalendar][download][type] = get
libraries[fullcalendar][download][url] = "http://arshaw.com/fullcalendar/downloads/fullcalendar-1.5.3.zip"
libraries[fullcalendar][destination] = libraries
libraries[fullcalendar][directory_name] = fullcalendar-download

; ====== EASY =========

; Community Media Modules
projects[cm_checklist][subdir] = "contrib-cm"
projects[cm_checklist][version] = "1.x-dev"

projects[cm_header][subdir] = "contrib-cm"
projects[cm_header][version] = "1.0-alpha1"

projects[cm_profile][subdir] = "contrib-cm"
projects[cm_profile][version] = "1.x-dev"

projects[cm_show][subdir] = "contrib-cm"
projects[cm_show][version] = "1.x-dev"

projects[cm_slideshow][subdir] = "contrib-cm"
projects[cm_slideshow][version] = "1.0-beta1"

projects[om_crew_connect][subdir] = "contrib-cm"
projects[om_crew_connect][version] = "2.0-beta3"

; Contrib Modules
projects[backup_migrate][subdir] = "contrib"
projects[backup_migrate][version] = "2.4"

projects[block_class][subdir] = "contrib"
projects[block_class][version] = "2.0"

projects[css_injector][subdir] = "contrib"
projects[css_injector][version] = "1.8"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.2"

projects[captcha][subdir] = "contrib"
projects[captcha][version] = "1.0-beta2"

projects[creativecommons][subdir] = "contrib"
projects[creativecommons][version] = "1.0-alpha2"

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.0"

projects[features][subdir] = "contrib"
projects[features][version] = "2.0-beta1"

projects[field_group][subdir] = "contrib"
projects[field_group][version] = "2.x-dev"

projects[fitvids][subdir] = "contrib"
projects[fitvids][version] = "1.9"

projects[flexslider][subdir] = "contrib"
projects[flexslider][version] = "1.0-rc3"

projects[fontyourface][subdir] = "contrib"
projects[fontyourface][version] = "2.7"

projects[headerimage][subdir] = "contrib"
projects[headerimage][version] = "1.1"

projects[google_analytics][subdir] = "contrib"
projects[google_analytics][version] = "1.3"

projects[imce][subdir] = "contrib"
projects[imce][version] = "1.7"

projects[imce_wysiwyg][subdir] = "contrib"
projects[imce_wysiwyg][version] = "1.0"

projects[jquery_update][subdir] = "contrib"
projects[jquery_update][version] = "2.3"

projects[legal][subdir] = "contrib"
projects[legal][version] = "1.x-dev"

projects[libraries][subdir] = "contrib"
projects[libraries][version] = "2.0"

projects[menu_attributes][subdir] = "contrib"
projects[menu_attributes][version] = "1.0-rc2"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.2"

projects[pbcore][subdir] = "contrib"
projects[pbcore][version] = "1.0-beta2"

projects[profile2][subdir] = "contrib"
projects[profile2][version] = "1.3"

projects[recaptcha][subdir] = "contrib"
projects[recaptcha][version] = "1.9"

projects[resp_img][subdir] = "contrib"
projects[resp_img][version] = "1.3"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[styles][subdir] = "contrib"
projects[styles][version] = "2.0-alpha8"

projects[token][subdir] = "contrib"
projects[token][version] = "1.4"

projects[views][subdir] = "contrib"
projects[views][version] = "3.5"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "3.1"

projects[views_send][subdir] = "contrib"
projects[views_send][version] = "1.0-rc2"

projects[views_slideshow][subdir] = "contrib"
projects[views_slideshow][version] = "3.0"

projects[webform][subdir] = "contrib"
projects[webform][version] = "3.18"

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = "2.1"

; Themes
projects[omega][version] = "3.1"
projects[cm_theme][version] = "1.0-beta2"

;Libraries
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.0.1.1/ckeditor_4.0.1.1_standard.tar.gz"
libraries[ckeditor][destination] = libraries
libraries[ckeditor][directory_name] = ckeditor

libraries[tinymce][download][type] = get
libraries[tinymce][download][url] = "https://github.com/downloads/tinymce/tinymce/tinymce_3.5.8.zip"
libraries[tinymce][destination] = libraries
libraries[tinymce][directory_name] = tinymce

libraries[flexslider][download][type] = get
libraries[flexslider][download][url] = "https://github.com/downloads/woothemes/FlexSlider/FlexSlider-1.8.zip"
libraries[flexslider][destination] = libraries
libraries[flexslider][directory_name] = flexslider-download