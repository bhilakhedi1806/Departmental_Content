<?php include_once("admin/server.php");?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="fcs.css" type="text/css">
<link rel="shortcut icon" href="favicon.ico" />

  <script src="js/jquery-1.11.3.min.js" type="text/javascript" data-library="jquery" data-version="1.11.3"></script>
    <script>
  $(function() {
    $('marquee').mouseover(function() {
        $(this).attr('scrollamount',0);
    }).mouseout(function() {
         $(this).attr('scrollamount',2);
    });

});
  </script>
    <script src="js/jssor.slider-22.0.7.mini.js" type="text/javascript" data-library="jssor.slider.mini" data-version="22.0.7"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              {$Duration:1200,x:-0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2}
            ];

            var jssor_1_options = {
              $AutoPlay: true,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              },
              $ThumbnailNavigatorOptions: {
                $Class: $JssorThumbnailNavigator$,
                $Cols: 1,
                $Align: 0,
                $NoDrag: true
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 870);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 01 css */
        /*
        .jssorb01 div           (normal)
        .jssorb01 div:hover     (normal mouseover)
        .jssorb01 .av           (active)
        .jssorb01 .av:hover     (active mouseover)
        .jssorb01 .dn           (mousedown)
        */
        .jssorb01 {
            position: absolute;
        }
        .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
            position: absolute;
            /* size of bullet elment */
            width: 12px;
            height: 12px;
            filter: alpha(opacity=70);
            opacity: .7;
            overflow: hidden;
            cursor: pointer;
            border: #000 1px solid;
        }
        .jssorb01 div { background-color: gray; }
        .jssorb01 div:hover, .jssorb01 .av:hover { background-color: #d3d3d3; }
        .jssorb01 .av { background-color: #fff; }
        .jssorb01 .dn, .jssorb01 .dn:hover { background-color: #555555; }

        /* jssor slider arrow navigator skin 05 css */
        /*
        .jssora05l                  (normal)
        .jssora05r                  (normal)
        .jssora05l:hover            (normal mouseover)
        .jssora05r:hover            (normal mouseover)
        .jssora05l.jssora05ldn      (mousedown)
        .jssora05r.jssora05rdn      (mousedown)
        .jssora05l.jssora05lds      (disabled)
        .jssora05r.jssora05rds      (disabled)
        */
        .jssora05l, .jssora05r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 40px;
            cursor: pointer;
            background: url('img/a17.png') no-repeat;
            overflow: hidden;
        }
        .jssora05l { background-position: -10px -40px; }
        .jssora05r { background-position: -70px -40px; }
        .jssora05l:hover { background-position: -130px -40px; }
        .jssora05r:hover { background-position: -190px -40px; }
        .jssora05l.jssora05ldn { background-position: -250px -40px; }
        .jssora05r.jssora05rdn { background-position: -310px -40px; }
        .jssora05l.jssora05lds { background-position: -10px -40px; opacity: .3; pointer-events: none; }
        .jssora05r.jssora05rds { background-position: -70px -40px; opacity: .3; pointer-events: none; }
        /* jssor slider thumbnail navigator skin 09 css */.jssort09-600-45 .p {    position: absolute;    top: 0;    left: 0;    width: 600px;    height: 45px;}.jssort09-600-45 .t {    font-family: verdana;    font-weight: normal;    position: absolute;    width: 100%;    height: 100%;    top: 0;    left: 0;    color:#fff;    line-height: 45px;    font-size: 20px;    padding-left: 10px;}
    </style>
</head>

<body>
<div align="center">
<div class="frame"> 
	<!------------Header Start From Here------------->
	<div class="header">
        <div class="head"> 
        	<div class="container"> 
            	<div class="head-section1"> 
					<div class="logo"><img src="images/College-Mono.png" width="151" height="145" class="mono"></div>
					<div class="logo-txt"><h1 class="heading"> Government Polytechnic College, Harda </h1>
                	<h6 class="website"> Website : http://www.gpcharda.ac.in </h6>
                    </div>
                </div>
                
				<div class="head-section2">
                	<div class="head-box">
                    	<div class="head-box-1">
                        	<div class="phone"> </div>
         					<h1 style="font-size:20px;"> 07577-222031 </h1>
                      </div>
                        
                        <div class="head-box-2"> 
                        	<div class="e-mail"> </div>
                            <h6 style="font-size:16px;"> prinpoly.hrd@mp.gov.in </h6>
                        </div> 
            		</div>
            	</div>
                
            </div>
    	</div>
	
    <!-------------Navigation Start From Here------------->
    	<div class="navigation">
        	<div class="container">
            <div class="nav-inner-bx">
            <ul>
        	<li style="border-left:1px solid #fff"> <a href="index.php" >home </a>
            </li>
        	<li><a href="">about us</a>
            <ul>
            <li><a href="principle_desk.php">Principal Desk </a></li>
        	<li><a href="vision.php">Vision & Mission</a> </li>           
        	<li><a href="contact_us.php">Contact us</a> </li>
        	<li><a href="departmental_directory.php">Departmental Directory</a></li>
            </ul>
            </li>
            
        	<li><a href="department_courses.php">Department & Course</a>
                 <ul>
            <li><a href="#">Civil Engineering </a></li>
        	<li><a href="#">Computer Science Engineering</a> </li>           
        	<li><a href="#">Electrical Engineering </a></li>
        	<li><a href="#">Mechanical Engineering</a></li>
            </ul>
            </li>   
            
        	<li><a href="#">campus</a>
            <ul>
            <li><a href="hostel.php">Hostel</a></li>
        	<li><a href="games.php">Games & Sports</a> </li>
        	<li><a href="library.php">Library</a></li>
        	<li><a href="infrastructure.php">Infrastructure</a></li>
        	<li><a href="workshop.php">Laboratory & Workshops</a></li>
            </ul>
            </li>
            
        	<li><a href="#">student</a>
            <ul>
            <li><a href="department_courses.php">department & courses</a></li>
            <li><a href="time_table.php">Time Table</a></li>
            <li><a href="placement.php">Placement</a></li>
        	<li><a href="https://dte.mponline.gov.in/portal/services/onlinecounselling/counshomepage/home.aspx">Student Counselling</a> </li>
        	<li><a href="https://www.rgpvdiploma.in/Exam/ProgramSelect.aspx">Result</a></li>
            </ul>
            </li>
            <li><a href="#">Staff</a>
            <ul>
        <li><a href="faculty.php">faculty</a></li>
        <li><a href="other_stafffaculty.php">Other Staff</a></li>
            </ul>
            </li>
        	<li><a href="#">Alumni</a>
            <ul>
            <li><a href="registration.php">Alumni Registration</a></li>
            <li><a href="alumini.php">Alumni Record</a></li>
            </ul>
            </li>
             <li><a href="notice-board.php">News & Events</a></li>
        	<li><a href="#">other activities</a>
            <ul>
           
            <li><a href="gallery.php">Photo Gallery</a></li>
             <li><a href="janbhagidari.php">Janbhagidari</a></li>
            <li><a href="govt-project.php">Government Projects</a></li>
        	<li><a href="staff_facilities.php">Staff Quarter Facilities</a> </li>
        	<li><a href="perform_details.php">Performance</a></li>
        	<li><a href="http://www.mp.gov.in/right-to-information">RTI</a></li>
        	<li><a href="community.php">Community</a></li>
            </ul>
            </li>
            </ul>
            </div>
            </div>
        </div>
	<!-------------Navigation End Here------------->
    </div>
    <!-------------Header End Here------------->
    <div class="container">