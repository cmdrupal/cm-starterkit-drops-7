<?php

/**
 * @file
 * Integration with the Feeds module.
 */

/**
 * Implements hook_feeds_node_processor_targets_alter().
 */
function hms_field_feeds_processor_targets_alter(&$targets, $entity_type, $bundle_name) {
  foreach (field_info_instances($entity_type, $bundle_name) as $name => $instance) {
    $info = field_info_field($name);
    if ($info['type'] == 'hms_field') {
     $targets[$name] = array(
        'name' => check_plain($instance['label']),
        'callback' => 'hms_field_set_target',
        'description' => t('The @label field of the node.', array('@label' => $instance['label'])),
      ); 
    }
  }
}

/**
 * Callback for hook_feeds_processor_targets_alter().
 *
 * @param $source
 *   Field mapper source settings.
 * @param $entity
 *   An entity object, for instance a node object.
 * @param $target
 *   A string identifying the target on the node.
 * @param $value
 *   The value to populate the target with.
 */
function hms_field_set_target($source, $entity, $target, $value) {
 if (empty($value)) {
    return;
  }

  // Handle non-multiple value fields.
  if (!is_array($value)) {
    $value = array($value);
  }

  // Iterate over all values.
  $i = 0;
  $info = field_info_field($target);
  list($field_name, $sub_field) = explode(':', $target);


  foreach ($value as $v) {
    if (!is_array($v) && !is_object($v)) {
      $field['und'][$i]['value'] = $v;
    }
    if ($info['cardinality'] == 1) {
      break;
    }
  $i++;
  
  }  
  $entity->{$field_name} = $field;
}