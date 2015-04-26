#!/usr/bin/env perl
use Mojolicious::Lite;
use strict;	
use warnings;

get '/' => sub {
  my $c = shift;
  $c->render('home');
};

get '/deadfather' => sub {
  my $c = shift;
  $c->render('deadfather');
};

get '/la-dolce-vita' => sub {
  my $c = shift;
  $c->render('ladolcevita');
};

get '/illustration' => sub {
  my $c = shift;
  $c->render('illustration');
};

get '/contact' => sub {
  my $c = shift;
  $c->render('contact');
};

app->start;
__DATA__

@@ layouts/default.html.ep

<!doctype html>
<html>

<head>
<link rel="stylesheet" type="text/css" media="screen" href="/css/main.css" />
</head>

<body>



<main>


<aside>
  <div id="menz">
    <ul style="list-style: none;">
	<li><a href="/contact">Sami Alwani</a></li>
        <li><a href="/illustration">Illustration</a></li>

    <ul class="expand">
        <li class="comics"><a>Comics</a>
		<ul class="content">
		    <li class="posts"><a href="/la-dolce-vita">&nbsp&nbsp La Dolce Vita</a></li>
		    <li class="posts"><a href="/deadfather">&nbsp&nbsp The Dead Father</a></li>
</ul>
</li>
     
      <li><a href="/contact">About/Contact</a></li>    
      <li><a href="http://samialwani.blogspot.ca/">Sketchblog</a></li>

    </ul>
  </div>
</aside>


 %= javascript '//ajax.googleapis.com/ajax/libs/jquery/1.10.2jquery.min.js'
   %= javascript begin 
!window.jQuery && document.write(unescape('%3Cscript src="static/js/jquery-1.10.2.min.js"%3E%3C/script%3E'))
   % end


%= javascript begin
    $('.expand ul').hide();

$('.comics').click(function() {
    $(this).find('ul').slideToggle();
});

% end
    

<div id="content">
    <%= content %>
</div>


</main>

</body>
</html>


@@ layouts/gallery.html.ep
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>art</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="/css/expand.css">
    <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body>
    


<div class="container">
      <div class="four columns">
 
      </div>

<aside>
  <div id="menz">
    <ul style="list-style: none;">
	<li><a href="/contact">Sami Alwani</a></li>
        <li><a href="/illustration">Illustration</a></li>

    <ul class="expand">
        <li class="comics"><a>Comics</a>
		<ul class="content">
		    <li class="posts"><a href="/la-dolce-vita">&nbsp&nbsp La Dolce Vita</a></li>
		    <li class="posts"><a href="/deadfather">&nbsp&nbsp The Dead Father</a></li>
</ul>
</li>
     
      <li><a href="/contact">About/Contact</a></li>    
      <li><a href="http://samialwani.blogspot.ca/">Sketchblog</a></li>

    </ul>
  </div>
</aside>


 %= javascript '//ajax.googleapis.com/ajax/libs/jquery/1.10.2jquery.min.js'
   %= javascript begin 
!window.jQuery && document.write(unescape('%3Cscript src="static/js/jquery-1.10.2.min.js"%3E%3C/script%3E'))
   % end


%= javascript begin
    $('.expand ul').hide();

$('.comics').click(function() {
    $(this).find('ul').slideToggle();
});

% end
    


<div id="main" role="main" class="twelve columns offset-by-four">
        <header></header>

<div id="gallery" class="row">
<div class="four columns thumbnail alpha">
	<a href="6876611948_c384400261_o.jpg" class="gallery">
	<img src="thumbnails/6876611948_c384400261_o.jpg" alt="6876611948_c384400261_o.jpg"
		title="6876611948_c384400261_o.jpg" /></a>
</div>

<div class="four columns thumbnail">
	<a href="6876622310_1f967448ff_o.jpg" class="gallery">
        <img src="thumbnails/6876622310_1f967448ff_o.jpg" alt="6876622310_1f967448ff_o.jpg"
                title="6876622310_1f967448ff_o.jpg" /></a>
</div>

<div class="four columns thumbnail omega">
	<a href="6876671082_6a1484372b_o.jpg" class="gallery">
	<img src="thumbnails/6876671082_6a1484372b_o.jpg" alt="6876671082_6a1484372b_o.jpg"
	title="6876671082_6a1484372b_o.jpg" /></a>
</div>
           
<div class="four columns thumbnail alpha">
	<a href="7022713703_ee28921b0a_o.jpg" class="gallery">
	<img src="thumbnails/7022713703_ee28921b0a_o.jpg" alt="7022713703_ee28921b0a_o.jpg"
		title="7022713703_ee28921b0a_o.jpg" /></a>
</div>
            
<div class="four columns thumbnail">
	<a href="ART 075 edited.jpg" class="gallery">
        <img src="thumbnails/ART 075 edited.jpg" alt="ART 075 edited.jpg"
                title="ART 075 edited.jpg" /></a>
</div>
            
<div class="four columns thumbnail omega">
        <a href="ART 134 edited.jpg" class="gallery">
        <img src="thumbnails/ART 134 edited.jpg" alt="ART 134 edited.jpg"
                title="ART 134 edited.jpg" /></a>
</div>
            
<div class="four columns thumbnail alpha">
	<a href="double portrait.jpg" class="gallery">
        <img src="thumbnails/double portrait.jpg" alt="double portrait.jpg"
                title="double portrait.jpg" /></a>
</div>
            
<div class="four columns thumbnail">
	<a href="erin's seizure.jpg" class="gallery">
        <img src="thumbnails/erin's seizure.jpg" alt="erin's seizure.jpg"
                title="erin's seizure.jpg" /></a>
</div>
            
<div class="four columns thumbnail omega">
        <a href="everyday detail1.jpg" class="gallery">
        <img src="thumbnails/everyday detail1.jpg" alt="everyday detail1.jpg"
                title="everyday detail1.jpg" /></a>
</div>
            
<div class="four columns thumbnail alpha">
        <a href="everyday detail2.jpg" class="gallery">
        <img src="thumbnails/everyday detail2.jpg" alt="everyday detail2.jpg"
                title="everyday detail2.jpg" /></a>
</div>
            
<div class="four columns thumbnail">
	<a href="everyday.jpg" class="gallery">
        <img src="thumbnails/everyday.jpg" alt="everyday.jpg"
                title="everyday.jpg" /></a>
</div>
            
<div class="four columns thumbnail omega">
        <a href="img 029.JPG" class="gallery">
        <img src="thumbnails/img 029.JPG" alt="img 029.JPG"
                title="img 029.JPG" /></a>
</div>
            
<div class="four columns thumbnail alpha">
        <a href="puppet portrait.jpg" class="gallery">
        <img src="thumbnails/puppet portrait.jpg" alt="puppet portrait.jpg"
                title="puppet portrait.jpg" /></a>            
</div>
            
<div class="four columns thumbnail">
	<a href="self-portrait.jpg" class="gallery">
        <img src="thumbnails/self-portrait.jpg" alt="self-portrait.jpg"
                title="self-portrait.jpg" /></a>


      </div>
    </div>
  </div>
</div>


%= javascript '/static/js/jquery.colorbox.min.js'
%= javascript begin
    
      $(".gallery").colorbox({
        rel:"gallery",
        transition:"none",
        maxWidth: "90%",
        maxHeight: "90%",
        scalePhotos: true,
        current: "{current} / {total}",
        title: function () {
          title = this.title;
          if(this.hasAttribute("data-big")) {
            title += " (full size)".link(this.getAttribute("data-big"));
          }
          if(this.hasAttribute("data-date")) {
            title += this.getAttribute("data-date");
          }
          return title;
        },
        inline: function() {
          return this.hasAttribute("inline");
        }
      });
   
% end
  

</body>
</html>


@@ home.html.ep
%layout 'default';

@@ deadfather.html.ep
% layout 'default';

%= image '/comics/deadfather/thedeadfather030.jpg'
%= image '/comics/deadfather/thedeadfather032.jpg'
%= image '/comics/deadfather/thedeadfather035.jpg'
%= image '/comics/deadfather/thedeadfather038.jpg'
%= image '/comics/deadfather/thedeadfather042.jpg'
%= image '/comics/deadfather/thedeadfather047.jpg'

@@ ladolcevita.html.ep
% layout 'default';

%= image '/comics/la-dolce-vita/la-dolce-vita-1.jpg'
%= image '/comics/la-dolce-vita/la-dolce-vita-2.jpg'
%= image '/comics/la-dolce-vita/la-dolce-vita-3.jpg'

%= image '/comics/crazy/remember when you went crazy last year.jpg'

@@ illustration.html.ep
% layout 'gallery';

@@ contact.html.ep
% layout 'default';

<p><img src="samavatar.jpg" align="left" />
My name is Sami Alwani and I am a cartoonist and illustrator living and working in Baltimore, MD. I am currently studying at the Maryland Institute College of Art and will be graduating with a degree in Drawing in 2016.</p>
<hr />

<h4>CONTACT:</h4>
alwani.sami at gmail.com
<h4></h4>

Baltimore, MD, USA

@@ not_found.html.ep
% layout 'default';
404!?

@@ css/main.css
body {
  margin: 0;
  padding: 0;
  background-color: #ffffff;
  color: #4d4d4d;
  font-family: GaramondNo8 Regular;
  font-size: 14px;
}
a {
  color: #000000;
  text-decoration: none;
}


/*
a:hover:before{
content: ">";
}
*/

hr {
  color: #eeeeee;
  background-color: #eeeeee;
  height: 1px;
  border: none;
}

aside div#menz {
  padding: 15px;
  text-align: center;
}

aside div#menz ul {
 
  padding-left: 0;
  font-size: 13px;
  list-style-type: none;
}
aside div#menz ul li {
  display: inline;
  line-height: 3em;
}
aside div#menz ul li a {
  padding: 5px 15px 5px 15px;
  color: #999999;
}

.expand {
cursor: pointer;
}

@media screen and (min-width: 1024px) {
  aside {
    width: 180px;
    height: 100%;
    position: fixed;
    top: 0;
    left: 0;
    border-right: #eeeeee 2px solid;
  }

  aside div#menz {
    max-width: 192px;
    text-align: left;
  }
  aside div#menz ul li {
    display: block;
}
img {
    max-width: 100%;
    height: auto;
    overflow-x: hidden;
    overflow-y: hidden;

}
}

.expand {
cursor: pointer;
}

.comics {
cursor: pointer;
}

main {
    width: 75%;
    position: absolute;
    top: 0;
    left: 21%;
    overflow-x: hidden;
    overflow-y: hidden;
}

@media screen and (max-width: 1023px) {
 aside div#menz {
float: center;
}
img {
    max-width: 100%;
    height: auto;
    overflow-x: hidden;
    overflow-y: hidden;
    
}


}


#content {
} 
img {
    max-width: 100%;
    height: auto;
    overflow-x: hidden;
    overflow-y: hidden;
   
}



@@ css/expand.css

table {
    border-collapse: collapse;
    border-spacing: 0;
}

p {
    margin: 0 0 20px 0;
}

p img {
    margin: 0;
}

p.lead {
    font-size: 21px;
    line-height: 27px;
    color: #777;
}

em {
    font-style: italic;
}

strong {
    font-weight: bold;
    color: #333;
}

small {
    font-size: 80%;
}


hr {
    border: solid #ddd;
    border-width: 1px 0 0;
    clear: both;
    margin: 10px 0 30px;
    height: 0;
}

a:hover,a:focus {
    color: #000;
}

ul {
    list-style: none outside;
}

ol {
    list-style: decimal;
}

ol,ul.square,ul.circle,ul.disc {
    margin-left: 30px;
}

ul.square {
    list-style: square outside;
}

ul.circle {
    list-style: circle outside;
}

ul.disc {
    list-style: disc outside;
}

li p {
    line-height: 21px;
}

img.scale-with-grid {
    max-width: 100%;
    height: auto;
}

button::-moz-focus-inner,input::-moz-focus-inner {
    border: 0;
    padding: 0;
}

form {
    margin-bottom: 20px;
}

fieldset {
    margin-bottom: 20px;
}


select {
    padding: 0;
}

textarea {
    min-height: 60px;
}

label,legend {
    display: block;
    font-weight: bold;
    font-size: 13px;
}

select {
    width: 220px;
}

label span,legend span {
    font-weight: normal;
    font-size: 13px;
    color: #444;
}

.remove-bottom {
    margin-bottom: 0!important;
}

.half-bottom {
    margin-bottom: 10px!important;
}

.add-bottom {
    margin-bottom: 20px!important;
}

.container {
    position: relative;
    width: 960px;
    margin: 0 auto;
    padding: 0;
}

.container .column,.container .columns {
    float: left;
    display: inline;
    margin-left: 10px;
    margin-right: 10px;
}

.row {
    margin-bottom: 20px;
}

.column.alpha,.columns.alpha {
    margin-left: 0;
}

.column.omega,.columns.omega {
    margin-right: 0;
}

.container .one.column,.container .one.columns {
    width: 40px;
}

.container .two.columns {
    width: 100px;
}

.container .three.columns {
    width: 160px;
}

.container .four.columns {
    width: 220px;
}

.container .five.columns {
    width: 280px;
}

.container .six.columns {
    width: 340px;
}

.container .seven.columns {
    width: 400px;
}

.container .eight.columns {
    width: 460px;
}

.container .nine.columns {
    width: 520px;
}

.container .ten.columns {
    width: 580px;
}

.container .eleven.columns {
    width: 640px;
}

.container .twelve.columns {
    width: 700px;
}

.container .thirteen.columns {
    width: 760px;
}

.container .fourteen.columns {
    width: 820px;
}

.container .fifteen.columns {
    width: 880px;
}

.container .sixteen.columns {
    width: 940px;
}

.container .one-third.column {
    width: 300px;
}

.container .two-thirds.column {
    width: 620px;
}

.container .offset-by-one {
    padding-left: 60px;
}

.container .offset-by-two {
    padding-left: 120px;
}

.container .offset-by-three {
    padding-left: 180px;
}

.container .offset-by-four {
    padding-left: 240px;
}

.container .offset-by-five {
    padding-left: 300px;
}

.container .offset-by-six {
    padding-left: 360px;
}

.container .offset-by-seven {
    padding-left: 420px;
}

.container .offset-by-eight {
    padding-left: 480px;
}

.container .offset-by-nine {
    padding-left: 540px;
}

.container .offset-by-ten {
    padding-left: 600px;
}

.container .offset-by-eleven {
    padding-left: 660px;
}

.container .offset-by-twelve {
    padding-left: 720px;
}

.container .offset-by-thirteen {
    padding-left: 780px;
}

.container .offset-by-fourteen {
    padding-left: 840px;
}

.container .offset-by-fifteen {
    padding-left: 900px;
}

@media only screen and (min-width:768px) and (max-width:959px) {
    .container {
        width: 768px;
    }

    .container .column,.container .columns {
        margin-left: 10px;
        margin-right: 10px;
    }

    .column.alpha,.columns.alpha {
        margin-left: 0;
        margin-right: 10px;
    }

    .column.omega,.columns.omega {
        margin-right: 0;
        margin-left: 10px;
    }

    .alpha.omega {
        margin-left: 0;
        margin-right: 0;
    }

    .container .one.column,.container .one.columns {
        width: 28px;
    }

    .container .two.columns {
        width: 76px;
    }

    .container .three.columns {
        width: 124px;
    }

    .container .four.columns {
        width: 172px;
    }

    .container .five.columns {
        width: 220px;
    }

    .container .six.columns {
        width: 268px;
    }

    .container .seven.columns {
        width: 316px;
    }

    .container .eight.columns {
        width: 364px;
    }

    .container .nine.columns {
        width: 412px;
    }

    .container .ten.columns {
        width: 460px;
    }

    .container .eleven.columns {
        width: 508px;
    }

    .container .twelve.columns {
        width: 556px;
    }

    .container .thirteen.columns {
        width: 604px;
    }

    .container .fourteen.columns {
        width: 652px;
    }

    .container .fifteen.columns {
        width: 700px;
    }

    .container .sixteen.columns {
        width: 748px;
    }

    .container .one-third.column {
        width: 236px;
    }

    .container .two-thirds.column {
        width: 492px;
    }

    .container .offset-by-one {
        padding-left: 48px;
    }

    .container .offset-by-two {
        padding-left: 96px;
    }

    .container .offset-by-three {
        padding-left: 144px;
    }

    .container .offset-by-four {
        padding-left: 85px;
    }

    .container .offset-by-five {
        padding-left: 240px;
    }

    .container .offset-by-six {
        padding-left: 288px;
    }

    .container .offset-by-seven {
        padding-left: 336px;
    }

    .container .offset-by-eight {
        padding-left: 384px;
    }

    .container .offset-by-nine {
        padding-left: 432px;
    }

    .container .offset-by-ten {
        padding-left: 480px;
    }

    .container .offset-by-eleven {
        padding-left: 528px;
    }

    .container .offset-by-twelve {
        padding-left: 576px;
    }

    .container .offset-by-thirteen {
        padding-left: 624px;
    }

    .container .offset-by-fourteen {
        padding-left: 672px;
    }

    .container .offset-by-fifteen {
        padding-left: 720px;
    }
}

@media only screen and (max-width:767px) {
    .container {
        width: 300px;
    }

    .container .columns,.container .column {
        margin: 0;
    }

    .container .one.column,.container .one.columns,.container .two.columns,.container .three.columns,.container .four.columns,.container .five.columns,.container .six.columns,.container .seven.columns,.container .eight.columns,.container .nine.columns,.container .ten.columns,.container .eleven.columns,.container .twelve.columns,.container .thirteen.columns,.container .fourteen.columns,.container .fifteen.columns,.container .sixteen.columns,.container .one-third.column,.container .two-thirds.column {
        width: 300px;
    }

    .container .offset-by-one,.container .offset-by-two,.container .offset-by-three,.container .offset-by-four,.container .offset-by-five,.container .offset-by-six,.container .offset-by-seven,.container .offset-by-eight,.container .offset-by-nine,.container .offset-by-ten,.container .offset-by-eleven,.container .offset-by-twelve,.container .offset-by-thirteen,.container .offset-by-fourteen,.container .offset-by-fifteen {
        padding-left: 0;
    }
}

@media only screen and (min-width:480px) and (max-width:767px) {
    .container {
        width: 420px;
    }

    .container .columns,.container .column {
        margin: 0;
    }

    .container .one.column,.container .one.columns,.container .two.columns,.container .three.columns,.container .four.columns,.container .five.columns,.container .six.columns,.container .seven.columns,.container .eight.columns,.container .nine.columns,.container .ten.columns,.container .eleven.columns,.container .twelve.columns,.container .thirteen.columns,.container .fourteen.columns,.container .fifteen.columns,.container .sixteen.columns,.container .one-third.column,.container .two-thirds.column {
        width: 420px;
    }
}


@media screen and (min-width: 960px) and (max-width: 1023px) {
.container .offset-by-four {
padding-left: 120px

}
}

.container:after {
    content: "\0020";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}

.clearfix:before,.clearfix:after,.row:before,.row:after {
    content: '\0020';
    display: block;
    overflow: hidden;
    visibility: hidden;
    width: 0;
    height: 0;
}

.row:after,.clearfix:after {
    clear: both;
}

.row,.clearfix {
    zoom: 1;
}

.clear {
    clear: both;
    display: block;
    overflow: hidden;
    visibility: hidden;
    width: 0;
    height: 0;
}

#colorbox,#cboxOverlay,#cboxWrapper {
    position: absolute;
    top: 0;
    left: 0;
    z-index: 9999;
    overflow: hidden;
}

#cboxWrapper {
    max-width: none;
}

#cboxOverlay {
    position: fixed;
    width: 100%;
    height: 100%;
}

#cboxMiddleLeft,#cboxBottomLeft {
    clear: left;
}

#cboxContent {
    position: relative;
}

#cboxLoadedContent {
    overflow: auto;
    -webkit-overflow-scrolling: touch;
}

#cboxTitle {
    margin: 0;
}

#cboxLoadingOverlay,#cboxLoadingGraphic {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}

#cboxPrevious,#cboxNext,#cboxClose,#cboxSlideshow {
    cursor: pointer;
}

.cboxPhoto {
    float: left;
    margin: auto;
    border: 0;
    display: block;
    max-width: none;
    -ms-interpolation-mode: bicubic;
}

.cboxIframe {
    width: 100%;
    height: 100%;
    display: block;
    border: 0;
    padding: 0;
    margin: 0;
}

#colorbox,#cboxContent,#cboxLoadedContent {
    box-sizing: content-box;
    -moz-box-sizing: content-box;
    -webkit-box-sizing: content-box;
}

#cboxOverlay {
    background: #000;
    opacity: .9;
    filter: alpha(opacity = 90);
}

#colorbox {
    outline: 0;
}

#cboxContent {
    margin-top: 20px;
    background: #000;
}

.cboxIframe {
    background: #fff;
}

#cboxError {
    padding: 50px;
    border: 1px solid #ccc;
}

#cboxLoadedContent {
    border: 5px solid #000;
    background: #fff;
}

#cboxTitle {
    position: absolute;
    top: -20px;
    left: 0;
    color: #ccc;
}

#cboxCurrent {
    position: absolute;
    top: -20px;
    right: 0;
    color: #ccc;
}

#cboxLoadingGraphic {
    background: url(../loading.gif) no-repeat center center;
}

#cboxPrevious,#cboxNext,#cboxSlideshow,#cboxClose {
    border: 0;
    padding: 0;
    margin: 0;
    overflow: visible;
    width: auto;
    background: none;
}

#cboxPrevious:active,#cboxNext:active,#cboxSlideshow:active,#cboxClose:active {
    outline: 0;
}

#cboxSlideshow {
    position: absolute;
    top: -20px;
    right: 90px;
    color: #fff;
}

#cboxPrevious {
    position: absolute;
    top: 50%;
    left: 5px;
    margin-top: -32px;
    background: url(../controls.png) no-repeat top left;
    width: 28px;
    height: 65px;
    text-indent: -9999px;
}

#cboxPrevious:hover {
    background-position: bottom left;
}

#cboxNext {
    position: absolute;
    top: 50%;
    right: 5px;
    margin-top: -32px;
    background: url(../controls.png) no-repeat top right;
    width: 28px;
    height: 65px;
    text-indent: -9999px;
}

#cboxNext:hover {
    background-position: bottom right;
}

#cboxClose {
    position: absolute;
    top: 5px;
    right: 5px;
    display: block;
    background: url(../controls.png) no-repeat top center;
    width: 38px;
    height: 19px;
    text-indent: -9999px;
}

#cboxClose:hover {
    background-position: bottom center;
}

ul {
    list-style: disc outside;
    padding-left: 20px;
}

.container {
    margin: 0 0 0 0px;
}


.thumbnail {
    text-align: center;
}

.thumbnail img {
    max-width: 100%;
    height: auto;
    margin: 0 5px 5px 0;
    border: 10px solid #fff;
    border-radius: 2px 2px 2px 2px;
    box-shadow: 0 0 3px #B1B1B1;
    padding: 0 0 2px;
}

.thumbnail img:hover {
    box-shadow: 0 0 5px #818181;
}

.album_title {
    display: block;
}

#cboxTitle {
    max-width: 90%;
}

#cboxTitle a,#cboxTitle a:visited {
    color: #ccc;
}

@media only screen and (min-width:767px) {
    header {
        margin-top: 40px;
    }
}


@media only screen and (max-width:767px) {
    .container {
        padding-bottom: 40px;
    }
}


body {
  margin: 0;
  padding: 0;
  background-color: #ffffff;
  color: #4d4d4d;
  font-family: GaramondNo8 Regular;
  font-size: 16px;
}
a {
  color: #000000;
  text-decoration: none;
}
hr {
  color: #eeeeee;
  background-color: #eeeeee;
  height: 1px;
  border: none;
}

aside div#menz {
  padding: 15px;
  text-align: center;
}

aside div#menz ul {

  padding-left: 0;
  font-size: 13px;
  list-style-type: none;
}
aside div#menz ul li {
  display: inline;
  line-height: 3em;
}
aside div#menz ul li a {
  padding: 5px 15px 5px 15px;
  color: #999999;
}
.expand {
cursor: pointer;
}
@media screen and (min-width: 1024px) {
  aside {
    width: 180px;
    height: 100%;
    position: fixed;
    top: 0;
    left: 0;
    border-right: #eeeeee 2px solid;
  }

  aside div#menz {
    max-width: 192px;
    text-align: left;
  }
  aside div#menz ul li {
    display: block;

}

.expand {
cursor: pointer;
}


main {
    width: 75%;
    position: absolute;
    top: 0;
    left: 21%;
    overflow-x: hidden;
    overflow-y: hidden;
  }

#content {
}
