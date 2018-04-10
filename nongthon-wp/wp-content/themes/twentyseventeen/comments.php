<?php
/**
 * The template for displaying comments
 *
 * This is the template that displays the area of the page that contains both the current comments
 * and the comment form.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

/*
 * If the current post is protected by a password and
 * the visitor has not yet entered the password we will
 * return early without loading the comments.
 */
if ( post_password_required() ) {
	return;
}
?>
<?php
function bcd_comment($comment, $args, $depth)    {
    $GLOBALS['comment'] = $comment; ?>
    <li <?php comment_class();?> id="li-comment-<?php comment_ID();?>">
        <div id="comment-<?php comment_ID();?>" class="clearfix comment-body">
            <div class="comment-author vcard">
                <?php printf(__('<strong>%s</strong> (%s) :<br />'), get_comment_author_link(), get_comment_date()); ?>
            </div><!-- end comment autho vcard-->
            <div class="commentcontent"><?php comment_text(); ?></div>
            <?php // reply link
            //comment_reply_link(array_merge($args,array('depth' => $depth, 'max_depth'=> $args['max_depth'])));
            ?>
        </div><!--end #comment-author-vcard-->
<?php }?>
<div id="comments" class="comments-area">
    <div id="showcomment">
        <?php if (have_comments()) : ?>
            <h3 id="comments"><?php comments_number('Chưa có phản hồi', 'Một phản hồi', '% phản hồi'); ?></h3>
            <ol class="commentlist">
                <?php wp_list_comments(array('callback' => 'bcd_comment')); ?>
            </ol>
        <?php else : // this is displayed if there are no comments so far ?>
            <?php if (comments_open()) : ?>
                <!-- If comments are open, but there are no comments. -->
            <?php else : // comments are closed ?>
                <!-- If comments are closed. -->
                <p class="nocomments">Phản hồi đã đóng.</p>
            <?php endif; ?>
        <?php endif; ?>
    </div>
    <div id="formcomment">
        <?php
        if ( ! comments_open() && get_comments_number() && post_type_supports( get_post_type(), 'comments' ) ) : ?>
            <p class="no-comments"><?php _e( 'Phản hồi đã đóng.', 'twentyseventeen' ); ?></p>
        <?php
        endif;
        comment_form(); 
        ?>
    </div>
</div><!-- #comments -->
