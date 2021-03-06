<?php
require_once 'core/dbconnect.php';
$con = new Connect();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    switch ($_POST['action']) {
        case 'get_kotoba':
            $query = $con->execute('SELECT * FROM verb_kotoba');
            $data = $query->fetchAll(\PDO::FETCH_ASSOC);
            break;
        case 'update_remember':
            $query = $con->execute('UPDATE verb_kotoba SET remembered = 0 WHERE verb_id IN (\'' . implode('\',\'', $_POST['data']) . '\')');
            $data = ['result' => true];
            break;
        case 'reset_remember':
            $query = $con->execute('UPDATE verb_kotoba SET remembered = 1');
            $data = ['result' => true];
            break;
        default:
            # code...
            break;
    }
    echo json_encode($data);die();
}

$not_rem_sql = 'SELECT * FROM verb_kotoba WHERE remembered = 0';
$query = $con->execute($not_rem_sql);
$data = $query->fetchAll(\PDO::FETCH_ASSOC);
?>




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
        </style>
    </head>

    <body>

        <!-- Top menu -->
        <nav class="navbar" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Andia - a super cool design agency...</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="top-navbar-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active">
                            <a href="services.html"><i class="fa fa-tasks"></i><br>Hiragana</a>
                        </li>
                        <li>
                            <a href="about.html"><i class="fa fa-user"></i><br>Katakana</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

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
                <div class="form-group">
                    <label>
                        <input type="checkbox" class="" name="select_not_remember" id="select_not_remember" value=""> Select not remember
                    </label>
                </div>
                <form action="" method="post" accept-charset="utf-8" id="form_word" class="hidden">
                    <div class="form-group">

                    </div>        
                </form>
                <!-- Button trigger modal -->
                <div class="form-group">
                    <label>
                        Pick time for each answer ( put empty with no time ): 
                        <input type="text" class="form-control" name="pick_time" id="pick_time" value="">
                    </label>
                </div>
                <button type="button" id="action_modal" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                    Start test
                </button>
                <button type="button" id="reset_remember" class="btn btn-primary btn-lg">
                    Reset remember
                </button>
            </div>
        </div>
        <div class=row>
            <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>日本語</th>
                    <th>漢字</th>
                    <th>かんじ２</th>
                    <th>ベトナム語</th>
                  </tr>
                </thead>
                <tbody>
                    <?php foreach ($data as $value) { ?>
                    <tr>
                        <td><?=$value['nihongo']?></td>
                        <td><?=$value['kanji']?></td>
                        <td><?=$value['kanji_hanviet']?></td>
                        <td><?=$value['betonamugo']?></td>
                    </tr>
                    <?php } ?>
                </tbody>
              </table>
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
                <button type="button" class="btn btn-primary update_remember">Update</button>
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

        <!-- <script src="data.js"></script> -->
        <script type="text/javascript" charset="utf-8">
            (function($){
                'use strict';
                var amount_slide;
                var nihongo_arr;
                var countdown_interval,
                    next_timeout;
                var time_countdown;
                var carousel_ele = $('#carousel-example-generic');

                var nihongo_kotoba_obj;
                
                var app_js = {
                    get_kotoba: function() {
                        $.ajax({
                            url: '',
                            method: 'POST',
                            data: {action: 'get_kotoba'},
                            dataType: 'json',
                            success: function(data) {
                                nihongo_kotoba_obj = data;
                                app_js.init();
                            }
                        });
                    },
                    init: function(){

                        app_js.event_init();
                        if($('#title_alphabet').attr('data-alphabet') == 'nihongo_kotoba'){
                            app_js.get_nihongo(nihongo_kotoba_obj);
                        }else{
                            app_js.get_nihongo(nihongo_kata_obj);
                        }
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

                        //select not remember
                        $('#select_not_remember').on('change', function(){
                            $('#form_word :checkbox').each(function() {
                                this.checked = false;
                            });
                            if(this.checked) {
                                $('#form_word :checkbox[remember="0"]').each(function() {
                                    this.checked = true;
                                });
                            }
                        });

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

                        // click update
                        $('.update_remember').on('click', function(e) {
                            app_js.update_remember(this);
                        });

                        // reset remember
                        $('#reset_remember').on('click', function(e) {
                            if (confirm('Are you sure')) {
                                app_js.reset_remember();
                            }
                        })
                    },
                    reset_remember: function () {
                        $.ajax({
                            url: '',
                            method: 'POST',
                            data: {action: 'reset_remember'},
                            dataType: 'json',
                            success: function(data) {
                                if (data.result == true) {
                                    alert('Reset success');
                                } else {
                                    alert('Reset fail');
                                }
                            }
                        });
                    },
                    update_remember: function (_ele) {
                        var arr = [];
                        var count = $('input.not_remember:checked').each(function(e) {
                            arr.push($(this).val());
                        });
                        $.ajax({
                            url: '',
                            method: 'POST',
                            data: {action: 'update_remember', data: arr},
                            dataType: 'json',
                            success: function(data) {
                                if (data.result == true) {
                                    alert('Save success');
                                } else {
                                    alert('Save fail');
                                }
                            }
                        });
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
                            arr = arr.concat(data[i].value.split(','));
                        }
                        // console.log(arr);
                        return arr;
                    },
                    // push html into carousel
                    active_modal: function(){
                        var nihongo_arr = nihongo_kotoba_obj;
                        var arr_word = [];
                        // $('#form_word input').val();
                        arr_word = app_js.get_arr_word('#form_word');
                        console.log(arr_word);
                        app_js.shuffle(arr_word);
                        // console.log(arr_word);
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
                        for (var i = arr_word.length - 1; i >= 0; i--) {
                            str_html += '<div class="item slide_ans">'
                                        +   '<p>' + (i + 1) + '/' + arr_word.length + ' <b>( Not remember: <span class="not_remember">0</span> )</b></p>'
                                        +   '<div class="flip">'
                                        +       '<div class="card">'
                                        +           '<div class="face front">' + nihongo_arr[arr_word[i]]['nihongo'] + '</div>'
                                        +           '<div class="face back">' + nihongo_arr[arr_word[i]]['betonamugo'] + '</div>'
                                        +       '</div>'
                                        +   '</div>'
                                        +   '<div>'
                                        +       '<label class="checkbox-inline" style="font-size: 25px;"><input class="not_remember" type="checkbox" name="not_remember[]" value="' + nihongo_arr[arr_word[i]]['verb_id'] + '">Not remember</label>'
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
                                    +    '<input type="checkbox" name="word" id="" value="' + index + '" remember="' + val.remembered + '">' + val.verb_id
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

                app_js.get_kotoba();

            })(jQuery)
        </script>
    </body>

</html>
