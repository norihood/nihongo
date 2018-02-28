<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'pofo_hung');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '123456');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '(L 9v7Gv9X8@$%~KeV6&P&~%uBnI=-6p+YG$rQ#DIA83Gh*(n+oxB`4gH|dwOhx(');
define('SECURE_AUTH_KEY',  ',*1jaYf$?r,IYLg-D1%TnKgiU3FO[XsShty>f|RAVlk+Nuv #Gg[PGmFB#EAsEVJ');
define('LOGGED_IN_KEY',    '3rS&UH,1WlXBeM. }>/9J2@;ysiDW(p^d!4Q{n[wvwe#^]tB?!7)N_4P a2oi$7w');
define('NONCE_KEY',        '+.^O{GXz8My;Axwmxf`]58[7>!I2V,K5Ro=IL^rdy{Etb^=~h+J/ZoP]ziAX0D0M');
define('AUTH_SALT',        '{zzt-gBhy]8oLn:|k)P]afXUP3^yO8Q6tssR4`.E7U;(_O8z4uC2]0Ks^&tB{z$K');
define('SECURE_AUTH_SALT', 'g6:BZy<9VN9tQK*?0?^/w`7UFY %w*%znH+7B?an+Ff2E/Mq/YzYahLr!11z/HQy');
define('LOGGED_IN_SALT',   'vPuzv%hgbKGsBf{vYd$mZE?u1/s7VHoGWPf#!|%7C_A^#`=mK7|?]X#uazO=iF,x');
define('NONCE_SALT',       'feUofPxsFh@4z>)T6L~{*0ZF-wm~qT$7/^aRy2/v u>HAm[-zN)Ca_4xddHmOryO');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
