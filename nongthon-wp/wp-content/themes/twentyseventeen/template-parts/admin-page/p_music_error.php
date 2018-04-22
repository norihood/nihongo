<?php

class P_Music_Error {
    const CAT_ERROR = 'music-error';
    protected $views = array();
    function init () {
        add_action( 'admin_menu', array($this, 'my_admin_menu'));
    }
    function my_admin_menu() {
        $view_hook_name = add_submenu_page( 'edit.php?post_type=' . MUSIC_POST_TYPE, 'Báo cáo lỗi',
                'Báo cáo lỗi', 'manage_options', self::CAT_ERROR, array($this, 'func_error') );
    }
    function func_error() {
        global $wpdb;
        $list_error = $this->get_data_error();
        $page_slug = self::CAT_ERROR;
        if (!empty($_GET['error_id'])) { // page detail
            if (empty($list_error)) {
                wp_redirect( admin_url( 'edit.php?post_type=' . MUSIC_POST_TYPE . '&page=' . $page_slug ), 301 );
                exit;
            } else {
                $error = $list_error[0];
                $wpdb->update( 'wp_p_music_error', array( 'read_status' => 1 ),
                        array( 'id' => $_GET['error_id'] ) );
            }
            require_once 'detail_error_music.php';
        } else {
            require_once 'list_error_music.php';
        }
    }

    function get_data_error() {
        global $wpdb;

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
        if (!empty($_GET['filter_error']) && in_array(strtolower($_GET['filter_error']), array('read', 'unread'))) {
            $where .= ' AND read_status = ';
            $filter = $_GET['filter_error'];
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
//        if (!empty($_GET['s'])) {
//            $search = $_GET['s'];
//            $where .= sprintf(' AND (name LIKE \'%%s%\' OR content LIKE \'%%s%\' OR name LIKE \'%%s%\' OR email \'%%s%\' OR phone LIKE \'%%s%\') ',
//                        array($search, $search, $search, $search, $search));
//        }
        if (!empty($_GET['error_id'])) {
            $where .= ' AND id = \'' . $_GET['error_id'] . '\' ';
        }
        $sql_str = 'SELECT * FROM wp_p_music_error ' . $where . ' ORDER BY ' . $orderby . ' ' . $order;
        $list_error = $wpdb->get_results($sql_str, ARRAY_A);
        return $list_error;
    }
}

