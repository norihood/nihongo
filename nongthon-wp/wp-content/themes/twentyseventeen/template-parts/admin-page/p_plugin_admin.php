<?php

class P_Contact_Plugin {
    const CAT_CONTACT = 'p-contact';
    const CAT_NONGTHON = 'nong-thon-moi';
    const CAT_HANHCHINH = 'hanh-chinh';
    const CAT_DIEUPHOI = 'dieu-phoi';
    public static $categories_dept = array(
        self::CAT_NONGTHON => 'Nông thôn mới',
        self::CAT_HANHCHINH => 'Phòng hành chính / tổng hợp',
        self::CAT_DIEUPHOI => 'Phòng điều phối, nghiệp vụ'
    );
    protected $views = array();
    function init () {
        add_action( 'admin_menu', array($this, 'my_admin_menu'));
    }
    function my_admin_menu() {
        $view_hook_name = add_menu_page( 'Danh sách liên hệ', 'Liên hệ', 'manage_options', self::CAT_CONTACT,
                array($this, 'func_contact'), 'dashicons-tickets', 6  );
        $this->views[$view_hook_name] = 'contact';

        $view_hook_name = add_submenu_page( self::CAT_CONTACT, self::$categories_dept[self::CAT_NONGTHON],
                self::$categories_dept[self::CAT_NONGTHON], 'manage_options', self::CAT_NONGTHON, array($this, 'func_contact') );
        $this->views[$view_hook_name] = self::CAT_NONGTHON;

        $view_hook_name = add_submenu_page( self::CAT_CONTACT, self::$categories_dept[self::CAT_HANHCHINH],
                self::$categories_dept[self::CAT_HANHCHINH], 'manage_options', self::CAT_HANHCHINH, array($this, 'func_contact') );
        $this->views[$view_hook_name] = self::CAT_HANHCHINH;

        $view_hook_name = add_submenu_page( self::CAT_CONTACT, self::$categories_dept[self::CAT_DIEUPHOI],
                self::$categories_dept[self::CAT_DIEUPHOI], 'manage_options', self::CAT_DIEUPHOI, array($this, 'func_contact') );
        $this->views[$view_hook_name] = self::CAT_DIEUPHOI;
    }
    function func_contact() {
        global $wpdb;
        $current_views = $this->views[current_filter()];
        if (!array_key_exists($current_views, self::$categories_dept)) {
            $current_views = '';
        }
        $list_contact = $this->get_data_contact($current_views);
        switch ($current_views) {
            case self::CAT_NONGTHON:
                $heading_contact = 'Bộ phận Nông thôn mới';
                $page_slug = self::CAT_NONGTHON;
                break;
            case self::CAT_HANHCHINH:
                $heading_contact = 'Bộ phận Phòng hành chính / tổng hợp';
                $page_slug = self::CAT_HANHCHINH;
                break;
            case self::CAT_DIEUPHOI:
                $heading_contact = 'Bộ phận Phòng điều phối, nghiệp vụ';
                $page_slug = self::CAT_DIEUPHOI;
                break;
            default:
                $heading_contact = 'Danh sách liên hệ';
                $page_slug = self::CAT_CONTACT;
                break;
        }
        if (!empty($_GET['contact_id'])) { // page detail
            if (empty($list_contact)) {
                wp_redirect( admin_url( 'admin.php?page=' . $page_slug ), 301 );
                exit;
            } else {
                $contact = $list_contact[0];
                $wpdb->update( 'wp_p_contact', array( 'read_status' => 1 ),
                        array( 'id' => $_GET['contact_id'] ) );
            }
            require_once 'detail_contact_admin.php';
        } else {
            require_once 'list_contact_admin.php';
        }
    }

    function get_data_contact($current_views = '') {
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
        if ($current_views != '') {
            $where .= ' AND department = \'' . $current_views . '\' ';
        }
        if (!empty($_GET['contact_id'])) {
            $where .= ' AND id = \'' . $_GET['contact_id'] . '\' ';
        }
        $sql_str = 'SELECT * FROM wp_p_contact ' . $where . ' ORDER BY ' . $orderby . ' ' . $order;
        $list_contact = $wpdb->get_results($sql_str, ARRAY_A);
        return $list_contact;
    }
}

