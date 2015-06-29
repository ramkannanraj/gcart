<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery.flexisel.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700italic,700,400italic' rel='stylesheet' type='text/css'>
<link href="catalog/view/theme/gemcart/stylesheet/style.css" rel="stylesheet">
<link href="catalog/view/theme/gemcart/stylesheet/menu1.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
<div id="top-strip"></div>
<nav id="top-strip1">
  <div class="container">
    <div class="row">
            <div  class="col-sm-2 col-md-2 col-xs-12">
            <p>Call <?php echo $telephone; ?></p>
            </div>
            <div  class="col-sm-6 col-md-6 col-xs-12">
            <p><strong>OFFERS</strong> FLAT 20% OFF O DIAMOND AND GEMSTONE JEWELLERY ORDERS OVER RS.20.000</p>
            </div>
            <div  class="col-sm-4 col-md-4 col-xs-12">
             <div class="bs-example">
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary">My Account </button>
                        <button type="button" class="btn btn-primary">Wishlist (0)</button>
                        <div class="btn-group">
                            <button type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Try @ Home (0) <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Try @ Home (0)</a></li>
                                <li><a href="#">Try @ Home (0)</a></li>
                                 
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  </div>
</nav>
<div id="banner-strip">
    <div class="container center-margin">
        <div id="header">
            <div class="row dots">
                <div  class="col-sm-7 col-md-7 col-xs-12">
                  <?php if ($logo) { ?>
                    <a href="<?php echo $home; ?>">
                      <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" class="img-responsive" />
                    </a>
                    <?php } else { ?>
                      <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                    <?php } ?>
                </div>

                    <div  class="col-sm-4 col-md-4 col-xs-12"> 
                            <form class="navbar-form" role="search">
                                    <div class="form-group">
                                    <?php echo $search; ?>
                                    </div>
                            </form>
                    </div>


                <div  class="col-sm-1 col-md-1 col-xs-12 shopping"><?php echo $cart; ?> </div>
            </div>
          <!-- Mega Menu -->
                <?php if ($categories) { ?>
                    <nav id="menu" class="navbar">
                      <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                      </div>
                      <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav">
                          <?php foreach ($categories as $category) { ?>
                          <?php if ($category['children']) { ?>
                          <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                            <div class="dropdown-menu">
                              <div class="dropdown-inner">
                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                <ul class="list-unstyled">
                                  <?php foreach ($children as $child) { ?>
                                  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                  <?php } ?>
                                </ul>
                                <?php } ?>
                              </div>
                              <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                          </li>
                          <?php } else { ?>
                          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                          <?php } ?>
                          <?php } ?>
                        </ul>
                      </div>
                    </nav>
                <?php } ?>
          <!-- Mega Menu End -->
    
        </div>
    </div>
    <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
  <!-- Indicators -->
  
  <!--<ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>-->
      <div class="carousel-inner">
        <div class="item active"> <img src="catalog/view/theme/gemcart/stylesheet/images/01.jpg" style="width:100%;height:110%" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              
              
            </div>
          </div>
        </div>
        <div class="item"> <img src="catalog/view/theme/gemcart/stylesheet/images/02.png" style="width:100%" data-src="" alt="Second    slide">
          <div class="container">
            <div class="carousel-caption">
          
            </div>
          </div>
        </div>
      </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
    </div>

</div>
<!-- <header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header> -->
