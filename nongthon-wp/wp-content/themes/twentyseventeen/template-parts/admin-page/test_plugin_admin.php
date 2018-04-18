<?php
global $wpdb;
$wp_list_table = new _P_List_Table('p-contact');

if (!empty($_GET['order']) && in_array(strtoupper($_GET['order']), array('DESC', 'ASC'))) {
    $order = $_GET['order'];
} else {
    $order = 'DESC';
}
if (!empty($_GET['orderby']) && in_array($_GET['orderby'], array('title', 'read_status', 'created_date'))) {
    $orderby = $_GET['orderby'];
} else {
    $orderby = 'id';
}
$where = ' WHERE 1=1 ';
if (!empty($_GET['filter_contact']) && in_array(strtolower($_GET['filter_contact']), array('read', 'unread'))) {
    $where .= ' AND read_status = ';
    $filter = $_GET['filter_contact'];
    switch ($filter) {
        case 'read':
            $where .= '1';
            break;
        case 'unread':
            $where .= '0';
            break;
        default:break;
    }
}
if (!empty($_GET['s'])) {
    $search = $_GET['s'];
    $where .= sprintf(' AND (title LIKE \'%%s%\' OR content LIKE \'%%s%\' OR name LIKE \'%%s%\' OR email \'%%s%\' OR phone LIKE \'%%s%\') ',
                array($search, $search, $search, $search, $search));
}
$sql_str = 'SELECT * FROM wp_p_contact ' . $where . ' ORDER BY ' . $orderby . ' ' . $order;
$list_contact = $wpdb->get_results($sql_str, ARRAY_A);
?>
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
                <label class="hidden" for="media-search-input">Tìm liên lạc:</label>
                <input type="hidden" id="page-name" name="page" value="p-contact">
                <input type="text" id="media-search-input" name="s" value="">
                <input type="submit" value="Tìm kiếm" class="button">
            </p>
        </form>
        <form id="editgalleries" class="nggform" method="GET" action="" accept-charset="utf-8">
            <input type="hidden" name="page" value="p-contact">
            <div class="tablenav top">
                <div class="alignleft actions">
                    <select name="filter_contact" id="filter_contact">
                        <option value="all">Tất cả</option>
                        <option value="read" <?php echo ($filter == 'read') ? 'selected' : ''?>>Đã đọc</option>
                        <option value="unread" <?php echo ($filter == 'unread') ? 'selected' : ''?>>Chưa đọc</option>
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
                    if ($list_contact) {
                        foreach ($list_contact as $key => $contact) {
                            echo '<tr id="contact-' . $contact['id'] . '">
                                <th scope="row" class="column-cb check-column">
                                    <input name="doaction[]" type="checkbox" value="' . $contact['id'] . '">
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
            'title' => 'Tiêu đề',
            'name' => 'Tên người gửi',
            'email' => 'Email',
            'read' => 'Trạng thái',
            'created_date' => 'Ngày gửi',
        );

    	$columns = apply_filters('p-contact_columns', $columns);

    	return $columns;
	}

	function get_sortable_columns() {
		return array(
			'title'   => 'title',
            'read' => 'read_status',
			'created_date'   => 'created_date'
		);
	}
}
?>