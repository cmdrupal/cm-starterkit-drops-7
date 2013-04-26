<?php

/**
 * @file media_cloudcast/includes/themes/media_cloudcast.theme.inc
 *
 * Theme and preprocess functions for Media: Cloudcast.
 */

/**
 * Preprocess function for theme('media_cloudcast_video').
 */
function media_cloudcast_preprocess_media_cloudcast_video(&$variables) {

  // Build the URI.
  $wrapper = file_stream_wrapper_get_instance_by_uri($variables['uri']);
  $parts = $wrapper->get_parameters();
  //$variables['video_id'] = check_plain($parts['v']);
  
  $variables['client_id'] = check_plain($parts['id']);
  $variables['video_id'] = check_plain($parts['video']);

  // Parse options and build the query string. Only add the option to the query
  // array if the option value is not default. Be careful, depending on the
  // wording in media_cloudcast.formatters.inc, TRUE may be query=0.
  // @see https://developers.google.com/cloudcast/player_parameters#Parameters
  $query = array();

  // Make css z-index work with flash object. Must be the first parameter.
  $query['wmode'] = 'opaque';

  // These queries default to 0. If the option is true, set value to 1.
  foreach (array('autoplay', 'enablejsapi', 'loop', 'modestbranding') as $option) {
    if ($variables['options'][$option]) {
      $query[$option] = 1;
    }
  }
  
  /*

  if ($variables['options']['enablejsapi']) {
    // Add a query ID and identical html ID if js API is set.
    $query['playerapiid'] = drupal_html_id('media-cloudcast-' . $variables['video_id']);
    $variables['api_id_attribute'] = 'id="' . $query['playerapiid'] . '" ';

    //Add the origin for improved security
    $variables['options']['origin'] ? $query['origin'] = $variables['options']['origin'] : '';
  }
  else {
    $variables['api_id_attribute'] = NULL;
  }

*/
  // Currently, loop only works with a playlist. Make fake playlist out of a
  // single video.
  // @see https://developers.google.com/cloudcast/player_parameters#loop
  /*

  if ($variables['options']['loop']) {
    $query['playlist'] = $variables['video_id'];
  }

  // These queries default to 1. If the option is false, set value to 0.
  foreach (array('rel', 'showinfo') as $option) {
    if (!$variables['options'][$option]) {
      $query[$option] = 0;
    }
  }
*/

  // These queries default to 1. Option wording is reversed, so if the option
  // is true, set value to 0.
  // (None right now.)

  // Strings.
  /*

  if ($variables['options']['theme'] != 'dark') {
    $query['theme'] = $variables['options']['theme'];
  }
  if ($variables['options']['color'] != 'red') {
    $query['color'] = $variables['options']['color'];
  }
  if ($variables['options']['autohide'] != '2') {
    $query['autohide'] = $variables['options']['autohide'];
  }

  // Non-query options.
  if ($variables['options']['nocookie']) {
    $url_base = 'cloudcast-nocookie.com';
  }
  else {
    $url_base = 'cloudcast.com';
  }

  if ($variables['options']['protocol_specify']) {
    $protocol = $variables['options']['protocol'];
  }
  else {
    $protocol = '';
  }
*/

  // Add some options as their own template variables.
  foreach (array('width', 'height') as $themevar) {
    $variables[$themevar] = $variables['options'][$themevar];
  }


  // Do something useful with the overridden attributes from the file
  // object. We ignore alt and style for now.
  /*

  if (isset($variables['options']['attributes']['class'])) {
    $variables['classes_array'] = array_merge($variables['classes_array'], $variables['options']['attributes']['class']);
  }
*/

  // Build the iframe URL with options query string.
  
  //http://cvp.telvue.com/player?id=T01193&video=22578&noplaylistskin=1&width=400&height=300
  //dsm($variables);
  $query['id'] = $variables['client_id'];
  $query['video'] =  $variables['video_id'];
  $query['noplaylistskin'] = 1;
  $query['width'] = 400;
  $query['height'] = 300;
  
  $variables['url'] = url('http://cvp.telvue.com/player', array('query' => $query, 'external' => TRUE));
}
