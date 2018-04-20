<?php
/**
 * Twenty Seventeen functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 */

/**
 * Twenty Seventeen only works in WordPress 4.7 or later.
 */
if ( version_compare( $GLOBALS['wp_version'], '4.7-alpha', '<' ) ) {
	require get_template_directory() . '/inc/back-compat.php';
	return;
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function twentyseventeen_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed at WordPress.org. See: https://translate.wordpress.org/projects/wp-themes/twentyseventeen
	 * If you're building a theme based on Twenty Seventeen, use a find and replace
	 * to change 'twentyseventeen' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'twentyseventeen' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	add_image_size( 'twentyseventeen-featured-image', 2000, 1200, true );

	add_image_size( 'twentyseventeen-thumbnail-avatar', 100, 100, true );

	// Set the default content width.
	$GLOBALS['content_width'] = 525;

	// This theme uses wp_nav_menu() in two locations.
	register_nav_menus( array(
		'top'    => __( 'Top Menu', 'twentyseventeen' ),
		'phuong-custom' => __( 'Menu Custom', 'twentyseventeen' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 *
	 * See: https://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
		'gallery',
		'audio',
	) );

	// Add theme support for Custom Logo.
	add_theme_support( 'custom-logo', array(
		'width'       => 250,
		'height'      => 250,
		'flex-width'  => true,
	) );

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/*
	 * This theme styles the visual editor to resemble the theme style,
	 * specifically font, colors, and column width.
 	 */
	add_editor_style( array( 'assets/css/editor-style.css', twentyseventeen_fonts_url() ) );

	// Define and register starter content to showcase the theme on new sites.
	$starter_content = array(
		'widgets' => array(
			// Place three core-defined widgets in the sidebar area.
			'sidebar-1' => array(
				'text_business_info',
				'search',
				'text_about',
			),

			// Add the core-defined business info widget to the footer 1 area.
			'sidebar-2' => array(
				'text_business_info',
			),

			// Put two core-defined widgets in the footer 2 area.
			'sidebar-3' => array(
				'text_about',
				'search',
			),
		),

		// Specify the core-defined pages to create and add custom thumbnails to some of them.
		'posts' => array(
			'home',
			'about' => array(
				'thumbnail' => '{{image-sandwich}}',
			),
			'contact' => array(
				'thumbnail' => '{{image-espresso}}',
			),
			'blog' => array(
				'thumbnail' => '{{image-coffee}}',
			),
			'homepage-section' => array(
				'thumbnail' => '{{image-espresso}}',
			),
		),

		// Create the custom image attachments used as post thumbnails for pages.
		'attachments' => array(
			'image-espresso' => array(
				'post_title' => _x( 'Espresso', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/espresso.jpg', // URL relative to the template directory.
			),
			'image-sandwich' => array(
				'post_title' => _x( 'Sandwich', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/sandwich.jpg',
			),
			'image-coffee' => array(
				'post_title' => _x( 'Coffee', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/coffee.jpg',
			),
		),

		// Default to a static front page and assign the front and posts pages.
		'options' => array(
			'show_on_front' => 'page',
			'page_on_front' => '{{home}}',
			'page_for_posts' => '{{blog}}',
		),

		// Set the front page section theme mods to the IDs of the core-registered pages.
		'theme_mods' => array(
			'panel_1' => '{{homepage-section}}',
			'panel_2' => '{{about}}',
			'panel_3' => '{{blog}}',
			'panel_4' => '{{contact}}',
		),

		// Set up nav menus for each of the two areas registered in the theme.
		'nav_menus' => array(
			// Assign a menu to the "top" location.
			'top' => array(
				'name' => __( 'Top Menu', 'twentyseventeen' ),
				'items' => array(
					'link_home', // Note that the core "home" page is actually a link in case a static front page is not used.
					'page_about',
					'page_blog',
					'page_contact',
				),
			),

			// Assign a menu to the "social" location.
			'social' => array(
				'name' => __( 'Social Links Menu', 'twentyseventeen' ),
				'items' => array(
					'link_yelp',
					'link_facebook',
					'link_twitter',
					'link_instagram',
					'link_email',
				),
			),
		),
	);

	/**
	 * Filters Twenty Seventeen array of starter content.
	 *
	 * @since Twenty Seventeen 1.1
	 *
	 * @param array $starter_content Array of starter content.
	 */
	$starter_content = apply_filters( 'twentyseventeen_starter_content', $starter_content );

	add_theme_support( 'starter-content', $starter_content );
}
add_action( 'after_setup_theme', 'twentyseventeen_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function twentyseventeen_content_width() {

	$content_width = $GLOBALS['content_width'];

	// Get layout.
	$page_layout = get_theme_mod( 'page_layout' );

	// Check if layout is one column.
	if ( 'one-column' === $page_layout ) {
		if ( twentyseventeen_is_frontpage() ) {
			$content_width = 644;
		} elseif ( is_page() ) {
			$content_width = 740;
		}
	}

	// Check if is single post and there is no sidebar.
	if ( is_single() && ! is_active_sidebar( 'sidebar-1' ) ) {
		$content_width = 740;
	}

	/**
	 * Filter Twenty Seventeen content width of the theme.
	 *
	 * @since Twenty Seventeen 1.0
	 *
	 * @param int $content_width Content width in pixels.
	 */
	$GLOBALS['content_width'] = apply_filters( 'twentyseventeen_content_width', $content_width );
}
add_action( 'template_redirect', 'twentyseventeen_content_width', 0 );

/**
 * Register custom fonts.
 */
function twentyseventeen_fonts_url() {
	$fonts_url = '';

	/*
	 * Translators: If there are characters in your language that are not
	 * supported by Libre Franklin, translate this to 'off'. Do not translate
	 * into your own language.
	 */
	$libre_franklin = _x( 'on', 'Libre Franklin font: on or off', 'twentyseventeen' );

	if ( 'off' !== $libre_franklin ) {
		$font_families = array();

		$font_families[] = 'Libre Franklin:300,300i,400,400i,600,600i,800,800i';

		$query_args = array(
			'family' => urlencode( implode( '|', $font_families ) ),
			'subset' => urlencode( 'latin,latin-ext' ),
		);

		$fonts_url = add_query_arg( $query_args, 'https://fonts.googleapis.com/css' );
	}

	return esc_url_raw( $fonts_url );
}

/**
 * Add preconnect for Google Fonts.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param array  $urls           URLs to print for resource hints.
 * @param string $relation_type  The relation type the URLs are printed.
 * @return array $urls           URLs to print for resource hints.
 */
function twentyseventeen_resource_hints( $urls, $relation_type ) {
	if ( wp_style_is( 'twentyseventeen-fonts', 'queue' ) && 'preconnect' === $relation_type ) {
		$urls[] = array(
			'href' => 'https://fonts.gstatic.com',
			'crossorigin',
		);
	}

	return $urls;
}
add_filter( 'wp_resource_hints', 'twentyseventeen_resource_hints', 10, 2 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function twentyseventeen_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Blog Sidebar', 'twentyseventeen' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar on blog posts and archive pages.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 1', 'twentyseventeen' ),
		'id'            => 'sidebar-2',
		'description'   => __( 'Add widgets here to appear in your footer.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 2', 'twentyseventeen' ),
		'id'            => 'sidebar-3',
		'description'   => __( 'Add widgets here to appear in your footer.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'twentyseventeen_widgets_init' );

/**
 * Replaces "[...]" (appended to automatically generated excerpts) with ... and
 * a 'Continue reading' link.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $link Link to single post/page.
 * @return string 'Continue reading' link prepended with an ellipsis.
 */
function twentyseventeen_excerpt_more( $link ) {
	if ( is_admin() ) {
		return $link;
	}

	$link = sprintf( '<p class="link-more"><a href="%1$s" class="more-link">%2$s</a></p>',
		esc_url( get_permalink( get_the_ID() ) ),
		/* translators: %s: Name of current post */
		sprintf( __( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'twentyseventeen' ), get_the_title( get_the_ID() ) )
	);
	return ' &hellip; ' . $link;
}
add_filter( 'excerpt_more', 'twentyseventeen_excerpt_more' );

/**
 * Handles JavaScript detection.
 *
 * Adds a `js` class to the root `<html>` element when JavaScript is detected.
 *
 * @since Twenty Seventeen 1.0
 */
function twentyseventeen_javascript_detection() {
	echo "<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>\n";
}
// add_action( 'wp_head', 'twentyseventeen_javascript_detection', 0 );

/**
 * Add a pingback url auto-discovery header for singularly identifiable articles.
 */
function twentyseventeen_pingback_header() {
	if ( is_singular() && pings_open() ) {
		printf( '<link rel="pingback" href="%s">' . "\n", get_bloginfo( 'pingback_url' ) );
	}
}
// add_action( 'wp_head', 'twentyseventeen_pingback_header' );

/**
 * Display custom color CSS.
 */
function twentyseventeen_colors_css_wrap() {
	if ( 'custom' !== get_theme_mod( 'colorscheme' ) && ! is_customize_preview() ) {
		return;
	}

	require_once( get_parent_theme_file_path( '/inc/color-patterns.php' ) );
	$hue = absint( get_theme_mod( 'colorscheme_hue', 250 ) );
?>
	<style type="text/css" id="custom-theme-colors" <?php if ( is_customize_preview() ) { echo 'data-hue="' . $hue . '"'; } ?>>
		<?php echo twentyseventeen_custom_colors_css(); ?>
	</style>
<?php }
// add_action( 'wp_head', 'twentyseventeen_colors_css_wrap' );

/**
 * Enqueue scripts and styles.
 */
function twentyseventeen_scripts() {
	// Add custom fonts, used in the main stylesheet.
	wp_enqueue_style( 'twentyseventeen-fonts', twentyseventeen_fonts_url(), array(), null );

	// Theme stylesheet.
	wp_enqueue_style( 'twentyseventeen-style', get_stylesheet_uri() );

	// Load the dark colorscheme.
	if ( 'dark' === get_theme_mod( 'colorscheme', 'light' ) || is_customize_preview() ) {
		wp_enqueue_style( 'twentyseventeen-colors-dark', get_theme_file_uri( '/assets/css/colors-dark.css' ), array( 'twentyseventeen-style' ), '1.0' );
	}

	// Load the Internet Explorer 9 specific stylesheet, to fix display issues in the Customizer.
	if ( is_customize_preview() ) {
		wp_enqueue_style( 'twentyseventeen-ie9', get_theme_file_uri( '/assets/css/ie9.css' ), array( 'twentyseventeen-style' ), '1.0' );
		wp_style_add_data( 'twentyseventeen-ie9', 'conditional', 'IE 9' );
	}

	// Load the Internet Explorer 8 specific stylesheet.
	wp_enqueue_style( 'twentyseventeen-ie8', get_theme_file_uri( '/assets/css/ie8.css' ), array( 'twentyseventeen-style' ), '1.0' );
	wp_style_add_data( 'twentyseventeen-ie8', 'conditional', 'lt IE 9' );

	// Load the html5 shiv.
	wp_enqueue_script( 'html5', get_theme_file_uri( '/assets/js/html5.js' ), array(), '3.7.3' );
	wp_script_add_data( 'html5', 'conditional', 'lt IE 9' );

	wp_enqueue_script( 'twentyseventeen-skip-link-focus-fix', get_theme_file_uri( '/assets/js/skip-link-focus-fix.js' ), array(), '1.0', true );

	$twentyseventeen_l10n = array(
		'quote'          => twentyseventeen_get_svg( array( 'icon' => 'quote-right' ) ),
	);

	if ( has_nav_menu( 'top' ) ) {
		wp_enqueue_script( 'twentyseventeen-navigation', get_theme_file_uri( '/assets/js/navigation.js' ), array( 'jquery' ), '1.0', true );
		$twentyseventeen_l10n['expand']         = __( 'Expand child menu', 'twentyseventeen' );
		$twentyseventeen_l10n['collapse']       = __( 'Collapse child menu', 'twentyseventeen' );
		$twentyseventeen_l10n['icon']           = twentyseventeen_get_svg( array( 'icon' => 'angle-down', 'fallback' => true ) );
	}

	wp_enqueue_script( 'twentyseventeen-global', get_theme_file_uri( '/assets/js/global.js' ), array( 'jquery' ), '1.0', true );

	wp_enqueue_script( 'jquery-scrollto', get_theme_file_uri( '/assets/js/jquery.scrollTo.js' ), array( 'jquery' ), '2.1.2', true );

	wp_localize_script( 'twentyseventeen-skip-link-focus-fix', 'twentyseventeenScreenReaderText', $twentyseventeen_l10n );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'twentyseventeen_scripts' );

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for content images.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $sizes A source size value for use in a 'sizes' attribute.
 * @param array  $size  Image size. Accepts an array of width and height
 *                      values in pixels (in that order).
 * @return string A source size value for use in a content image 'sizes' attribute.
 */
function twentyseventeen_content_image_sizes_attr( $sizes, $size ) {
	$width = $size[0];

	if ( 740 <= $width ) {
		$sizes = '(max-width: 706px) 89vw, (max-width: 767px) 82vw, 740px';
	}

	if ( is_active_sidebar( 'sidebar-1' ) || is_archive() || is_search() || is_home() || is_page() ) {
		if ( ! ( is_page() && 'one-column' === get_theme_mod( 'page_options' ) ) && 767 <= $width ) {
			 $sizes = '(max-width: 767px) 89vw, (max-width: 1000px) 54vw, (max-width: 1071px) 543px, 580px';
		}
	}

	return $sizes;
}
add_filter( 'wp_calculate_image_sizes', 'twentyseventeen_content_image_sizes_attr', 10, 2 );

/**
 * Filter the `sizes` value in the header image markup.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $html   The HTML image tag markup being filtered.
 * @param object $header The custom header object returned by 'get_custom_header()'.
 * @param array  $attr   Array of the attributes for the image tag.
 * @return string The filtered header image HTML.
 */
function twentyseventeen_header_image_tag( $html, $header, $attr ) {
	if ( isset( $attr['sizes'] ) ) {
		$html = str_replace( $attr['sizes'], '100vw', $html );
	}
	return $html;
}
add_filter( 'get_header_image_tag', 'twentyseventeen_header_image_tag', 10, 3 );

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for post thumbnails.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param array $attr       Attributes for the image markup.
 * @param int   $attachment Image attachment ID.
 * @param array $size       Registered image size or flat array of height and width dimensions.
 * @return array The filtered attributes for the image markup.
 */
function twentyseventeen_post_thumbnail_sizes_attr( $attr, $attachment, $size ) {
	if ( is_archive() || is_search() || is_home() ) {
		$attr['sizes'] = '(max-width: 767px) 89vw, (max-width: 1000px) 54vw, (max-width: 1071px) 543px, 580px';
	} else {
		$attr['sizes'] = '100vw';
	}

	return $attr;
}
add_filter( 'wp_get_attachment_image_attributes', 'twentyseventeen_post_thumbnail_sizes_attr', 10, 3 );

/**
 * Use front-page.php when Front page displays is set to a static page.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $template front-page.php.
 *
 * @return string The template to be used: blank if is_home() is true (defaults to index.php), else $template.
 */
function twentyseventeen_front_page_template( $template ) {
	return is_home() ? '' : $template;
}
add_filter( 'frontpage_template',  'twentyseventeen_front_page_template' );

/**
 * Modifies tag cloud widget arguments to display all tags in the same font size
 * and use list format for better accessibility.
 *
 * @since Twenty Seventeen 1.4
 *
 * @param array $args Arguments for tag cloud widget.
 * @return array The filtered arguments for tag cloud widget.
 */
function twentyseventeen_widget_tag_cloud_args( $args ) {
	$args['largest']  = 1;
	$args['smallest'] = 1;
	$args['unit']     = 'em';
	$args['format']   = 'list';

	return $args;
}
add_filter( 'widget_tag_cloud_args', 'twentyseventeen_widget_tag_cloud_args' );

/**
 * Implement the Custom Header feature.
 */
require get_parent_theme_file_path( '/inc/custom-header.php' );

/**
 * Custom template tags for this theme.
 */
require get_parent_theme_file_path( '/inc/template-tags.php' );

/**
 * Additional features to allow styling of the templates.
 */
require get_parent_theme_file_path( '/inc/template-functions.php' );

/**
 * Customizer additions.
 */
require get_parent_theme_file_path( '/inc/customizer.php' );

/**
 * SVG icons functions and filters.
 */
require get_parent_theme_file_path( '/inc/icon-functions.php' );


// PhuongNLT
/**
 * Add a css file
 */
function add_css_file() {
	// printf( '<link rel="stylesheet"  type="text/css" href="'.bloginfo('template_url').'/css/nongthon/reset.css">');
//	wp_enqueue_style ('bootstrap', get_template_directory_uri().'/assets/bootstrap-3.3.6-dist/css/bootstrap.min.css');
	wp_enqueue_style ('reset', get_template_directory_uri().'/assets/css/reset.css');
	wp_enqueue_style ('bxslider', get_template_directory_uri().'/assets/css/jquery.bxslider.min.css');
	wp_enqueue_style ('template', get_template_directory_uri().'/assets/css/template.css');
	wp_enqueue_style ('icons', get_template_directory_uri().'/assets/css/icons.css');
	wp_enqueue_style ('video', get_template_directory_uri().'/assets/css/video.css');
	wp_enqueue_style ('laws', get_template_directory_uri().'/assets/css/laws.css');
	wp_enqueue_style ('news', get_template_directory_uri().'/assets/css/news.css');
	wp_enqueue_style ('real', get_template_directory_uri().'/assets/css/real.css');
	wp_enqueue_style ('tab_info', get_template_directory_uri().'/assets/css/tab_info.css');
	wp_enqueue_style ('divbox', get_template_directory_uri().'/assets/css/divbox.css');
	wp_enqueue_style ('shadowbox', get_template_directory_uri().'/assets/css/shadowbox.css');
	wp_enqueue_style ('nav_menu', get_template_directory_uri().'/assets/css/nav_menu.css');
	wp_enqueue_style ('ddsmoothmenu', get_template_directory_uri().'/assets/css/ddsmoothmenu.css');
	wp_enqueue_style ('jquery-ui', get_template_directory_uri().'/assets/css/jquery-ui.css');

}
add_action( 'wp_enqueue_scripts', 'add_css_file' );
/**
 * custom menu header
 */
function clean_custom_menus() {
	global $post;
	$menu_name = 'top'; // specify custom menu slug
	if (($locations = get_nav_menu_locations()) && isset($locations[$menu_name])) {
		$menu = wp_get_nav_menu_object($locations[$menu_name]);
		$menu_items = wp_get_nav_menu_items($menu->term_id);
        
		$menu_list = '<nav>' ."\n";
		$menu_list .= "\t\t\t\t". '<ul class="nav fl p_nav">' ."\n";
		foreach ((array) $menu_items as $key => $menu_item) {
			$title = $menu_item->title;
			$url = $menu_item->url;
			if ($menu_item->object_id == $post->ID) {
				$current = 'current';
			} else {
				$current = '';
			}
			$menu_list .= "\t\t\t\t\t". '<li class="' . $current . '"><a title="' . $title . '" href="'. $url .'"><span><strong>•</strong>'. $title .'</span></a></li>' ."\n";
		}
		$menu_list .= "\t\t\t\t". '</ul>' ."\n";
		$menu_list .= "\t\t\t". '</nav>' ."\n";
	} else {
		$menu_list = '<!-- no list defined -->';
	}
	echo $menu_list;
}

add_filter('show_admin_bar', '__return_false');

/* ======= Constant ======= */
define('CATEGORY_NEWS_ID', 11);
define('VAN_BAN_PAGE_SLUG', 'van-ban-nong-thon-moi');
define('VAN_BAN_POST_TYPE', 'laws');

// taxonomy
define('CO_QUAN_BAN_HANH', 'co-quan-ban-hanh');
define('LOAI_VAN_BAN', 'loai-van-ban');
define('DON_VI_PHONG_BAN', 'don-vi-phong-ban');
define('LINH_VUC', 'linh-vuc');
define('PHAN_LOAI', 'phan-loai');

define('ALBUM_PAGE_SLUG', 'thu-vien-anh');
define('FAQ_POST_TYPE', 'faq');
define('FAQ_PAGE_SLUG', 'hoi-dap');
define('VIDEO_POST_TYPE', 'list-video');
// taxonomy video
define('LOAI_VIDEO', 'loai-video');

define('CONTACT_PAGE_SLUG', 'hom-thu');
define('QUESTION_PAGE_SLUG', 'cau-hoi');
define('VIDEO_PAGE_SLUG', 'video');
define('ABOUT_PAGE_SLUG', 'gioi-thieu');
/* ======= Constant ======= */

function tao_taxonomy() {
    /* Biến $label chứa các tham số thiết lập tên hiển thị của Taxonomy
         */
    $labels = array(
        CO_QUAN_BAN_HANH => array(
            'name'      => 'Cơ quan ban hành',
            'singular'  => 'Cơ quan ban hành',
            'menu_name' => 'Cơ quan ban hành'
        ),
        LOAI_VAN_BAN => array(
            'name'      => 'Loại văn bản / tài liệu',
            'singular'  => 'Loại văn bản / tài liệu',
            'menu_name' => 'Loại văn bản / tài liệu'
        ),
        DON_VI_PHONG_BAN => array(
            'name'      => 'Đơn vị phòng ban',
            'singular'  => 'Đơn vị phòng ban',
            'menu_name' => 'Đơn vị phòng ban'
        ),
        LINH_VUC => array(
            'name'      => 'Lĩnh vực',
            'singular'  => 'Lĩnh vực',
            'menu_name' => 'Lĩnh vực'
        ),
    );

    foreach ($labels as $key => $label) {
        /* Biến $args khai báo các tham số trong custom taxonomy cần tạo */
        $args = array(
           'labels'            => $label,
           'hierarchical'      => true,
           'public'            => true,
           'show_ui'           => true,
           'show_admin_column' => true,
           'show_in_nav_menus' => true,
           'show_tagcloud'     => true
        );

       /* Hàm register_taxonomy để khởi tạo taxonomy */
       register_taxonomy($key, VAN_BAN_POST_TYPE, $args);
    }
    
    $args_faq = array(
           'labels'            => array(
                'name'      => 'Phân loại',
                'singular'  => 'Phân loại',
                'menu_name' => 'Phân loại'
            ),
           'hierarchical'      => true,
           'public'            => true,
           'show_ui'           => true,
           'show_admin_column' => true,
           'show_in_nav_menus' => true,
           'show_tagcloud'     => true
       );
    // taxonomy FAQ
    register_taxonomy(PHAN_LOAI, FAQ_POST_TYPE, $args_faq);

    $args_video = array(
           'labels'            => array(
                'name'      => 'Loại Video',
                'singular'  => 'Loại Video',
                'menu_name' => 'Loại Video'
            ),
           'hierarchical'      => true,
           'public'            => true,
           'show_ui'           => true,
           'show_admin_column' => true,
           'show_in_nav_menus' => true,
           'show_tagcloud'     => true
       );
    // taxonomy FAQ
    register_taxonomy(LOAI_VIDEO, VIDEO_POST_TYPE, $args_video);
    
}
 
// Hook into the 'init' action
add_action( 'init', 'tao_taxonomy', 0 );

function tao_custom_post_type() {
    // Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
    $label = array(
        'name' => 'Văn bản', //Tên post type dạng số nhiều
        'singular_name' => 'Văn bản' //Tên post type dạng số ít
    );
    // Biến $args là những tham số quan trọng trong Post Type
    $args = array(
        'labels' => $label, //Gọi các label trong biến $label ở trên
        'description' => 'Post type quản lý file', //Mô tả của post type
        'supports' => array(
            'title',
//            'editor',
            'excerpt',
            'author',
            'thumbnail',
//            'comments',
//            'trackbacks',
            'revisions',
            'custom-fields'
        ), //Các tính năng được hỗ trợ trong post type
        'taxonomies' => array( 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 5, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => '', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post',
        // 'rewrite' => true,
    );
 
    register_post_type(VAN_BAN_POST_TYPE, $args); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
    flush_rewrite_rules();
    
    // FAQ post type
    $args_faq = array(
        'labels' => array(
            'name' => 'Hỏi và đáp',
            'singular_name' => 'Hỏi và đáp'
        ),
        'description' => 'Các câu hỏi của người dùng',
        'supports' => array(
            'title',
            'editor',
            'revisions',
            'custom-fields'
        ),
        'taxonomies' => array(),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 6,
        'menu_icon' => '',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'publicly_queryable' => true,
        'capability_type' => 'post',
        // 'rewrite' => true,
    );
    register_post_type(FAQ_POST_TYPE, $args_faq); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
    flush_rewrite_rules();
    
    // VIDEO post type
    $args_video = array(
        'labels' => array(
            'name' => 'Video',
            'singular_name' => 'Video'
        ),
        'description' => 'Video',
        'supports' => array(
            'title',
//            'editor',
            'revisions',
            'custom-fields'
        ),
        'taxonomies' => array(),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 7,
        'menu_icon' => '',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => true,
        'publicly_queryable' => true,
        'capability_type' => 'post',
        // 'rewrite' => true,
    );
    register_post_type(VIDEO_POST_TYPE, $args_video); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
    flush_rewrite_rules();
}
/* Kích hoạt hàm tạo custom post type */
add_action('init', 'tao_custom_post_type');

/**
 * change permalink of custom post
 */
//function cj_update_permalink_structure( $post_link, $post ) {
//    if ( false !== strpos( $post_link, '%replace-taxonomy%' ) ) {
//        $taxonomy_terms = get_the_terms( $post->ID, ['co-quan-ban-hanh', 'loai-van-ban', 'don-vi-phong-ban', 'linh-vuc'] );
//        foreach ( $taxonomy_terms as $term ) {
//            if ( ! $term->parent ) {
//                $post_link = str_replace( '%replace-taxonomy%', $term->slug, $post_link );
//            }
//        } 
//    }
//    return $post_link;
//}
//add_filter('post_type_link', 'cj_update_permalink_structure', 10, 2);

function wpfstop_change_default_title( $title ){
    $screen = get_current_screen();
    if ( VAN_BAN_POST_TYPE == $screen->post_type ){
        $title = 'Nhập Tên / Số / ký hiệu';
    }
    return $title;
}
add_filter( 'enter_title_here', 'wpfstop_change_default_title' );

// post view
function getPostViews($postID){
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if ($count=='') {
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
        return "0";
    }
    return $count;
}
function setPostViews($postID) {
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if ($count=='') {
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    } else {
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}
// Remove issues with prefetching adding extra views
remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0);

function set_ajax_youtube_view() {
    $postID = (isset($_POST['post_id'])) ? esc_attr($_POST['post_id']) : '';
    setPostViews($postID);
    wp_send_json_success('true');
	die();
}
add_action( 'wp_ajax_youtube_view', 'set_ajax_youtube_view' );
add_action( 'wp_ajax_nopriv_youtube_view', 'set_ajax_youtube_view' );

// lượt download
function get_count_download($postID) {
    $count_key = 'post_count_download';
    $count = get_post_meta($postID, $count_key, true);
    if ($count=='') {
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
        return "0";
    }
    return $count;
}
function set_count_download($postID) {
    $postID = (isset($_POST['post_id'])) ? esc_attr($_POST['post_id']) : '';
    $count_key = 'post_count_download';
    $count = get_post_meta($postID, $count_key, true);
    if ($count=='') {
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    } else {
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
    wp_send_json_success('true');
	die();
}
add_action( 'wp_ajax_count_download', 'set_count_download' );
add_action( 'wp_ajax_nopriv_count_download', 'set_count_download' );

/* ===== helper ===== */
function get_thu($weekday) {
//    $weekday = date("l");
    $weekday = strtolower($weekday);
    switch($weekday) {
        case 'monday':
            $weekday = 'Thứ hai';
            break;
        case 'tuesday':
            $weekday = 'Thứ ba';
            break;
        case 'wednesday':
            $weekday = 'Thứ tư';
            break;
        case 'thursday':
            $weekday = 'Thứ năm';
            break;
        case 'friday':
            $weekday = 'Thứ sáu';
            break;
        case 'saturday':
            $weekday = 'Thứ bảy';
            break;
        default:
            $weekday = 'Chủ nhật';
            break;
    }
    return $weekday;
}
function convert_reverse_day($day = '', $slash = '') {
    $date_arr = explode($slash, $day);
    return $date_arr[2] . '-' 
            . str_pad($date_arr[1], 2, "0", STR_PAD_LEFT) . '-' 
            . str_pad($date_arr[0], 2, "0", STR_PAD_LEFT);
}
function text_limit($str, $limit = 10) {
	if (stripos($str, " ")) {
		$ex_str = explode(" ", $str);
		if (count($ex_str) > $limit) {
            $str_s = '';
			for ($i=0; $i < $limit; $i++) {
				$str_s .= $ex_str[$i] . " ";
			}
			return $str_s . '...';
		} else {
			return $str;
		}
	} else {
		return $str;
	}
}
function get_class_file ($mime_type = '') {
    switch ($mime_type) {
        case 'application/pdf':
            $class = 'pdf_file';
            break;
        case 'application/msword':
            $class = 'doc_file';
            break;
        case 'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
            $class = 'docx_file';
            break;
        case 'application/vnd.ms-excel':
        case 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
            $class = 'xlsx_file';
            break;
        default:
            $class = 'file_file';
            break;
    }
    return $class;
}
/* ===== helper ===== */
// send mail
function send_post_to_mail() {
    $postID = (isset($_POST['post_id'])) ? esc_attr($_POST['post_id']) : '';
    $name = (isset($_POST['name'])) ? esc_attr($_POST['name']) : '';
    $email = (isset($_POST['email'])) ? esc_attr($_POST['email']) : '';
    $message = (isset($_POST['content_mail'])) ? esc_attr($_POST['content_mail']) : '';

    $title = get_post_field('post_title', $postID);
    $content = get_post_field('post_content', $postID);

    $to = $email;
    $subject = 'Nông thôn Hà Tĩnh - Tin tức';
    $body = $message . '<hr><strong>' . $title . '</strong><br>' . $content;
    $headers = array('Content-Type: text/html; charset=UTF-8', 'Reply-To: no-reply <no-reply@testmail.com>');

    wp_mail( $to, $subject, $body, $headers );

    wp_send_json_success('true');
	die();
}
add_action( 'wp_ajax_send_post_to_mail', 'send_post_to_mail' );
add_action( 'wp_ajax_nopriv_send_post_to_mail', 'send_post_to_mail' );

function get_post_types_by_taxonomy( $tax = 'category' ) {
    global $wp_taxonomies;
    return ( isset( $wp_taxonomies[$tax] ) ) ? $wp_taxonomies[$tax]->object_type : array();
}

function post_key_filter($where, &$wp_query){
    global $wpdb;
    $compare_term = 'LIKE';
    $define_search_arr = ['post_title', 'post_excerpt'];
    // search với option Tất cả
    if ($search_term = $wp_query->get('search_all')) {
        $where_query_temp = '';
        $search_term = $wpdb->esc_like($search_term); //instead of esc_sql()
        if ($wp_query->get('compare_all') != true) {
            $text_array = explode(' ', $search_term);
        } else {
            $text_array = [$search_term];
        }
        foreach ($text_array as $key => $text_s) {
            if (trim($text_s) == '') {
                continue;
            }
            $text_s = '%' . $text_s . '%';
            $where_query = '';
            if ($key != 0) {
                $where_query_temp .= ' OR ';
            }
            foreach ($define_search_arr as $key_def => $val) {
                
                if ($key_def != 0) {
                    $where_query .= ' OR ';
                }
                $where_query .= '' . $wpdb->posts . '.' . $val . ' ' . $compare_term . ' \'' . $text_s . '\'';
            }
            $where_query .= ' OR (' . $wpdb->postmeta . '.meta_key = \'signer\' AND ' 
                        . $wpdb->postmeta . '.meta_value ' . $compare_term . ' \'' . $text_s . '\')';
            $where_query_temp .= $where_query;
        }
        if ($where_query_temp != '') {
            $where .= ' AND (' . $where_query_temp . ')';
        }
    } else {
        foreach ($define_search_arr as $val) {
            if ($search_term = $wp_query->get($val)){
                $search_term = $wpdb->esc_like($search_term); //instead of esc_sql()
                if ($wp_query->get('compare_all') != true) {
                    $text_array = explode(' ', $search_term);
                } else {
                    $text_array = [$search_term];
                }
                $where_query = '(';
                foreach ($text_array as $key => $text_s) {
                    if (trim($text_s) == '') {
                        continue;
                    }
                    $text_s = '%' . $text_s . '%';
                    if ($key != 0) {
                        $where_query .= ' OR ';
                    }
                    $where_query .= '(' . $wpdb->posts . '.' . $val . ' ' . $compare_term . ' \'' . $text_s . '\')';
                }
                $where_query .= ')';
                // $title_filter_relation = (strtoupper($wp_query->get( 'title_filter_relation'))=='OR' ? 'OR' : 'AND');
                if ($where_query != '()') {
                    $where .= ' AND ' . $where_query;
                }
            }
        }
    }
    // filter post day between
    $post_date_start = $wp_query->get('post_date_start');
    $post_date_end = $wp_query->get('post_date_end');
    if ($post_date_start) {
        $post_date_start = $wpdb->esc_like($post_date_start);
        $where .= ' AND ' . $wpdb->posts . '.post_date >= \'' . convert_reverse_day($post_date_start, '/') . '\'';
    }
    if ($post_date_end) {
        $post_date_end = $wpdb->esc_like($post_date_end);
        $where .= ' AND ' . $wpdb->posts . '.post_date <= \'' . convert_reverse_day($post_date_end, '/') . '\'';
    }
//    echo '<pre>';
//    print_r($where);
//    die();
    return $where;
}

//Custom template search
//function template_chooser($template) {
//    global $wp_query;
//    $post_type = get_query_var('post_type');
//    if ($post_type == 'laws') {
//        return locate_template('search-laws.php');
//    }
//    return $template;
//}
//add_filter('template_include', 'template_chooser');


// change radio button for category
if (current_user_can('activate_plugins') && (strstr($_SERVER['REQUEST_URI'], 'wp-admin/post-new.php') ||
        strstr($_SERVER['REQUEST_URI'], 'wp-admin/post.php'))) {
    ob_start('one_category_only');
}

function one_category_only($content) {
//    $content = str_replace('type="checkbox" ', 'type="radio" ', $content);
    return $content;
}

include 'template-parts/admin-page/p_plugin_admin.php';
(new P_Contact_Plugin())->init();

add_filter('pre_get_posts','wpb_search_filter');
function wpb_search_filter($query) {
    if (is_search() && !is_admin()) {
        $query->set('post_type', ['post', 'laws', 'faq']);
    }
    return $query;
}