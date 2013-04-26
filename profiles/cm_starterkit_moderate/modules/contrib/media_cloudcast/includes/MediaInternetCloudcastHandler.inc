<?php

/**
 * @file media_cloudcast/includes/MediaInterenetCloudcastHandler.inc
 *
 * Contains MediaInternetCloudcastHandler.
 */

/**
 * Implementation of MediaInternetBaseHandler.
 *
 * @see hook_media_internet_providers().
 */
class MediaInternetCloudcastHandler extends MediaInternetBaseHandler {
  /**
   * Check if a Cloudcast video id is valid.
   *
   * Check against the oembed stream instead of the gdata api site to
   * avoid "yt:quota too_many_recent_calls" errors.
   *
   * @return
   *   Boolean.
   */
  static public function validId($id) {
    // $url = 'http://www.cloudcast.com/oembed?url=http%3A//cloudcast.com/watch%3Fv%3D'. $id;
//     $response = drupal_http_request($url, array('method' => 'HEAD'));
//     if ($response->code != 200) {
//       throw new MediaInternetValidationException("The Cloudcast video ID is invalid or the video was deleted.");
//     }
    return TRUE;
  }

  public function parse($embedCode) {
    $patterns = array(
      '@peg\.tv/pegtv_player[#\?]id=([^"\& ]+)&video=([^"\& ]+)@i',
      '@vp\.telvue\.com/player[#\?]id=([^"\& ]+)&video=([^"\& ]+)@i',
      '@vp\.telvue\.com/preview[#\?]id=([^"\& ]+)&video=([^"\& ]+)@i'
    );
    foreach ($patterns as $pattern) {
      preg_match($pattern, $embedCode, $matches);
      // @TODO: Parse is called often. Refactor so that valid ID is checked
      // when a video is added, but not every time the embedCode is parsed.
      if (isset($matches[1]) && self::validId($matches[1])) {
        return file_stream_wrapper_uri_normalize('cloudcast://id/' . $matches[1] .'/video/' . $matches[2]);
      }
    }
  }

  public function claim($embedCode) {
    if ($this->parse($embedCode)) {
      return TRUE;
    }
  }

  public function getFileObject() {
    $uri = $this->parse($this->embedCode);
    $file = file_uri_to_object($uri, TRUE);
    
    //dsm($file);
    
    //if (empty($file->fid) && $info = $this->getOEmbed()) {
      //$file->filename = truncate_utf8($info['title'], 255);
    //}

    return $file;
  }

  /**
   * Returns information about the media. See http://video.search.yahoo.com/mrss.
   *
   * @return
   *   If ATOM+MRSS information is available, a SimpleXML element containing
   *   ATOM and MRSS elements, as per those respective specifications.
   *
   * @todo Would be better for the return value to be an array rather than a
   *   SimpleXML element, but media_retrieve_xml() needs to be upgraded to
   *   handle namespaces first.
   */
  public function getMRSS() {
    $uri = $this->parse($this->embedCode);
    $client_id = arg(1, file_uri_target($uri));
    $rss_url = url('http://origin.peg.tv/channels/' . $client_id, array('query' => array('v' => '2')));
    // @todo Use media_retrieve_xml() once it's upgraded to include elements
    //   from all namespaces, not just the document default namespace.
    $request = drupal_http_request($rss_url);
    if (!isset($request->error)) {
      $entry = simplexml_load_string($request->data);
    }
    else {
      throw new Exception("Error Processing Request. (Error: {$response->code}, {$response->error})");

      //if request wasn't successful, create object for return to avoid errors
      $entry = new SimpleXMLElement();
    }
    return $entry;
  }

  /**
   * Returns information about the media. See http://www.oembed.com/.
   *
   * @return
   *   If oEmbed information is available, an array containing 'title', 'type',
   *   'url', and other information as specified by the oEmbed standard.
   *   Otherwise, NULL.
   */
  public function getOEmbed() {
    //no oembed support yet
  }
}
