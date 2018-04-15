<?php
if ($posts_array) { ?>
<table class="archives_list">
    <thead>
        <tr align="center">
            <td width="100px">Số/Ký hiệu</td>
            <td width="100px">Ngày BH</td>
            <td>Trích yếu</td>
            <td width="80"></td>
        </tr>
    </thead>
    <tbody>
<?php 
    foreach ($posts_array as $post) {
        $file = get_field('file_upload');
        echo '<tr>
            <td><a href="' . get_permalink($post->ID) . '">' . $post->post_title . '</a></td>
            <td>' . date('d/m/Y', strtotime($post->post_date)) . '</td>
            <td><p align="justify"><a href="' . get_permalink($post->ID) . '">' . text_limit($post->post_excerpt ,20) . '</a></p></td>
            <td align="center">';
        if ($file) {
            echo '<a title="Đã tải về: ' . get_count_download($post->ID) 
                . '" onclick="count_dowload(\'' . $post->ID . '\');"' 
                . ' href="' . $file['url'] . '">
                    <span class="archives_down ' . get_class_file($file['mime_type']) . '">Tải về</span>
                </a>';
        } else {
            echo 'Không có văn bản.';
        }
        echo '</td>
        </tr>';
    }
}
?>
    </tbody>
</table>