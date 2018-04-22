<?php
if ( !function_exists( 'add_action' ) ) {
  echo 'Hi there!  I\'m just a plugin, not much I can do when called directly.';
  exit;
}
class hk_weather_widget extends WP_Widget {
  function hk_weather_widget() {
    $widget_ops = array( 'classname' => 'hk_weather_widget', 'description' => 'HK Weather widget by HuyKira' ); // Widget Settings
    $control_ops = array( 'id_base' => 'hk_weather_widget' ); // Widget Control Settings
    $this->WP_Widget( 'hk_weather_widget', 'HK Weather', $widget_ops, $control_ops ); // Create the widget
  }
  function widget($args, $instance) {
      extract( $args );
      $title     = $instance['title'];
  if ( !defined('ABSPATH') )
  die('-1'); ?>
  <?php echo $before_widget; ?>
	<?php echo $before_title.$title.$after_title; ?>
	<?php echo do_shortcode('[hk_weather]'); ?>
	<?php echo $after_widget; }
  function update($new_instance, $old_instance) {
      $instance['title']  = strip_tags($new_instance['title']);
      return $instance;
  }
  function form($instance) {
  $instance = wp_parse_args( (array) $instance, $defaults ); ?>
    <p>
      <label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Nhập tiêu đề: '); ?></label>
      <input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo $instance['title']; ?>"  />
    </p>
  <?php }
}
add_action('widgets_init', create_function('', 'return register_widget("hk_weather_widget");'));