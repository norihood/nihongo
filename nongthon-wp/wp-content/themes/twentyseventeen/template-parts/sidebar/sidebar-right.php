<div class="span-6 last right-sidebar">
    <?php if (isset($page_laws) && $page_laws == true) { ?>
    <?php
    $args=array(
      'object_type' => array(VAN_BAN_POST_TYPE) 
    ); 

    $output = 'objects'; // or objects
    $operator = 'and'; // 'and' or 'or'
    $taxonomies=get_taxonomies($args,$output,$operator);
    ?>
    <div class="box silver">
        <h3 class="header"><strong>•</strong>Menu Văn Bản</h3>
        <link rel="stylesheet" href="<?=get_template_directory_uri()?>/assets/css/jquery.treeview.css">
        <script src="<?=get_template_directory_uri()?>/assets/js/jquery.cookie.js" type="text/javascript"></script>
        <script src="<?=get_template_directory_uri()?>/assets/js/jquery.treeview.min.js" type="text/javascript"></script>
        <script src="<?=get_template_directory_uri()?>/assets/js/accordion.js" type="text/javascript"></script>
        <script type="text/javascript">
            ddaccordion.init({
                headerclass: "silverheader", //Shared CSS class name of headers group
                contentclass: "submenu", //Shared CSS class name of contents group
                revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
                mouseoverdelay: 230, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
                collapseprev: true, //Collapse previous content (so only one open at any time)? true/false
                defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc] [] denotes no content
                onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
                animatedefault: false, //Should contents open by default be animated into view?
                persiststate: true, //persist state of opened contents within browser session?
                toggleclass: ["", "selected"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
                togglehtml: ["", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
                animatespeed: "normal", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
                oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
                    //do nothing
                },
                onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
                    //do nothing
                }
            })
        </script>
        <style type="text/css">
        .submenu{display: none}
        a.hiddenajaxlink{display: none}
        </style>
        <div class="applemenu">
            <?php
            if ($taxonomies) {
                foreach ($taxonomies  as $taxonomy ) {
                    echo '<div class="silverheader"><a href="#">' . $taxonomy->label . '</a></div>';
                    $taxonomyName = $taxonomy->name;
                    $parent_terms = get_terms( $taxonomyName, array( 'parent' => 0, 'hide_empty' => false ) ); 
                    if ($parent_terms) {
                        echo '<div style="" contentindex="0c" class="submenu clearfix">
                            <ul id="browser_organ_' . $taxonomy->name . '" class="filetree treeview">';
                        foreach ($parent_terms as $key => $pterm) {
                            echo '<li>
                                <span class="folder"><a href="' . get_term_link( $pterm ) . '"> ' . $pterm->name . ' </a></span>
                            </li>';
                        }
                        echo '</ul>
                            <div class="divscroll">

                            </div>
                            <script type="text/javascript">
                                $("#browser_organ_' . $taxonomy->name . '").treeview({
                                    persist: "cookie",
                                    collapsed: true,
                                    animated:"normal",
                                    unique: true
                                });
                            </script>   
                        </div>';
                    }
                }
            }
            ?>

        </div>
    </div>
    <script type="text/javascript">
    $(document).ready(function() {
        $("form").submit(function() {
            $(this).find(':input[value=""]').attr("disabled", "disabled");

            return true; // ensure form still submits
        });
    });
    </script>
<?php } // end if page-laws.php ?>
    <div class="box silver">
        <h3 class="header"><strong>•</strong>Tiêu điểm</h3>
        <table id="aaa" width="100%" border="0" cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                    <td>
                        <marquee behavior="scroll" align="center" direction="up" height="220" scrollamount="1" scrolldelay="5" onmouseover="this.stop();" onmouseout="this.start();">
                        <?php 
                        $tieu_diem_args = array( 'numberposts' => 5, 'category_name' => 'tieu-diem' );
						$post_tieu_diem = get_posts( $tieu_diem_args );
						if (!empty($post_tieu_diem)) {
							echo '<ul class="tieu-diem">';
							foreach( $post_tieu_diem as $tieu_diem_key => $tieu_diem ) {
								echo '<li>
									<a href="' . get_permalink($tieu_diem->ID) . '"><img src="' . get_template_directory_uri() . '/assets/images/new.gif" width="31" height="16">' . $tieu_diem->post_title . '</a>
								</li>';
							}
							echo '</ul>';
						}
						

						?>
                        </marquee>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="box silver">
        <h3 class="header"><strong>•</strong>Văn bản mới</h3>
        <marquee behavior="scroll" align="center" direction="up" height="200" scrollamount="1" scrolldelay="2" onmouseover="this.stop()" onmouseout="this.start()">
            <div class="sliver2">
            	<?php
        		// get van ban moi
		    	$args = array(
			       'posts_per_page' => 5,
			       'post_status' => 'publish',
			       'post_type' => VAN_BAN_POST_TYPE
			    );
			    $van_ban_moi = get_posts($args);
			    if (!empty($van_ban_moi)) {
			    	foreach ($van_ban_moi as $key => $vb_moi) {
			    		echo '<a href="' . get_permalink($vb_moi->ID) . '">&nbsp;&nbsp;<img src="' . get_template_directory_uri() . '/assets/images/file.png">
                <strong style="color:red">&nbsp;' . $vb_moi->post_title . '</strong>  <img src="' . get_template_directory_uri() . '/assets/images/new.gif" height="14"><br>
                &nbsp;&nbsp;Tên:<span style="align:center; color:blue; font-size:11px">&nbsp;(' . text_limit($vb_moi->post_excerpt, 50) . ')</span></a><br>
                <span style="color:#666; font-size:11px">&nbsp;&nbsp;Ngày BH:&nbsp;(' . date('d/m/Y', strtotime($vb_moi->post_date)) . ')</span> <br>';
			    	}
			    }
            	?>
            </div>
        </marquee>
    </div>
    <a href="/hoi-dap/">
    	<img alt="" src="<?=get_template_directory_uri()?>/assets/images/hd.png" style="width: 240px; height: 115px;">
	</a>
	<br>
    <a href="/music/">
    	<img alt="" src="<?=get_template_directory_uri()?>/assets/images/hatvenongthonmoi.png" style="width: 240px; height: 140px;">
	</a>
	<br>
	<?=adrotate_group('2')?>
	<div class="box silver">
        <h3 class="header"><strong>•</strong>Thư viện Hình ảnh</h3>
        <div id="slider">
            <ul id="album_img">
                <?php
                global $nggdb;
                $posts = get_posts('name=' . ALBUM_PAGE_SLUG . '&post_type=page');
                $mypost = ( ! empty($posts) ) ? array_pop($posts) : false;
                $album_id_meta = $mypost ? get_field('album_id', $mypost->ID) : 1;
                $img_ids = $nggdb->get_ids_from_gallery($album_id_meta);
                foreach ($img_ids as $img_id) {
                    $img = $nggdb->find_image($img_id);
                    echo '<li >
                        <a class="lightbox1" title="" href="' . $img->get_permalink() . '"><img src="' . $img->get_permalink() . '" alt="' . $img->description . '" width="240px" height="180px" border="0"></a>
                    </li>';
                }
                ?>
            </ul>
        </div>
    </div>
    <div class="box silver">
        <h3 class="header"><strong>•</strong>Thăm dò ý kiến</h3>
        <?php if ( function_exists( 'vote_poll' ) && ! in_pollarchive() ): ?>
		        <div class="p_polls">
		        	<?php get_poll(1);?>
		        </div>
		        <?php //display_polls_archive_link(); ?>
		<?php endif; ?>
    </div>
    <div class="box silver">
        <h3 class="header"><strong>•</strong>Thời tiết - Tỷ giá</h3>
        <!--<iframe title="Thời tiết" src="<?=get_template_directory_uri()?>/weather/thoitiet.html" width="240px" height="228px" frameborder="0" scrolling="no"></iframe>-->
            <?php echo do_shortcode('[hk_weather]'); ?>
        <br>
        <?php
        $data_ty_gia = getExchangeRatesVCB();
        $data_vang = tygiavang();
        ?>
        <h3 style="text-align:center;">Tỷ giá vàng - ngoại tệ (VNĐ)</h3>
        <table class="ty_gia" cell-padding="0">
            <tr>
                <th></th>
                <th>
                    Giá mua
                </th>
                <th>
                    Giá bán
                </th>
                
            </tr>
            <tr>
                <td>
                    USD
                </td>
                <td>
                    <?=$data_ty_gia['USD']['buy']?>
                </td>
                <td>
                    <?=$data_ty_gia['USD']['sell']?>
                </td>
                
            </tr>
            <tr>
                <td>
                    EUR
                </td>
                <td>
                    <?=$data_ty_gia['EUR']['buy']?>
                </td>
                <td>
                    <?=$data_ty_gia['EUR']['sell']?>
                </td>
                
            </tr>
            <tr>
                <td>
                    Vàng
                </td>
                <td>
                    <?=$data_vang->ratelist->city[1]->item['buy']?>
                </td>
                <td>
                    <?=$data_vang->ratelist->city[1]->item['sell']?>
                </td>
            </tr>
        </table>
        <br>
        <table class="ty_gia" cell-padding="0">
            <tr>
                <th width="40%">
                    Kết quả xổ số
                </th>
                <td>
                    <a href="javascript:window.open('http://www.kqxs.vn/', 'Kết quả xổ số', 'width=600,height=700');">Xem</a>
                </td>
            </tr>
            <tr>
                <th>
                    Thị trường chứng khoáng
                </th>
                <td>
                    <a href="javascript:window.open('http://banggia2.ssi.com.vn/', 'Thị trường chứng khoáng', 'width=800,height=700');">Xem</a>
                </td>
            </tr>
            <tr>
                <th>
                    Liên hệ
                </th>
                <td>
                    <p>Email: <a href="mailto:nongthonhatinh@gmail.com">Gmail</a> | <a href="mailto:nongthonhatinh@yahoo.com">Yahoo</a></p>
                    <p>Mobile: 0904444357</p>
                </td>
            </tr>
        </table>
    </div>
</div><!-- right sidebar -->