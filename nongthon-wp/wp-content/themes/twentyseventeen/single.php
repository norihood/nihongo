<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */
get_header();
?>
<div class="span-13 contentcolumn">
    <?php
    /* Start the Loop */
    while (have_posts()) : the_post();
        $arr_breadcrumb = array();
        $cat_level2     = get_the_category();
        if ($cat_level2) {
            $arr_breadcrumb[] = array(
                'name' => $cat_level2[0]->name,
                'url'  => get_category_link($cat_level2[0]->term_id)
            );

            $parent = $cat_level2[0]->parent;
            while ($parent != CATEGORY_NEWS_ID) {
                //load object for parent category
                $parent_obj = get_category($parent, false);
                if ($parent_obj) {
                    $arr_breadcrumb[] = array(
                        'name' => $parent_obj->name,
                        'url'  => get_category_link($parent_obj->term_id)
                    );
                    $parent           = $parent_obj->parent;
                }
                else {
                    break;
                }
            }
        }
        $arr_breadcrumb = array_reverse($arr_breadcrumb);
        ?>

        <h3 class="breakcolumn">
            <a title="TRANG CHỦ" href="<?=get_home_url()?>"><img src="<?= get_template_directory_uri() ?>/assets/images/home.png" alt="TRANG CHỦ"></a>
            <span class="breakcolumn">»</span>
            <?php foreach ($arr_breadcrumb as $key => $cat_breadcrumb) {
                if ($key != 0) {
                    echo '<span class="breakcolumn">»</span>';
                }
                echo '<a href="' . $cat_breadcrumb['url'] . '" title="' . mb_strtoupper($cat_breadcrumb['name']) . '">' . mb_strtoupper($cat_breadcrumb['name']) . '</a>';
            } ?>
        </h3>
        <br><img alt="" src="<?= get_template_directory_uri() ?>/assets/images/bannerhcm.jpg" style="width: 540px; height: 71px; ">
        <div class="news_column" style="padding:0 !important;margin:0 !important;">
            <div id="news_detail">
                <h1><?=get_the_title()?></h1>
                <span class="time"><?=get_thu(date('l', get_post_time()))?> - <?=date('d/m/Y H:i', get_post_time())?></span>
                <div class="control">
                    <ul>
                        <li>
                            <a rel="nofollow" class="sendmail" title="Gửi bài viết qua email" href="javascript:void(0);"></a>
                        </li>
                        <li>
                            <a class="print" title="In ra" href="javascript: void(0)" onclick="NewWindow(&#39;/index.php/vi/news/print/Nhieu-nguoi-cung-quan-tam/Go-kho-nhung-van-de-nong-tai-phien-doi-thoai-Thu-tuong-va-nong-dan-77444/&#39;,&#39;&#39;,&#39;840&#39;,&#39;768&#39;,&#39;yes&#39;);return false"></a>
                        </li>
                        <li>
                            <a class="savefile" title="Lưu bài viết này" href="http://nongthonmoihatinh.vn/index.php/vi/news/savefile/Nhieu-nguoi-cung-quan-tam/Go-kho-nhung-van-de-nong-tai-phien-doi-thoai-Thu-tuong-va-nong-dan-77444/"></a>
                        </li>
                    </ul>
                </div>
                <div style="clear: both;"></div>
                <div id="hometext">
                    <?php echo get_post_meta(get_the_ID(), 'description', true); ?>
                </div>
                <div class="bodytext">
                    <?php echo the_content(); ?>
                </div>
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox_0xmt"></div>
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox_n4hj"></div>
                <div>Click để đánh giá bài viết: <?php if(function_exists('the_ratings')) { the_ratings(); } ?></div>
                
            </div>
            <div class="keywords">
                <strong>Từ khóa: </strong>
                <?php $tags_arr = wp_get_post_tags(get_the_ID());
                if ($tags_arr) {
                    foreach ($tags_arr as $tag) {
                        echo '<a title="' . $tag->name . '" href="' . get_tag_link($tag->term_id) . '">
                                <em>' . $tag->name . '</em>
                            </a>';
                    }
                }
                ?>
            </div>
            <div id="idcomment">
                <ul class="control">
                    <li>
                        <a onclick="nv_show_hidden(&#39;showcomment&#39;,2);" href="javascript:void(0);"><img src="<?=get_template_directory_uri() ?>/assets/images/comment.png" alt="Show comment"><strong>Xem phản hồi</strong></a>
                    </li>
                    <li>
                        -- <a onclick="nv_show_hidden(&#39;formcomment&#39;,2);" href="javascript:void(0);"><img alt="Add comment" src="<?=get_template_directory_uri() ?>/assets/images/comment_add.png"><strong>Gửi phản hồi</strong></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
                <?php comments_template( '', true ); ?>
            </div>
            <script type="text/javascript">
                nv_show_hidden('formcomment',2);
            </script>
            <?php
            function list_post_related($arr_posts) {
            	$str_list = '';
            	if ($arr_posts) {
	            	foreach( $arr_posts as $post ) {
			        $str_list .= '<li>
				        	<a href="' . get_permalink($post->ID) . '" rel="bookmark" title="' . $post->post_title . '">' . $post->post_title . '</a>
				            <span class="date">(' . date('d/m/Y', strtotime($post->post_date)) . ')</span>
			        	</li>';
			        }
	            }
	            return $str_list;
	        }
	        $related_newer = get_posts( array( 
            	'category__in' => wp_get_post_categories(get_the_ID()),
            	'numberposts' => 10,
            	'post__not_in' => array($post->ID),
            	'date_query' => array(
			        'after' => date('Y-m-d H:i:s', get_post_time()) 
			    )
        	));
			if( $related_newer ) {
				echo '<p class="related_post">
	                <strong>Những tin mới hơn</strong>
	            </p>
				<ul class="related">';
				echo list_post_related($related_newer);
				echo '</ul>';
			}
            $related_older = get_posts( array( 
            	'category__in' => wp_get_post_categories(get_the_ID()),
            	'numberposts' => 10,
            	'post__not_in' => array($post->ID),
            	'date_query' => array(
			        'before' => date('Y-m-d H:i:s', get_post_time()) 
			    )
        	));
			if( $related_older ) {
				echo '<p class="related_post">
	                <strong>Những tin cũ hơn</strong>
	            </p>
				<ul class="related">';
				echo list_post_related($related_older);
				echo '</ul>';
			}
            ?>
        </div>
        &nbsp;
        
    <?php
    endwhile; // End of the loop.
    ?>
</div>
<!-- right sidebar -->
<?php get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<style>
    label, input { display:block; }
    input.text, textarea { margin-bottom:12px; width:95%; padding: .4em; }
    fieldset { padding:0; border:0; margin-top:25px; }
    h1 { font-size: 1.2em; margin: .6em 0; }
    div#users-contain { width: 350px; margin: 20px 0; }
    div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
    div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
    .validateTips { border: 1px solid transparent; padding: 0.3em; }
  </style>
<div id="dialog-send-mail" title="Gửi bài viết qua email">
	<p class="validateTips"></p>
<script type="text/javascript">
var response_captcha;
	function recaptchaCallback() {
		response_captcha = grecaptcha.getResponse();
		alert(response_captcha);
	};
</script>
	<form>
		<fieldset>
			<label for="name">Tên của bạn <span>*</span></label>
			<input type="text" name="name" id="name" value="" class="text ui-widget-content ui-corner-all">
			<label for="email">E-mail người nhận <span>*</span></label>
			<input type="text" name="email" id="email" value="" class="text ui-widget-content ui-corner-all">
			<label for="content-mail">Nội dung</label>
			<textarea name="content_mail" rows="4" id="content-mail" class="text ui-widget-content ui-corner-all"></textarea>
			<br>
			<div class="g-recaptcha" data-sitekey="6LffzkkUAAAAAOSB3XMwNGhMieqhNGP7uNv0MhAF" data-callback="recaptchaCallback"></div>
			<!-- Allow form submission with keyboard without duplicating the dialog button -->
			<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
		</fieldset>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		var dialog, form,
 
		// From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
		emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
		name = $( "#name" ),
		email = $( "#email" ),
		allFields = $( [] ).add( name ).add( email ),
		tips = $( ".validateTips" );

		function updateTips( t ) {
			tips
			.append( '<p>' + t + '</p>' )
			.addClass( "ui-state-highlight" );
			setTimeout(function() {
				tips.removeClass( "ui-state-highlight", 1500 );
			}, 500 );
		}

		function resetTips() {
			tips.html('');
		}

		function checkLength( o, n, min, max ) {
			if ( o.val().length > max || o.val().length < min ) {
				o.addClass( "ui-state-error" );
				updateTips( "Length of " + n + " must be between " +
					min + " and " + max + "." );
				return false;
			} else {
				return true;
			}
		}

		function checkRegexp( o, regexp, n ) {
			if ( !( regexp.test( o.val() ) ) ) {
				o.addClass( "ui-state-error" );
				updateTips( n );
				return false;
			} else {
				return true;
			}
		}

		function addUser() {
			grecaptcha.reset();
			resetTips();
			allFields.removeClass( "ui-state-error" );
			
			var length_name = checkLength( name, "Tên", 3, 16 ),
				format_email = checkRegexp( email, emailRegex, "Email không đúng định dạng." );
			
			if ( length_name && format_email ) {
				if (response_captcha == ''){
                  	alert('error');
                  	return false;
                } else {
                	alert('OK');
                }
                return true;
				dialog.dialog( "close" );
			}
			return false;
		}
		dialog = $( "#dialog-send-mail" ).dialog({
			autoOpen: false,
			height: 400,
			width: 350,
			modal: true,
			buttons: {
				"Gửi": addUser
			},
			close: function() {
				form[ 0 ].reset();
				grecaptcha.reset();
				resetTips();
				allFields.removeClass( "ui-state-error" );
			}
	    });
		form = dialog.find( "form" ).on( "submit", function( event ) {
	      	event.preventDefault();
	      	addUser();
	    });
	 
	    $( ".sendmail" ).on( "click", function() {
	      	dialog.dialog( "open" );
	    });
	})
</script>
<?php
get_footer();
?>