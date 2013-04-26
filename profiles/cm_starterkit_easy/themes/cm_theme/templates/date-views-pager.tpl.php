<?php
/**
 * @file
 * Template file for the example display.
 *
 * Variables available:
 * - $plugin: The pager plugin object. This contains the view as well as a lot
 *
 * $nav_title
 *   The formatted title for this view. In the case of block
 *   views, it will be a link to the full view, otherwise it will
 *   be the formatted name of the year, month, day, or week.
 *
 * $prev_url
 * $next_url
 *   Urls for the previous and next calendar pages. The links are
 *   composed in the template to make it easier to change the text,
 *   add images, etc.
 *
 * $prev_options
 * $next_options
 *   Query strings and other options for the links that need to
 *   be used in the l() function, including rel=nofollow.
 *
 * $block:
 *   Whether or not this view is in a block.
 *
 * $view
 *   The view object for this navigation.
 *
 * $pager_prefix
 *   Additional information that might be added by overriding template_process_date_views_pager().
 *
 * $extra_classes
 *   Extra classes for the wrapper, if any.
 *
 */ 
?>
<?php if (!empty($pager_prefix)) print $pager_prefix; ?>
<div id="cm_airing_date_nav" class="clearfix<?php if (!empty($extra_classes)) print $extra_classes; ?>">
  <?php if (!empty($prev_url)) : ?>
    <?php print l('<span>' . ($mini ? '' : '' . t('Previous', array(), array('context' => 'date_nav'))) . '</span>', $prev_url, array('html' => TRUE, 'attributes' => array('class' => array('prev')), $prev_options)); ?>
  <?php endif; ?>
  <?php if (!empty($next_url)) : ?>
	<?php print l('<span>' . ($mini ? '' : t('Next', array(), array('context' => 'date_nav'))) . '</span>', $next_url, array('html' => TRUE, 'attributes' => array('class' => array('next')), $next_options)); ?>
  <?php endif; ?>
  <div class="schedule-date">
    <span class="time"><?php print $nav_title ?></span>
  </div>
</div>