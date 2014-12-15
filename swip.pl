#!/usr/bin/env perl
use Mojolicious::Lite;


get '/' => sub {
  my $self = shift;
  $self->render('home');
};

get '/art' => sub {
  my $self = shift;
  $self->render('art');
};

get '/comics' => sub {
  my $self = shift;
  $self->render('comics');
};

get '/illustration' => sub {
  my $self = shift;
  $self->render('illustration');
};

get '/contact' => sub {
  my $self = shift;
  $self->render('contact');
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

<aside>
  <div id="meta">
    <ul style="list-style: none;">
      <h3><li><a href="/">Sami Alwani</a></li></h3>
      <li><a href="/art">Art</a></li>
      <li><a href="/comics">Comics</a></li>
      <li><a href="/illustration">Illustration</a></li>
      <li><a href="/contact">About/Contact</a></li>    
      <li><a href="http://samialwani.blogspot.ca/">Sketchblog</a></li>
    </ul>
  </div>
</aside>

<main>


<div id="content">
    <%= content %>
</div>


</main>
</body>
</html>


@@ home.html.ep
% layout 'default';
home

@@ art.html.ep
% layout 'default';
art

@@ comics.html.ep
% layout 'default';
comics

@@ illustration.html.ep
% layout 'default';
illustration

@@ contact.html.ep
% layout 'default';
alwani.sami@gmail.com



@@ css/main.css
body {
  margin: 0;
  padding: 0;
  background-color: #ffffff;
  color: #4d4d4d;
  font-family: "Lucida Grande", tahoma, sans-serif;
  font-size: 18px;
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

aside div#meta {
  padding: 15px;
  text-align: center;
}
aside div#meta h3 {
  margin: 15px 0 5px 0;
}
aside div#meta ul {
  margin: 40px 0 0 0;
  padding-left: 0;
  font-size: 16px;
  list-style-type: none;
}
aside div#meta ul li {
  display: inline;
  line-height: 3em;
}
aside div#meta ul li a {
  padding: 5px 15px 5px 15px;
  color: #999999;
}

@media screen and (min-width: 1024px) {
  aside {
    width: 20%;
    height: 100%;
    position: fixed;
    top: 0;
    left: 0;
    border-right: #eeeeee 1px solid;
  }
aside h3 {
    margin: 10px 0 0 0;
  }
  aside div#meta {
    max-width: 192px;
    text-align: left;
  }
  aside div#meta ul li {
    display: block;
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
}

