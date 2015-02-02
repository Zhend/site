#!/usr/bin/env perl
use Mojolicious::Lite;
use strict;
use warnings;

plugin 'PODRenderer';

get '/' => sub {
  my $self = shift;
  $self->render('home');
};

get '/blog' => sub {
  my $self = shift;
  $self->render('blog');
};

get '/music' => sub { 
  my $self = shift;
  $self->render('music');
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

<div id="header">
  <img class="profile" src="/images/grey.png" />
  <a class="home" href="/" alt="Home"></a>
  <ul class="toc">
    <li><a href="/">Home</a></li>
    <li><a href="/blog">Blog</a></li>
    <li><a href="/music">Music</a></li>
  </ul>
</div>

<div id="main">
   <div id="box-top"></div>

  <div id="content">
    <%= content %>
  </div>

  <div id="box-bottom"></div>
</div>

<div id="footer">
   <ul>
      <li><a href="http://github.com/Zhend">Github</a></li>    
   </ul>
</div>
</body>
</html>

@@ home.html.ep
% layout 'default';
<h1>Home</h1>
Hello.

@@ blog.html.ep
% layout 'default';
<h1>Blog</h1>
This is a test.

@@ music.html.ep
% layout 'default';
<h1>Music</h1>
Projects:

<ul><li>Halig imperial orchestra</li></ul>
<ul><li><a href="http://pitchfork.com/thepitch/479-down-is-up-23-belave-and-major-tendons-compilation/">Belave - darlet on the brush</a></li></ul>


@@ css/main.css
body {
   width: 100%;
   margin: 0;
   font-family: "Lucida Grande", tahoma, sans-serif;
   font-size: 100%;
   background-color: #0E0E0E;
   background-image: url( /images/background.gif );
   background-repeat: repeat-x;
}
.hidden {
   display: none;
}
.highlighted {
   /*background-color: #FFFFB1;*/
}

.dp-highlighter {
   font-family: Consolas,Monaco,Lucida Console,Liberation Mono,DejaVu Sans Mono,Bitstream Vera Sans Mono,Courier New;
   font-size: 1em;
   -moz-border-radius: 6px;
   -webkit-border-radius: 6px;
   padding: 3px;
}
.dp-highlighter ol li, .dp-highlighter .columns div {
   line-height: inherit;
}
a {
   color: #0D5B9E;
}
h1 {
   padding: 0 0 10px;
   margin: 0;
   font-size: 1.3em;
}
ul.horizontal-list {
   color: gray;
   overflow: auto;
   margin: 0;
   padding: 0;
   position: relative;
   left: -20px;
}
ul.horizontal-list li {
   float: left;
   margin-left: 24px;
}
ul.spaced {
   list-style-type: disc;
}
.spaced li {
   padding: 10px 0;
}
table.structure {
   border: dotted black 1px;
   border-collapse: collapse;
   width: 100%;
}
table.structure td {
   border: dotted black 1px;
   border-collapse: collapse;
   padding: 10px;
}
#header {
   margin: auto;
   height: 140px;
   width: 1000px;
   position: relative;
}
#header a.home {
   height: 135px;
   width: 140px;
   display: block;
   position: absolute;
   left: 70px;
   top: 15px;
   z-index: 0; /* for IE7 - keep boxtop in front of profile picture */
}
#header img.profile {
   border: 0;
   position: absolute;
   top: 40px;
   left: -15px;
   z-index: -1; /* keep profile picture behind white content box */
}

#header .toc {
   font-size: 1.2em;
   margin: 0;
   padding: 0;
   position: absolute;
   z-index: 10;
   right: 30px;
   bottom: 0px;
}
#header .toc li {
   display: inline;
   margin-right: 5px;
}
#header .toc li a {
   text-decoration: none;
   color: white;
}
#main {
   margin: auto;
   width: 1000px;
   overflow: auto;
}
#box-top {
   background-image: url( ../images/box-top.png );
   background-repeat: no-repeat;
   height: 39px;
   position: relative;
   z-index: 1; /* for IE7 - keep boxtop in front of profile picture */
}
#content {
   background-image: url( ../images/box-middle.gif );
   background-repeat:repeat-y;
   padding: 0 30px 0 30px;
   /* padding: 1px 45px 10px 35px; */
   /* padding-left: 35px; */
   /* width: 98%; */
   overflow: hidden;
   min-height: 400px;
   position: relative;
   z-index: 1; /* for IE7 - keep boxtop in front of profile picture */
}
#box-bottom {
   background-image: url( ../images/box-bottom.png );
   background-repeat: no-repeat;
   height: 39px;
}

#footer {
   height: 90px;
   margin: auto;
   width: 950px;
   font-size: 1em;
   text-align: center;
}
   #footer ul {
      padding: 0;
      margin: 10px;
      position: relative;
   }
   #footer ul.sub {
      display: none;
      font-size: 0.8em;
      opacity: 0.9;
   }
   #footer ul li.key {
      display: none;
      position: absolute;
      top: -5px;
      left: 0px;
      color: #272929;
      font-size: 1.5em;
   }
   #footer ul li {
      display: inline;
   }
   #footer ul li a {
      color: #3D4040;
      padding: 0 5px;
   }

#iphone {
   position: relative;
   top: 13px;
   width: 900px;
   overflow: hidden;
}
#iphone .display {
   float: left;
}
#iphone p {
   font-size: 0.9em;
}
#iphone .description {
   float: left;
   position: relative;
   top: 130px;
   left: 30px;
   width: 600px;
}
#iphone .display img {
   display: block;
}
#iphone .display img.badge {
   position: relative;
   left: 22px;
}
