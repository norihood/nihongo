<div class="panel panel-default dashboard-panel">

    <table class="table">
        <thead>
        <tr>
            <th><?php _e('Package Name','download-manager'); ?></th>
            <th><?php _e('Download Time','download-manager'); ?></th>
            <th><?php _e('User/IP','download-manager'); ?></th>
        </tr>
        </thead>
        <tbody>
        <?php
        global $wp_rewrite, $wp_query, $wpdb;
        $items_per_page = 30;
        $start = isset($_GET['pgd'])?((int)$_GET['pgd']-1)*$items_per_page:0;
        $moreCond = '';
        if(wpdm_query_var('pid') > 0) $moreCond .= " and p.ID = ".wpdm_query_var('pid');
        if(wpdm_query_var('uid') > 0) $moreCond .= " and s.uid = ".wpdm_query_var('uid');
        if(wpdm_query_var('ip') > 0) $moreCond .= " and s.ip = ".wpdm_query_var('ip');
        $res = $wpdb->get_results("select p.ID as pid,p.post_title,s.* from {$wpdb->prefix}posts p, {$wpdb->prefix}ahm_download_stats s where s.pid = p.ID $moreCond order by `timestamp` desc limit $start, $items_per_page");
        foreach($res as $stat){
            ?>
            <tr>
                <td><a href="<?php echo get_permalink($stat->pid); ?>"><?php echo $stat->post_title; ?></a> | <a href="edit.php?post_type=wpdmpro&page=wpdm-stats&pid=<?php echo $stat->pid; ?>"><i class="fa fa-area-chart"></i></a></td>
                <td><?php echo date(get_option('date_format')." H:i",$stat->timestamp); ?></td>
                <td><?php echo $stat->uid > 0?"<a href='edit.php?post_type=wpdmpro&page=wpdm-stats&uid={$stat->uid}'>".get_user_by('id', $stat->uid)->display_name . "</a> / ":''; ?><a href='edit.php?post_type=wpdmpro&page=wpdm-stats&ip=<?php echo $stat->ip; ?>'><?php echo $stat->ip; ?></a></td>
            </tr>
            <?php
        }
        ?>

        </tbody>
    </table>
    <div class="panel-footer">
        <?php

        isset($_GET['pgd']) && $_GET['pgd'] > 1 ? $current = (int)$_GET['pgd'] : $current = 1;
        $pagination = array(
            'base' => @add_query_arg('pgd','%#%'),
            'format' => '',
            'total' => ceil($wpdb->get_var("select count(*) from {$wpdb->prefix}ahm_download_stats")/$items_per_page),
            'current' => $current,
            'show_all' => false,
            'type' => 'list',
            'prev_next'    => True,
            'prev_text' => '<i class="icon icon-angle-left"></i> Previous',
            'next_text' => 'Next <i class="icon icon-angle-right"></i>',
        );

        //if( $wp_rewrite->using_permalinks() && !is_search())
        //    $pagination['base'] = user_trailingslashit( trailingslashit( remove_query_arg('s',get_pagenum_link(1) ) ) . 'paged=%#%', 'paged');

        if( !empty($wp_query->query_vars['s']) )
            $pagination['add_args'] = array('s'=>get_query_var('s'));

        echo '<div class="text-center">' . str_replace('<ul class=\'page-numbers\'>','<ul class="pagination pagination-centered page-numbers" style="margin: 0">', paginate_links($pagination)) . '</div>';
        ?>
    </div>
</div>