<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <!-- START -->
        <!--showing -->
<!--<div id="showing">
<div class="container">
<div class="row">
 <div  class="col-sm-12 col-md-12 col-xs-12 "><h1>SHOWING 505 DIAMONDS</h1></div>
 </div></div></div> -->
<!--showing end -->
  
 

<!--showing -->
 <div id="page">
<div class="container">
<div class="row">
 <div class="bs-example tab-menu">
    <nav id="myNavbar" class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
             </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                     <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle "><h1>Select your <br/><strong>Diomand</strong></h1><b><img src="image/catalog/menu-diomand.png" /></b></a>
                        <ul class="dropdown-menu">
                             <h2>Your Diomand</h2>
                             <div class="row">
                      <div  class="col-sm-3 col-md-3 col-xs-12 "><img src="image/catalog/review2.jpg" /></div>
                     <div  class="col-sm-6 col-md-6 col-xs-12 "><p>0.23 Carat / Round</p></div>
                     <div  class="col-sm-3 col-md-3 col-xs-12 "><p>$333</p></div>
                     </div>
                     <hr/>
                     <div class="row ">
                     <div  class="col-sm-6 col-md-6 col-xs-12 changes"><a href="#">View</a></div>
                      <div  class="col-sm-6 col-md-6 col-xs-12 changes"><a href="#">Changes</a></div>
                     </div>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="dropdown active">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle"><h1>Select your <br/><strong>Setting</strong></h1><b><img src="image/catalog/setting.png" /></b>
                        </b></a>
                        <ul class="dropdown-menu">
                             <h2>Your Diomand</h2>
                             <div class="row">
                                  <div  class="col-sm-3 col-md-3 col-xs-12 "><img src="image/catalog/review2.jpg" /></div>
                                 <div  class="col-sm-6 col-md-6 col-xs-12 "><p>0.23 Carat / Round</p></div>
                                 <div  class="col-sm-3 col-md-3 col-xs-12 "><p>$333</p></div>
                                 </div>
                                 <hr/>
                                 <div class="row ">
                                 <div  class="col-sm-6 col-md-6 col-xs-12 changes"><a href="#">View</a></div>
                                  <div  class="col-sm-6 col-md-6 col-xs-12 changes"><a href="#">Changes</a></div>
                                 </div>
                        </ul>
                        
                        
                    </li>
                </ul>
                
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle"><h1 ><strong>Completed</strong>Select ring size</h1><b><img src="image/catalog/select-ring.png" /></b>
                        </b></a>
                        <ul class="dropdown-menu">
                             <h2>Your Diomand</h2>
                             <div class="row">
                                  <div  class="col-sm-3 col-md-3 col-xs-12 "><img src="image/catalog/review2.jpg" /></div>
                                 <div  class="col-sm-6 col-md-6 col-xs-12 "><p>0.23 Carat / Round</p></div>
                                 <div  class="col-sm-3 col-md-3 col-xs-12 "><p>$333</p></div>
                                 </div>
                                 <hr/>
                                 <div class="row ">
                                 <div  class="col-sm-6 col-md-6 col-xs-12 changes"><a href="#">View</a></div>
                                  <div  class="col-sm-6 col-md-6 col-xs-12 changes"><a href="#">Changes</a></div>
                                 </div>
                        </ul>
                        
                        
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>
    </nav>
 
    </div></div></div> 
<!--showing end -->
<br class="spacer"/>

<!--accordion -->
 <div class="container"> 
<div class="row">
  <div  class="col-sm-12 col-md-12 col-xs-12 filter-btn"  > 
   <!--tab -->
        
     <section id="multiple" data-accordion-group>
          <div data-content>
           <article data-accordion>
            <button data-control>Filter by: Solitaire, Sidestone</button>
            <div data-content>
              <article>
              <div class="article-content">
              <h1>Price</h1>
              <div class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slider-range"><div style="left: 6.8%; width: 61.8%;" class="ui-slider-range ui-widget-header ui-corner-all"></div><span style="left: 6.8%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span><span style="left: 68.6%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span></div>
<p><input value="$34 - $343" id="amount" readonly="readonly" style=" border:#adadad solid 1px; padding:7px 3px; font-size:15px; text-align:center; margin-top:10px;" type="text"></p>

        <h1>Engagement Ring Styles</h1>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        <li><a href="#"><img src="image/catalog/engagement-img.jpg" />
        <h2>Solitaire (68)</h2> </a></li>
        
        <!-- -->
 </div>
 
        <div class="article-content1">
            <h1>Metal</h1>
            
            <li><img src="image/catalog/metal-1.jpg" /><h2>Paltium (141)</h2></li>
            <li><img src="image/catalog/metal-2.jpg" /><h2>14k White Gold (75)</h2></li>
            <li><img src="image/catalog/metal-3.jpg" /><h2>14k yellow Gold (17)</h2></li>
            <li><img src="image/catalog/metal-4.jpg" /><h2>14k Rose Gold (4)</h2></li>
            <li><img src="image/catalog/metal-5.jpg" /><h2>18K White Gold (26)</h2></li>
            <li><img src="image/catalog/metal-6.jpg" /><h2>18K yellow Gold (26)</h2></li>
            <li><img src="image/catalog/metal-7.jpg" /><h2>18K Rose Gold (2)</h2></li>
            
        </div>           
<!-- -->

</article>
           
            </div>
          </article>  
           
           
  <div class="line-1"> </div>
     <article data-accordion>
            <button data-control>Sort By: Best Sellers</button>
            <div data-content>
              <article>
  <div class="article-content2">
  <li>Price: Low to High</li><li>Price: Hight to Low</li><li>Best Sellers</li><li>Product Rating</li><li>Newest</li>
  </div>
              </article>
           
              </div>
      </section>
<!--tab end -->
      
      
 <hr/>
     <div class="settig-list">
         <ul>
             <li><img src="image/catalog/silver.jpg" /><p>Petite Solitaire Engagement Ring in Platium</p><img src="image/catalog/stars.png" /> <h2>$850</h2></li>
              <li><img src="image/catalog/silver.jpg" /><p>Petite Solitaire Engagement Ring in Platium</p><img src="image/catalog/stars.png" /> <h2>$850</h2></li>
               <li><img src="image/catalog/silver.jpg" /><p>Petite Solitaire Engagement Ring in Platium</p><img src="image/catalog/stars.png" /> <h2>$850</h2></li>
                <li><img src="image/catalog/silver.jpg" /><p>Petite Solitaire Engagement Ring in Platium</p><img src="image/catalog/stars.png" /> <h2>$850</h2></li>
         <li><img src="image/catalog/silver.jpg" /><p>Petite Solitaire Engagement Ring in Platium</p><img src="image/catalog/stars.png" /> <h2>$850</h2></li>
              <li><img src="image/catalog/silver.jpg" /><p>Petite Solitaire Engagement Ring in Platium</p><img src="image/catalog/stars.png" /> <h2>$850</h2></li>
               <li><img src="image/catalog/silver.jpg" /><p>Petite Solitaire Engagement Ring in Platium</p><img src="image/catalog/stars.png" /> <h2>$850</h2></li>
                <li><img src="image/catalog/silver.jpg" /><p>Petite Solitaire Engagement Ring in Platium</p><img src="image/catalog/stars.png" /> <h2>$850</h2></li>

         </ul>
      </div>
  
</div></div></div>
</div>
  <!-- End SlidesJS Required -->
 
 
<!--tab -->
	<!--<script src="catalog/view/js/jquery-1.js"></script> -->

 <script src="catalog/view/javascript/jquery/jquery.mixitup.min.js"></script>
<script src="catalog/view/javascript/jquery/main.js"></script> 
 <link rel="stylesheet" type="text/css" href="catalog/view/theme/gemcart/stylesheet/jquery.accordion1.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/gemcart/stylesheet/demo1.css" />


 <!--tab -->
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.accordion.js"></script> 

<script type="text/javascript">$(document).ready(function() {
        $('#only-one [data-accordion]').accordion();

        $('#multiple [data-accordion]').accordion({
          singleOpen: false
        });

        $('#single[data-accordion]').accordion({
          transitionEasing: 'cubic-bezier(0.455, 0.030, 0.515, 0.955)',
          transitionSpeed: 200
        });
      });
    </script>
      <!-- END -->
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>