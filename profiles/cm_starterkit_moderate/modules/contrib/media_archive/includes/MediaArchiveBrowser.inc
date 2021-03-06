<?php

/**
 * @file media_archive/includes/MediaArchiveBrowser.inc
 *
 * Definition of MediaArchiveBrowser.
 */

/**
 * Media browser plugin for displaying a specific view and display.
 */
class MediaArchiveBrowser extends MediaBrowserPlugin {
  /**
   * Implements MediaBrowserPluginInterface::access().
   */
  public function access($account = NULL) {
    return media_archive_access('create', NULL, $account);
  }

  /**
   * Implements MediaBrowserPlugin::view().
   */
  public function view() {
    // Check if the user is able to add remote media.
    if (user_access('add media from remote sources')) {
      $build['form'] = drupal_get_form('media_archive_add', $this->params['types'], $this->params['multiselect']);
      return $build;
    }
  }
}
