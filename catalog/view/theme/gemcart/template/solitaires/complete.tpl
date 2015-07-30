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
  <div  class="col-sm-12 col-md-12 col-xs-12 ">
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
                    <li class="dropdown ">
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
                    <li class="dropdown active">
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
</div>

    </div></div></div> 
<!--showing end -->
<br class="spacer"/>


<!--accordion -->
 <div class="container"> 
<div class="row">


  <div  class="col-sm-6 col-md-6 col-xs-12"  style="margin-top:165px;" >
<div id="rg-gallery" class="rg-gallery">
          <div class="rg-thumbs">
            <!-- Elastislide Carousel Thumbnail Viewer -->
            <div class="es-carousel-wrapper">
               
              <div class="es-carousel">
                <ul>
                  <li><a href="#"><img src="image/catalog/thumbs/1.jpg" data-large="image/catalog/1-1.jpg" alt="image01"/></a></li>
                  <li><a href="#"><img src="image/catalog/thumbs/2.jpg" data-large="image/catalog/2-1.jpg" alt="image01"/></a></li>
                  <li><a href="#"><img src="image/catalog/thumbs/3.jpg" data-large="image/catalog/3-1.jpg" alt="image01"/></a></li>
                  <li><a href="#"><img src="image/catalog/thumbs/4.jpg" data-large="image/catalog/4-1.jpg" alt="image01"/></a></li>
                </ul>
              </div>
            </div>
            <!-- End Elastislide Carousel Thumbnail Viewer -->
          </div><!-- rg-thumbs -->
        </div>
</div>         

  <div  class="col-sm-6 col-md-6 col-xs-12"  > 
        <h2 style="font-size:20px; font-weight:bold;"> 2.01-Carat Blue Nile Signature Asscher Cut Diamond</h2>
       <hr/>
        <div class="row">
        <div  class="col-sm-7 col-md-7 col-xs-12"  ><h3 style="margin:0 0 30px">$26,677</h3></div>
        <div  class="col-sm-5 col-md-5 col-xs-12"  >
                    <div class="dropdown">
                      <button class="btn btn-primary dropdown-toggle add-this" type="button" data-toggle="dropdown">Add this Diamond
                      <span class="caret"></span></button>
                      <ul class="dropdown-menu">
                        <li><a href="#">Add to your ring</a></li>
                        <li><a href="#">Add to your pendant</a></li>
                        <li><a href="#">Add to shopping basket</a></li>
                        <li><a href="#">Add to diamond comparison</a></li>
                      </ul>
                    </div></div>
        </div>
        
         
        <p>Order now for free delivery on Thursday, July 30.</p>

 <table class="table table-striped">
    <thead>
      <tr>
        <th>Summary</th>
        <th style=" float:right"><img src="image/catalog/email.png" style="margin-right:15px;" /><img src="image/catalog/fax.png" /></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Stock number</td>
        <td>LD01738718</td>
      </tr>
      <tr>
        <td>Price per carat</td>
        <td>$13,272</td>
      </tr>
      <tr>
        <td>Carat weight</td>
        <td>2.01</td>
      </tr>
      <tr>
        <td>Shape</td>
        <td>Asscher</td>
      </tr>
      <tr>
        <td>Cut</td>
        <td>Sig. Ideal</td>
      </tr>
      <tr>
        <td>Color</td>
        <td>E</td>
      </tr>
      <tr>
        <td>Clarity</td>
        <td>VVS2</td>
      </tr>
      <tr>
        <td>Length/width ratio</td>
        <td>1.2</td>
      </tr>
      <tr>
        <td>Depth %</td>
        <td>66.8%</td>
      </tr>
      <tr>
        <td>Table %</td>
        <td>60.0%</td>
      </tr>
      <tr>
        <td>Polish</td>
        <td>Excellent</td>
      </tr>
      <tr>
        <td>Symmetry</td>
        <td>Very Good</td>
      </tr>
      <tr>
        <td>Girdle</td>
        <td>Slightly Thick to Thick</td>
      </tr>
      <tr>
        <td>Culet</td>
        <td>Small</td>
      </tr>
      <tr>
        <td>Fluorescence</td>
        <td>Medium</td>
      </tr>
      <tr>
        <td>Measurements</td>
        <td>6.95 x 6.84 x 4.57 mm</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </tbody>
  </table>
 
 
 <div class="row">
      <div  class="col-sm-8 col-md-8 col-xs-12"  > <h3 style="font-size:17px; font-weight:bold">NEED HELP?</h3>
<p>Your questions or feedback are always welcome at Gemcart. Join in a conversation with one of our Diamond and Jewelry Consultants to help you make the right decision.</div> 
</p>      

<div  class="col-sm-4 col-md-4 col-xs-12" style="padding-top:15px"  >
<p><img src="image/catalog/live-chat.jpg" style="display:inline-block; margin-right:15px;" />Live Chat</p>
 <p><img src="image/catalog/phone.jpg" style="display:inline-block; margin-right:15px;" />1 888-565-7641</p>
<p><img src="image/catalog/email-id.jpg" style="display:inline-block; margin-right:15px;" />Email Us</p>
 </div> 
       </div><!--row -->    
</div>



</div></div>  
<!--showing end -->

 

</div>
  <!-- End SlidesJS Required -->
      <!--on off -->
 <!--gallery -->
 		<script type="text/javascript" src="catalog/view/javascript/js/jquery.tmpl.min.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/js/jquery.elastislide.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/js/gallery.js"></script>
      <!-- END -->
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>