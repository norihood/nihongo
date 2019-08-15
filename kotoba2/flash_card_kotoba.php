<!DOCTYPE html>
<html lang="en">

    <head>
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Andia - Responsive Agency Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Droid+Sans">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/flexslider/flexslider.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/media-queries.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
        
        <style type="text/css" media="screen">
            .list_cats {
                list-style-type: none;
                text-align: left;
            }
            .list_cats li {
                display: inline-block;
                font-size: 20px;
                /*padding: 10px 20px;*/
            }
            .list_cats li a {
                padding: 10px 20px;
                display: inherit;
                border-left: 1px solid #d6caca;
                background-color: #ececf3;
                /*border-radius: 5px;*/
            }
            .list_cats li:first-child a {
                border-left: none;
            }
            .list_cats li a:hover {
                background-color: #fdb8b8;
            }
            .list_cats li.active a {
                background-color: #fdb8b8;
            }
            .bigword {
                height: 100px;
                font-size: 50px;
                padding-top: 20px;
                color: #0129f9;
            }
            .answers {
                font-size: 40px;
            }
            .answers label {
                padding: 10px 25px;
            }
            .answers label input {
                margin-right: 14px;
            }
            .list_checkbox {
                font-size: 14px;
            }
            .answers input[type=radio] {
              /* Double-sized Checkboxes */
              -ms-transform: scale(1.8); /* IE */
              -moz-transform: scale(1.8); /* FF */
              -webkit-transform: scale(1.8); /* Safari and Chrome */
              -o-transform: scale(1.8); /* Opera */
              padding: 10px;
              vertical-align: middle;
            }
            .countdown {
                font-size: 25px;
                color: #f51b02;
            }
            .item {
                /*height: 400px;*/
            }
            .text_content {
                height: 180px;
            }
            .text_content.only_text {
                line-height: 180px;
                font-size: 30px;
            }
            .text_content.text_result {
                /*padding: 20px;*/
                font-size: 25px;
            /*    margin-top: 30px;*/
                color: #f98c00;
            }
            @keyframes changewidth {
              from {
                font-size: 30px;
              }

              to {
                font-size: 60px;
              }
            }

            .text_content.only_text, .text_content.text_result {
              animation-duration: 0.5s;
              animation-name: changewidth;
              animation-iteration-count: infinite;
              animation-direction: alternate;
            }
            /*
             * PhuongNLT
             */
            .flip {
                -webkit-perspective: 800;
                width: 400px;
                height: 400px;
                position: relative;
                margin: 10px auto;
                border: solid 0.5em white;
                /* overflow: hidden; background-color: #aaa; */
                box-shadow: inset 0 0.5em 2em rgba(0, 0, 0, 0.6), 0 0.25em 1em rgba(0, 0, 0, 0.2);
                border-radius: 0.5em;
            }
            .flip .card {
                width: 100%;
                height: 100%;
                -webkit-transform-style: preserve-3d;
                -webkit-transition: 0.5s;
            }
            .flip .card.flipped {
                /*-webkit-transform: rotatex(-180deg);*/
                /* -webkit-transform: rotatey(-180deg) rotateZ(360deg) rotateX(360deg);*/
                -webkit-transform: rotatey(-180deg);
            }
            /*
            .flip .card.unflipped {
                -webkit-transform: rotatez(-180deg);
            }
            */
             .flip .card .face {
                width: 100%;
                height: 100%;
                position: absolute;
                -webkit-backface-visibility: hidden;
                z-index: 2;
                font-family: Georgia;
                font-size: 3em;
                text-align: center;
                line-height: 60px;
            }
            .flip .card .front {
                position: absolute;
                z-index: 1;
                background: #220000;
                color: white;
                cursor: pointer;
                padding-top: 145px;
            }
            .flip .card .back {
                -webkit-transform: rotateY(180deg);
                background: blue;
                background: #66eeff;
                color: black;
                cursor: pointer;
                padding-top: 100px;
            }
            .audio {
                float: left;
                cursor: pointer;
            }
            .kotoba_bg {
                background-color: #cadcff;
                width: 100%;
                height: 100%;
            }
            .kotoba_bg p {
                display: block;
                font-size: 35px;
            }
            .kotoba_bg p.kanji_goi{
                padding: 40px 0;
                color: #fb0e0e;
                font-size: 60px;
            }
            .kotoba_bg p.hiragana_goi{
                color: #0000ff;
            }
            .kotoba_bg p.hantu_goi{
                font-size: 30px;
                color: #a800ff;
                text-transform: uppercase;
            }
            .kotoba_bg p.nghia_goi{
                font-size: 30px;
                color: #6a0ec0;
            }
            #form_word .checbox_bai {
                font-size: 25px;
            }
        </style>
    </head>

    <body>
    <!-- <script src="https://www.w3schools.com/lib/w3.js"></script>
    <div w3-include-html="data/37.html"></div>
    <script>
    w3.includeHTML();
    </script> -->
        <!-- Top menu -->
        <div w3-include-html="../nav_top.html"></div>

        <!-- Page Title -->
        <div class="page-title-container">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 wow fadeIn">
                        <i class="fa fa-tasks"></i>
                        <h1 id="title_alphabet" data-alphabet="nihongo_kotoba">nihongo_kotoba /</h1>
                        <p>Here are the services we offer</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-5 col-md-offset-5 text-left list_checkbox">   
                <div class="form-group">
                    <label>
                        <input type="checkbox" class="" name="select_all" id="select_all" value=""> Select all
                    </label>
                </div>
                <form action="" method="post" accept-charset="utf-8" id="form_word" class="">
                    <div class="form-group">
                    <?php
                        $files = glob('data_mimikara2/*.html');
                        $bai = '';
                        foreach ($files as $file) {
                            $arr = explode('/', $file);
                            $bai1 = explode('_', $arr[1])[0];
                            if ($bai1 != $bai) {
                                $bai = $bai1;
                                $check_all_bai = '<div class="checkbox checbox_bai">'
                                    . '<label>'
                                    .    '<input type="checkbox" name="check_bai" class="check_all_bai" value="' . $bai . '">' . $bai
                                    . '</label>'
                                    . '</div>';
                                echo $check_all_bai;
                            }
                            $html = '<div class="checkbox" style="margin-left: 20px;">'
                                    . '<label>'
                                    .    '<input type="checkbox" name="word" class="check_all_' . $bai . '" id="optionsRadios1" value="' . $file . '">' . $file
                                    . '</label>'
                                    . '</div>';
                            echo $html;
                            // $text = file_get_contents($file);
                            // // preg_match('/(<body[^>]*>(.|\r|\n|\t)*?<\/body>)/', htmlentities($text), $matches);
                            // preg_match('/(<body[^>]*>)/', htmlentities($text), $matches);
                            // echo '<pre>';print_r(htmlentities($text));die();
                        }
                    ?>
                    </div>        
                </form>
                <!-- Button trigger modal -->
                <button type="button" id="action_modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                    Start test
                </button>
                <button type="button" id="action_interval" class="btn btn-primary btn-lg">
                    Start Interval
                </button>
            </div>
        </div>
        <div class="page-title-container">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 wow fadeIn" align="center">
                        <div id="show_kotoba" class="flip">
                            <div class="kotoba_bg">
                                <p class="kanji_goi">Kanji</p>
                                <p class="hiragana_goi">hiragana</p>
                                <p class="hantu_goi">Hán tự</p>
                                <p class="nghia_goi">Nghĩa</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- <div id="get_kotoba"></div> -->
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false"　data-backdrop="static">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Test Nihongo</h4>
              </div>
              <div class="modal-body">

                <!-- carousel -->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="height: 500px;">
                    <form action="" method="post" accept-charset="utf-8" id="form_nihongo">

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox" data-amount-slide="3">
                    </div>
                    </form>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-success" href="#carousel-example-generic" role="button" data-slide="prev" style="background-color: #5cb85c;">Previous</button>
                <button type="button" class="btn btn-success" href="#carousel-example-generic" role="button" data-slide="next" style="background-color: #5cb85c;">Next</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
              </div>
            </div>
          </div>
        </div>
        <!-- Call To Action -->
        <div class="call-to-action-container">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 call-to-action-text wow fadeInLeftBig">
                        <p>
                            Lorem ipsum <span class="violet">dolor sit amet</span>, consectetur adipisicing elit, 
                            sed do eiusmod tempor incididunt ut labore et ut wisi.
                        </p>
                        <div class="call-to-action-button">
                            <a class="big-link-3" href="#">Try It Now!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/flexslider/jquery.flexslider-min.js"></script>
        <script src="assets/js/jflickrfeed.min.js"></script>
        <script src="assets/js/masonry.pkgd.min.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="assets/js/jquery.ui.map.min.js"></script>
        <script src="assets/js/scripts.js"></script>

        <script type="text/javascript">
            var TIMEOUT_INTERVAL = 30000;
        </script>
        <script type="text/javascript">
            // request permission on page load
            document.addEventListener('DOMContentLoaded', function () {
                console.log(Notification.permission);
                if (!Notification) {
                    alert('Desktop notifications not available in your browser. Try Chromium.'); 
                    return;
                }

                if (Notification.permission !== "granted") {
                    Notification.requestPermission().then(function(result) {
                      if (result === 'denied') {
                        console.log('Permission wasn\'t granted. Allow a retry.');
                        return;
                      }
                      if (result === 'default') {
                        console.log('The permission request was dismissed.');
                        return;
                      }
                      // Do something with the granted permission.
                    });
                }
            });

            function notifyMe(kanji) {
              if (Notification.permission !== "granted") {
                Notification.requestPermission();
              } else {
                var notification = new Notification(kanji, {
                  icon: 'nihongo.jpg',
                  body: '日本語の勉強',
                });

                notification.onclick = function () {
                  // window.open("http://stackoverflow.com/a/13328397/1269037");
                  window.focus();
                };

              }

            }
        </script>
        <script type="text/javascript" charset="utf-8">
            (function($){
                'use strict';
                var amount_slide;
                var nihongo_arr;
                var countdown_interval,
                    next_timeout;
                var time_countdown;
                var carousel_ele = $('#carousel-example-generic');
                var nihongo_kotoba_obj = {}, i = 0, id_kotoba = [];
                // 1: nihongo is front, 2: betonamu is front
				var config_front = 1;
                // console.log(nihongo_hira_obj);

                var app_js = {

                    init: function(){
                        app_js.event_init();
                        // var json_list_section = {};
                        // for (var i = 1; i <= 6; i++) {
                        //     for (var j = 1; j <= 6; j++) {
                        //         json_list_section[String(i) + String(j)] = 'bai ' + i + '-' + j;
                        //     }
                        // }
                        // // console.log(json_list_section);
                        // app_js.get_nihongo(json_list_section);
                    },
                    event_init: function(){
                        
                        var myModal_ele = $('#myModal');
                        var count_slide = 0;            

                        carousel_ele.carousel({
                          interval: false,
                          pause: 'hover',
                          wrap: false
                        });
                        
                        myModal_ele.modal({
                          backdrop: 'static',
                          show: false,
                          keyboard: false
                        })

                        // event click button test
                        $('#action_modal').on('click', function(){
                            count_slide = 0;
                            app_js.active_modal();
                            time_countdown = $('#pick_time').val();
                            if(time_countdown == ''){
                                time_countdown = false;
                            }
                        });

                        //select all
                        $('#select_all').on('change', function(){
                            if(this.checked) {
                                  $('#form_word :checkbox').each(function() {
                                      this.checked = true;
                                  });
                              }
                              else {
                                $('#form_word :checkbox').each(function() {
                                      this.checked = false;
                                  });
                              }
                        });

                        //select all one topic
                        $('.check_all_bai').on('change', function(){
                            var bai = $(this).val();
                            if (this.checked) {
                                $('#form_word .check_all_' + bai + ':checkbox').each(function() {
                                    this.checked = true;
                                });
                            } else {
                                $('#form_word .check_all_' + bai + ':checkbox').each(function() {
                                    this.checked = false;
                                });
                            }
                        });

                        // Start Interval
                        $('#action_interval').on('click', function() {
                            app_js.active_interval();
                        })

                        // transform 3d
                        myModal_ele.on('click', '.flip', function () {
                            var $card = $(this).find('.card');
                            if ($card.hasClass("flipped")) {
                                $card.removeClass('flipped');
                                //.addClass('unflipped');
                            } else {
                                $card.addClass('flipped');
                                //.removeClass('unflipped');
                            }
                        });

                        //event next slide
                        $('button[data-slide="next"]').on('click', function(e) {
                            var count = $('input.not_remember:checked').length;
                            $('.slide_ans span.not_remember').html(count);
                        });

                        $('#myModal').on('click', '.audio', function(e) {
                            app_js.run_audio(this);
                        }).on('ended', '.audio', function(e) {
                            alert();
                        })
                    },
                    run_audio: function(_ele) {
                        var href = $(_ele).attr('data-audio');
                        new Audio(href).play();
                    },
                    //randomize array
                    shuffle: function (a) {
                        var j, x, i;
                        for (i = a.length; i; i -= 1) {
                            j = Math.floor(Math.random() * i);
                            x = a[i - 1];
                            a[i - 1] = a[j];
                            a[j] = x;
                        }
                    },
                    //get random 3 value of array
                    get_random_value: function(myArray, number_value){
                        var new_arr = [],
                            index_rand = [];
                        if(number_value > myArray.length){
                            number_value = myArray.length;
                        }
                        for (var i = number_value - 1; i >= 0; i--) {
                            var rand = app_js.get_rand(myArray.length, index_rand);

                            var value_rand = myArray[rand];
                            // console.log(Math.floor(Math.random() * myArray.length));
                            new_arr.push(value_rand);
                            index_rand.push(rand);
                        }
                        // console.log(new_arr);
                        return new_arr;
                    },
                    get_rand: function(length, arr_number){
                        var rand = Math.floor(Math.random() * length);
                        if($.inArray(rand, arr_number) + 1){
                            return app_js.get_rand(length, arr_number);
                        }else{
                            return rand;
                        }
                    },
                    //get word for test
                    get_arr_word: function(form_ele){
                        var data = $(form_ele).serializeArray();
                        // console.log(data);
                        var arr = [];
                        for (var i = data.length - 1; i >= 0; i--) {
                            if (data[i].name == 'word') {
                                arr = arr.concat(data[i].value.split(','));
                            }
                        }
                        // console.log(arr);
                        return arr;
                    },
                    readTextFile: function(file) {
                        var rawFile = new XMLHttpRequest();
                        rawFile.open("GET", file, false);
                        rawFile.onreadystatechange = function ()
                        {
                            if(rawFile.readyState === 4)
                            {
                                if(rawFile.status === 200)
                                {
                                    var allText = rawFile.responseText;
                                    // console.log(allText);
                                    var regex = /(<body[^>]*>(.|\r|\n|\t)*?<\/body>)/;
                                    var arr = regex.exec(allText);
                                    // console.log(arr);
                                    arr[1].replace(/(\n|\t)/, '');
                                    // console.log(arr[1]);
                                    var obj_html = $('<div>').html(arr[1]).contents();
                                    // console.log(obj_html);
                                    var entry_content = obj_html.find('.boxtv');
                                    var regex_nihongo = /[\u3000-\u303f\u3040-\u309f\u30a0-\u30ff\uff00-\uff9f\u4e00-\u9faf\u3400-\u4dbf]+/;
                                    var regex_hanviet = /\[[^\]].*\]/;
                                    var regex_remember = /"x"/;
                                    entry_content.each(function(index, e) {
                                        var div = $(e).children('div.tuvung');
                                        var tuvung_clone = $(div).clone();
                                        if ($(tuvung_clone).find('ruby').length > 0) {
                                            // get text hiragana
                                            var nihongo_text = '';
                                            $(tuvung_clone).find('ruby').each(function(index, el){
                                                nihongo_text += $(el).find('rt').text();
                                                var next_sibling = el.nextSibling;
                                                // get text hiragana
                                                if (next_sibling && next_sibling.nodeType == 3) {
                                                    nihongo_text += $(el.nextSibling).text();
                                                }
                                            })
                                            // get text kanji
                                            var b = $(tuvung_clone).find('rt, rp').empty();
                                            var text_kanji = $(b).parents('.tuvung').text();
                                            var kanji = text_kanji.substr(text_kanji.indexOf('.') + 1);

                                            // get text hiragana
                                            // var c = $(tuvung_clone).find('ruby').empty();
                                            // nihongo_text += $(c).parent('b').text();
                                        } else {
                                            var text_kanji = $(tuvung_clone).text();
                                            var kanji = text_kanji.substr(text_kanji.indexOf('.') + 1);
                                            var nihongo_text = kanji;
                                        }

                                        var name = i + '_' + kanji;
                                        // console.log(arr_regex_hanviet);
                                        var hanviet = $(e).find('.hanviet, .hanviet2, .hanviet1').text();
                                        var betonamugo = $(e).find('.nghia, .nghia2, .nghia1').text();
                                        // console.log(hanviet);
                                        id_kotoba.push(name);
                                        nihongo_kotoba_obj[name] = {
                                            'nihongo': nihongo_text,
                                            // 'audio': $(e).find('td:nth-child(2) a').attr('href'),
                                            'kanji': kanji,
                                            'han_viet': hanviet,
                                            'betonamugo': betonamugo,
                                            'tatoeba': '',
                                            'remember' : regex_remember.test(nihongo_text)
                                        };
                                        i++;
                                        // console.log(index, e);
                                    })
                                    console.log(nihongo_kotoba_obj);
                                    console.log(id_kotoba);
                                }
                            }
                        }
                        rawFile.send(null); 
                    },
                    reset_variables: function() {
                        nihongo_kotoba_obj = {},
                        i = 0,
                        id_kotoba = [];
                        $('.carousel-inner').html('ko co data');
                    },
                    // push html into carousel
                    active_modal: function(){
                        app_js.reset_variables();

                        var nihongo_arr = nihongo_kotoba_obj;
                        var arr_word = [];
                        // $('#form_word input').val();
                        arr_word = app_js.get_arr_word('#form_word');
                        for (var i = 0; i < arr_word.length; i++) {
                            app_js.readTextFile(arr_word[i]);
                        }
                        // console.log(arr_word);
                        // console.log(arr_word);
                        app_js.shuffle(id_kotoba);
                        console.log(id_kotoba);
                        amount_slide = arr_word.length + 1;
                        var arr_temporary = [],
                            arr_three_word = [],
                            str_html = '';

                        str_html += '<div class="item active">'
                                    +   '<div class="flip">'
                                    +       '<div class="text_content only_text">ready</div>'
                                    +       '<div class="countdown"></div>'
                                    +   '</div>'
                                    + '</div>';
                        for (var i = id_kotoba.length - 1; i >= 0; i--) {
                            str_html += '<div class="item slide_ans">'
                                        +   '<p>' + (i + 1) + '/' + id_kotoba.length + ' <b>( Not remember: <span class="not_remember">0</span> )</b></p>'
                                        +   '<div class="flip">'
                                        +       '<div class="card">';
                            if (config_front == 1) {
                                str_html +=         '<div class="face front">' + nihongo_arr[id_kotoba[i]]['nihongo'] + '</div>'
                                        +           '<div class="face back">' + nihongo_arr[id_kotoba[i]]['betonamugo'];
                            } else if (config_front == 2) {
                                str_html +=         '<div class="face front">' + nihongo_arr[id_kotoba[i]]['betonamugo'] + '</div>'
                                        +           '<div class="face back">' + nihongo_arr[id_kotoba[i]]['nihongo'];
                            }
                            str_html +=                 '<br>' + '<span style="color:red;">' + nihongo_arr[id_kotoba[i]]['kanji'] + '</span>'
                                        +               '<br>' + nihongo_arr[id_kotoba[i]]['han_viet']
                                        +           '</div>'
                                        +       '</div>'
                                        +   '</div>'
                                        +   '<div>'
                                        +       '<span class="audio fa fa-volume-up fa-2x" data-audio="' + nihongo_arr[id_kotoba[i]]['audio'] + '"></span>'
                                        +       '<label class="checkbox-inline" style="font-size: 25px;"><input class="not_remember" type="checkbox" name="not_remember[]">Not remember</label>'
                                        +   '</div>'
                                    + '</div>';
                        }
                        str_html += '<div class="item">'
                                    +   '<div class="text_content text_result">'
                                    +       'result'
                                    +       '<div class="result"></div>'
                                    +   '</div>'
                                    + '</div>';
                        $('.carousel-inner').html(str_html);
                    },
                    active_interval: function() {
                        app_js.reset_variables();
                        var nihongo_arr = nihongo_kotoba_obj;
                        var arr_word = [];
                        // $('#form_word input').val();
                        arr_word = app_js.get_arr_word('#form_word');
                        for (var i = 0; i < arr_word.length; i++) {
                            console.log(arr_word[i]);
                            app_js.readTextFile(arr_word[i]);
                            // app_js.readTextFile("data/11.html");
                        }
                        // console.log(arr_word);
                        
                        app_js.shuffle(id_kotoba);
                        var tmp;
                        var j = 0;
                        console.log('active interval');
                        var intervalId = setInterval(function() {
                            if (nihongo_arr[id_kotoba[j]] == undefined) {
                                console.log('value undefined');
                                clearInterval(intervalId);
                                j = 0;
                            } else {
                                while (nihongo_arr[id_kotoba[j]] != undefined && nihongo_arr[id_kotoba[j]]['remember'] == true) {
                                    j++;
                                }
                                if (nihongo_arr[id_kotoba[j]] != undefined) {
                                    console.log(j);
                                    // alert(nihongo_arr[id_kotoba[j]]['kanji']);
                                    console.log(nihongo_arr[id_kotoba[j]]['nihongo']);
                                    console.log(nihongo_arr[id_kotoba[j]]['kanji']);
                                    console.log(nihongo_arr[id_kotoba[j]]['han_viet']);
                                    console.log(nihongo_arr[id_kotoba[j]]['betonamugo']);
                                    var html_str = '<p class="kanji_goi">' + nihongo_arr[id_kotoba[j]]['kanji'] + '</p>'
                                                + '<p class="hiragana_goi">' + nihongo_arr[id_kotoba[j]]['nihongo'] + '</p>'
                                                + '<p class="hantu_goi">' + nihongo_arr[id_kotoba[j]]['han_viet'] + '</p>'
                                                + '<p class="nghia_goi">' + nihongo_arr[id_kotoba[j]]['betonamugo'] + '</p>';
                                    $('.kotoba_bg').fadeOut('slow', function() {
                                        $(this).html(html_str)
                                            .fadeIn('slow');
                                    });
                                    notifyMe(nihongo_arr[id_kotoba[j]]['kanji']);
                                }
                                j++;
                                if (j >= id_kotoba.length) {
                                    j = 0;
                                    app_js.shuffle(id_kotoba);
                                }
                            }
                        }, TIMEOUT_INTERVAL);
                    },
                    // get result
                    get_result: function(){
                        var form = $('#form_nihongo');
                        var data = form.serializeArray();
                        var arr_ans = {};
                        var count_right = 0;
                        form.find('.slide_ans').each(function(index, el) {
                            var key = $(this).find('.bigword').attr('data_word');
                            var value = $(this).find('input:checked').val();
                            if(value != undefined){
                                arr_ans[key] = value;
                            }else{
                                arr_ans[key] = '';  
                            }
                                                    
                        });
                        
                        $.each(arr_ans, function(index, val) {
                            if(index == val){
                                count_right++;
                            }
                        });

                        var length_ans = Object.keys(arr_ans).length;
                        // console.log(count_right);
                        // console.log(length_ans);
                        // console.log((count_right/length_ans) * 100 );

                        $('.result').html('<p>' + count_right + '/' + length_ans + '</p><p>' + app_js.get_congratulation((count_right/length_ans) * 100) + '</p>');
                    },
                    // render nihongo
                    get_nihongo: function(obj){
                        var form_word = $('#form_word');
                        var json = {};
                        var html = '';

                        $.each(obj, function(index, val) {

                            html += '<div class="checkbox">'
                                    + '<label>'
                                    +    '<input type="checkbox" name="word" id="optionsRadios1" value="' + index + '">' + val
                                    + '</label>'
                                    + '</div>';
                        });
                        nihongo_arr = obj;

                        form_word.find('.form-group').html(html);
                    },
                    //countdown
                    get_countdown: function(time_start){
                        var time_countdown = time_start;
                        countdown_interval = setInterval(function(){
                            $('.item.active .countdown').html(time_countdown);
                            if(time_countdown == 1){
                                time_countdown = time_start;
                            }else{
                                time_countdown--;
                            }
                        }, 1000);
                    },
                    // set Timeout to next slide
                    set_timeout_nextslide: function(time){
                        if(next_timeout) {
                            clearTimeout(next_timeout);
                        }
                        next_timeout = setTimeout(function(){
                                        carousel_ele.carousel('next');
                                    }, (time * 1000 + 700));
                    },
                    //text congratulations
                    get_congratulation: function(percent){
                        if(percent <= 40){
                            return 'Not Good';
                        }else if (percent <= 60) {
                            return 'Good';
                        }else if (percent <= 80) {
                            return 'Very Good';
                        }else if (percent < 100) {
                            return 'You\'re pro';
                        }else if (percent = 100) {
                            return 'Perfect';
                        }
                    } 
                };


                app_js.init();
            })(jQuery)
        </script>
        <!-- include html -->
        <script>
        function includeHTML() {
          var z, i, elmnt, file, xhttp;
          /*loop through a collection of all HTML elements:*/
          z = document.getElementsByTagName("*");
          for (i = 0; i < z.length; i++) {
            elmnt = z[i];
            /*search for elements with a certain atrribute:*/
            file = elmnt.getAttribute("w3-include-html");
            if (file) {
              /*make an HTTP request using the attribute value as the file name:*/
              xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4) {
                  if (this.status == 200) {elmnt.innerHTML = this.responseText;}
                  if (this.status == 404) {elmnt.innerHTML = "Page not found.";}
                  /*remove the attribute, and call this function once more:*/
                  elmnt.removeAttribute("w3-include-html");
                  includeHTML();
                }
              } 
              xhttp.open("GET", file, true);
              xhttp.send();
              /*exit the function:*/
              return;
            }
          }
        }
        includeHTML();
        </script>
    </body>

</html>
