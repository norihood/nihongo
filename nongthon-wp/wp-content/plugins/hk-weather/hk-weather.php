<?php
/*
Plugin Name: HK Weather Plugin
Plugin URI: http://www.huykira.net
Description: HK Weather Plugin by Huy Kira
Author: Huy Kira
Version: 1.0
Author URI: http://www.huykira.net
*/
if ( !function_exists( 'add_action' ) ) {
  echo 'Hi there!  I\'m just a plugin, not much I can do when called directly.';
  exit;
}

define('HK_WEATHER_PLUGIN_URL', plugin_dir_url(__FILE__));
define('HK_WEATHER_PLUGIN_RIR', plugin_dir_path(__FILE__));
require_once(HK_WEATHER_PLUGIN_RIR . 'includes/class.hk-weather-api.php');
require_once(HK_WEATHER_PLUGIN_RIR . 'includes/class.hk-weather-setting.php');
require_once(HK_WEATHER_PLUGIN_RIR . 'includes/class.hk-weather-shortcode.php');
require_once(HK_WEATHER_PLUGIN_RIR . 'includes/class.hk-weather-widget.php');
$huy = new Hk_weather_Setting();