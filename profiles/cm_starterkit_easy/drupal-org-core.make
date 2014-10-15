api = 2
core = 7.x

; Drupal Core
projects[drupal][type] = core
projects[drupal][version] = 7.31
; Patch to enable overrides from admin/modules/install
projects[drupal][patch][2300357] = https://www.drupal.org/files/issues/2300357-allows-adding-modules-to-override-version-in-profile-2.patch
; Patch for handling inherited profiles from OpenAtrium
; projects[drupal][patch][1356276] = http://drupal.org/files/1356276-make-D7-21.patch
