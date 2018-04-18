<?php

class P_Contact_Plugin {
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
        $view_hook_name = add_menu_page( 'Danh sách liên hệ', 'Liên hệ', 'manage_options', 'p-contact', array($this, 'func_contact'), 'dashicons-tickets', 6  );
        $this->views[$view_hook_name] = 'contact';
        $view_hook_name = add_submenu_page( 'p-contact', 'Nông thôn mới', 'Nông thôn mới', 'manage_options', 'p-tax-nongthon', array($this, 'func_contact') );
        $this->views[$view_hook_name] = 'p-tax-nongthon';
    }
    function func_contact() {
        $current_views = $this->views[current_filter()];
        echo $current_views;
        include 'test_plugin_admin.php';
        echo 'OK';
    }
}