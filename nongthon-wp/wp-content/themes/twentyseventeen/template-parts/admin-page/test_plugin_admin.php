<div id="ngg_page_content">
    <script type="text/javascript">
<!--

    // Listen for frame events
    jQuery(function ($) {
        if ($(this).data('ready'))
            return;

        if (window.Frame_Event_Publisher) {

            // If a new gallery is added, refresh the page
            Frame_Event_Publisher.listen_for('attach_to_post:new_gallery attach_to_post:manage_images attach_to_post:images_added', function () {
                window.location.href = window.location.href.toString();
            });
        }

        $(this).data('ready', true);
    });


    function checkAll(form)
    {
        for (i = 0, n = form.elements.length; i < n; i++) {
            if (form.elements[i].type == "checkbox") {
                if (form.elements[i].name == "doaction[]") {
                    if (form.elements[i].checked == true)
                        form.elements[i].checked = false;
                    else
                        form.elements[i].checked = true;
                }
            }
        }
    }

    function getNumChecked(form)
    {
        var num = 0;
        for (i = 0, n = form.elements.length; i < n; i++) {
            if (form.elements[i].type == "checkbox") {
                if (form.elements[i].name == "doaction[]")
                    if (form.elements[i].checked == true)
                        num++;
            }
        }
        return num;
    }

    // this function check for a the number of selected images, sumbmit false when no one selected
    function checkSelected() {

        if (typeof document.activeElement == "undefined" && document.addEventListener) {
            document.addEventListener("focus", function (e) {
                document.activeElement = e.target;
            }, true);
        }

        if (document.activeElement.name == 'post_paged')
            return true;

        var numchecked = getNumChecked(document.getElementById('editgalleries'));

        if (numchecked < 1) {
            alert('No images selected');
            return false;
        }

        actionId = jQuery('#bulkaction').val();

        switch (actionId) {
            case "resize_images":
                showDialog('resize_images', 'Resize images');
                return false;
                break;
            case "new_thumbnail":
                showDialog('new_thumbnail', 'Create new thumbnails');
                return false;
                break;
        }

        return confirm('You are about to start the bulk edit for ' + numchecked + ' galleries \n \n \'Cancel\' to stop, \'OK\' to proceed.');
    }
    //-->
    </script>
    <div class="wrap">
        <h2>Danh sách thư liên hệ</h2>
        <form class="search-form" action="" method="get">
            <p class="search-box">
                <label class="hidden" for="media-search-input">Search Images:</label>
                <input type="hidden" id="page-name" name="page" value="nggallery-manage-gallery">
                <input type="text" id="media-search-input" name="s" value="">
                <input type="submit" value="Search Images" class="button">
            </p>
        </form>
        <form id="editgalleries" class="nggform" method="POST" action="admin.php?page=nggallery-manage-gallery&amp;orderby=gid&amp;order=ASC&amp;paged=1" accept-charset="utf-8">
            <input type="hidden" id="_wpnonce" name="_wpnonce" value="971b0b5b36">
            <input type="hidden" name="_wp_http_referer" value="/wp-admin/admin.php?page=nggallery-manage-gallery">
            <input type="hidden" name="page" value="manage-galleries">

            <div class="tablenav top">

                <div class="alignleft actions">
                    <select name="bulkaction" id="bulkaction">
                        <option value="no_action">Tác vụ</option>
                        <option value="read">Đã đọc</option>
                        <option value="unread">Chưa đọc</option>
                        <option value="delete">Xóa</option>
                    </select>
                    <input name="showThickbox" class="button-secondary" type="submit" value="Áp dụng" onclick="if (!checkSelected())
                            return false;">
                </div>


                <div class="tablenav-pages one-page">
                    <span class="displaying-num">1 item</span>
                    <span class="pagination-links">
                        <a class="first-page disabled" title="Go to the first page" href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery">«</a>
                        <a class="prev-page disabled" title="Go to the previous page" href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;paged=1">‹</a>
                        <span class="paging-input">
                            <input class="current-page" title="Current page" type="text" name="post_paged" value="1" size="1"> trên <span class="total-pages">1</span>
                        </span>
                        <a class="next-page disabled" title="Go to the next page" href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;paged=1">›</a>
                        <a class="last-page disabled" title="Go to the last page" href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;paged=1">»</a>
                    </span>
                </div>
            </div>
            <table class="wp-list-table widefat" cellspacing="0">
                <?php
//                register_column_headers('contact-manage-artist', array(
//                    'cb' => '<input name="checkall" type="checkbox" onclick="" />',
//                    'title' => 'Tiêu đề',
//                    'name' => 'Tên người gửi',
//                    'email' => 'Email',
//                    'read' => 'Trạng thái',
//                    'created_date' => 'Ngày gửi',
//                    
//                ));
                add_filter( 'manage_p-contact_columns', 'set_custom_mycpt_sortable_columns' );

                function set_custom_mycpt_sortable_columns() {
                  $columns['title'] = 'custom_taxonomy';
                  $columns['read'] = 'acf_field';
                  $columns = apply_filters('p-contact_columns', $columns);
                  return $columns;
                }
                ?>
                <thead>
                    <tr>
                        <?php  print_column_headers('contact-manage-artist'); ?>
<!--                        <td id="cb" class="manage-column column-cb check-column">
                            <label class="screen-reader-text" for="cb-select-all-1">Chọn toàn bộ</label>
                            <input id="cb-select-all-1" type="checkbox">
                        </td>
                        <th scope="col" id="title" class="manage-column column-title sortable asc">
                            <a href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;orderby=gid&amp;order=desc">
                                <span>Tiêu đề</span><span class="sorting-indicator"></span>
                            </a>
                        </th>
                        <th scope="col" id="name" class="manage-column column-name">
                            Tên người gửi
                        </th>
                        <th scope="col" id="email" class="manage-column column-email">Email</th>
                        <th scope="col" id="read" class="manage-column column-read sortable desc">
                            <a href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;orderby=author&amp;order=asc">
                                <span>Trạng thái</span><span class="sorting-indicator"></span>
                            </a>
                        </th>
                        <th scope="col" id="created_date" class="manage-column column-created_date sortable asc">
                            <a href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;orderby=author&amp;order=asc">
                                <span>Ngày gửi</span><span class="sorting-indicator"></span>
                            </a>
                        </th>-->
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <td id="cb" class="manage-column column-cb check-column">
                            <label class="screen-reader-text" for="cb-select-all-1">Chọn toàn bộ</label>
                            <input id="cb-select-all-1" type="checkbox">
                        </td>
                        <th scope="col" id="title" class="manage-column column-title sortable asc">
                            <a href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;orderby=gid&amp;order=desc">
                                <span>Tiêu đề</span><span class="sorting-indicator"></span>
                            </a>
                        </th>
                        <th scope="col" id="name" class="manage-column column-name">
                            Tên người gửi
                        </th>
                        <th scope="col" id="email" class="manage-column column-email">Email</th>
                        <th scope="col" id="read" class="manage-column column-read sortable desc">
                            <a href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;orderby=author&amp;order=asc">
                                <span>Trạng thái</span><span class="sorting-indicator"></span>
                            </a>
                        </th>
                        <th scope="col" id="created_date" class="manage-column column-created_date sortable asc">
                            <a href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;orderby=author&amp;order=asc">
                                <span>Ngày gửi</span><span class="sorting-indicator"></span>
                            </a>
                        </th>
                    </tr>
                </tfoot>
                <tbody id="the-list">
                    <?php
                    global $wpdb;
                    $sql_str = 'SELECT * FROM wp_p_contact ORDER BY created_date DESC';
                    $list_contact = $wpdb->get_results($sql_str, ARRAY_A);
                    if ($list_contact) {
                        foreach ($list_contact as $key => $contact) {
                            echo '<tr id="contact-' . $contact['id'] . '">
                                <th scope="row" class="column-cb check-column">
                                    <input name="doaction[]" type="checkbox" value="1">
                                </th>
                                <td class="title column-title">
                                    <a href="admin.php?page=p-contact&amp;contact_id=' . $contact['id'] . '" class="edit" title="Chi tiết">'
                                        . $contact['title'] .
                                    '</a>
                                </td>
                                <td class="name column-name">' . $contact['name'] . '</td>
                                <td class="email column-email">' . $contact['email'] . '</td>
                                <td class="read column-read">' . ($contact['read_status'] == 1 ? 'Đã đọc' : 'Chưa đọc') . '</td>
                                <td class="created_date column-created_date">' . date('d-m-Y', strtotime($contact['created_date'])) . '</td>
                            </tr>';
                        }
                    }
                    ?>
                </tbody>
            </table>
            <div class="tablenav bottom">
                <div class="tablenav-pages one-page">
                    <span class="displaying-num">1 item</span>
                    <span class="pagination-links">
                        <a class="first-page disabled" title="Go to the first page" href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery">«</a>
                        <a class="prev-page disabled" title="Go to the previous page" href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;paged=1">‹</a>
                        <span class="paging-input">1 trên <span class="total-pages">1</span></span>
                        <a class="next-page disabled" title="Go to the next page" href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;paged=1">›</a>
                        <a class="last-page disabled" title="Go to the last page" href="http://dev5.local/wp-admin/admin.php?page=nggallery-manage-gallery&amp;paged=1">»</a>
                    </span>
                </div>
            </div>
        </form>
    </div>

</div>