<?php
function theme_preprocess_node(&$vars) {

  $vars['date'] = format_date($node->created, 'custom', 'l, d/m/Y');
        
}

?>