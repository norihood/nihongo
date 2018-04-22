<?php
$wp_list_table = new _P_List_Table($page_slug);
?>
<div id="ngg_page_content">
    <script type="text/javascript">
<!--

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
    //-->
    </script>
    <div class="wrap">
        <h2>Danh sách báo lỗi</h2>
        <form id="editgalleries" class="nggform" method="GET" action="" accept-charset="utf-8">
            <input type="hidden" name="page" value="<?=$page_slug?>">
            <input type="hidden" name="post_type" value="<?=MUSIC_POST_TYPE?>">
            <div class="tablenav top">
                <div class="alignleft actions">
                    <select name="filter_error" id="filter_error">
                        <option value="all">Tất cả</option>
                        <option value="read" <?php echo (!empty($_GET['filter_error']) && $_GET['filter_error'] == 'read') ? 'selected' : ''?>>Đã đọc</option>
                        <option value="unread" <?php echo (!empty($_GET['filter_error']) && $_GET['filter_error'] == 'unread') ? 'selected' : ''?>>Chưa đọc</option>
                    </select>
                    <input name="btn-submit" class="button-secondary" type="submit" value="Lọc">
                </div>
            </div>
            <table class="wp-list-table widefat" cellspacing="0">
                <thead>
                    <tr>
                        <?php $wp_list_table->print_column_headers(true); ?>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <?php $wp_list_table->print_column_headers(false); ?>
                    </tr>
                </tfoot>
                <tbody id="the-list">
                    <?php
                    if ($list_error) {
                        foreach ($list_error as $key => $error) {
                            if ($error['type_term'] == 'album') {
                                $term = get_term( $error['term_id']);
                                $title = $term->name;
                            } else {
                                $post = get_post($error['term_id']);
                                $title = $post->post_title;
                            }
                            echo '<tr id="error-' . $error['id'] . '">
                                <th scope="row" class="column-cb check-column">
                                    <input name="doaction[]" type="checkbox" value="' . $error['id'] . '">
                                </th>
                                <td class="title column-album">
                                    <a href="edit.php?post_type=' . MUSIC_POST_TYPE . '&page=' . $page_slug . '&amp;error_id=' . $error['id'] . '" class="edit" title="Chi tiết">'
                                        . $title .
                                    '</a>
                                </td>
                                <td class="title column-name">'
                                        . $error['name'] .
                                '</td>
                                <td class="name column-reason">' . $error['reason_select'] . '</td>
                                <td class="read column-read">' . ($error['read_status'] == 1 ? 'Đã đọc' : 'Chưa đọc') . '</td>
                                <td class="created_date column-created_date">' . date('d-m-Y', strtotime($error['created_date'])) . '</td>
                            </tr>';
                        }
                    } else {
                        echo '<tr><td colspan="6" align="center"><strong>Không có báo cáo lỗi nào.</strong></td></tr>';
                    }
                    ?>
                </tbody>
            </table>
        </form>
    </div>

</div>
<?php
class _P_List_Table extends WP_List_Table {
	var $_screen;
	var $_columns;

	function __construct($screen)
	{
		if ( is_string( $screen ) )
			$screen = convert_to_screen( $screen );

		$this->_screen = $screen;
		$this->_columns = array() ;

		add_filter( 'manage_' . $screen->id . '_columns', array( &$this, 'get_columns' ), 0 );
	}

	function get_column_info() {
		$columns = get_column_headers( $this->_screen );
		$hidden = get_hidden_columns( $this->_screen );
		$_sortable = $this->get_sortable_columns();

		foreach ( $_sortable as $id => $data ) {
			if ( empty( $data ) )
				continue;

			$data = (array) $data;
			if ( !isset( $data[1] ) )
				$data[1] = false;

			$sortable[$id] = $data;
		}

		return array( $columns, $hidden, $sortable, null );
	}

    // define the columns to display, the syntax is 'internal name' => 'display name'
	function get_columns() {
    	$columns = array(
            'cb' => '<input name="checkall" type="checkbox" onclick="" />',
            'album' => 'Tên Album/ bài hát',
            'name' => 'Tên người gửi',
            'reason' => 'Nguyên nhân',
            'read' => 'Trạng thái',
            'created_date' => 'Ngày gửi',
        );

    	$columns = apply_filters(P_Music_Error::CAT_ERROR . '_columns', $columns);

    	return $columns;
	}

	function get_sortable_columns() {
		return array(
			'album'   => 'album',
            'read' => 'read_status',
			'created_date'   => 'created_date'
		);
	}
}
?>
