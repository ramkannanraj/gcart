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
 </div></div></div>
 --><!--showing end -->
  
 

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
            <div class="collapse navbar-collapse diomand-strip" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                     <li class="dropdown ">
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
                    <li class="dropdown">
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
<div  class="col-sm-6 col-md-6 col-xs-12"  > 
<img src="image/catalog/review.jpg" />
   <br class="spacer"/>   <br class="spacer"/>
   <div class="dots"></div>
       <div class="row">
      <div  class="col-sm-8 col-md-8 col-xs-12"  > <h3 style="font-size:17px; font-weight:bold">NEED HELP?</h3>
<p>Your questions or feedback are always welcome at Blue Nile. Join in a conversation with one of our Diamond and Jewelry Consultants to help you make the right decision.</div> 
</p>      

<div  class="col-sm-4 col-md-4 col-xs-12" style="padding-top:15px"  >
<p><img src="image/catalog/live-chat.jpg" style="display:inline-block; margin-right:15px;" />Live Chat</p>
 <p><img src="image/catalog/phone.jpg" style="display:inline-block; margin-right:15px;" />1 888-565-7641</p>
<p><img src="image/catalog/email-id.jpg" style="display:inline-block; margin-right:15px;" />Email Us</p>
 </div> 
       </div><!--row -->
</div>

<div  class="col-sm-6 col-md-6 col-xs-12 solitaires-details"  >
 <h1>Review Your Ring</h1> 
  <p>Set in 18 kt yellow gold ( 2gms ) with Diamonds (0.13 Ct, I,J- SI ) Certified by SGL</p>
  <div class="dots"></div>
  <div class="row">
   <div  class="col-sm-6 col-md-6 col-xs-12"  >
   <h2>Rs . 13,553</h2>
   <p>(Subtotal)</p>
   </div>
    <div  class="col-sm-6 col-md-6 col-xs-12"  >
    <h3>Order now for free delivery on <br/>Friday, July 31.</h3>
     </div><!--col -->
   </div><!--row -->
   
   
    <div class="row">
    <div  class="col-sm-6 col-md-6 col-xs-12"  >
     <button class="add-to-cart">Add to Basket</button>
     </div>
  
      <div  class="col-sm-6 col-md-6 col-xs-12"  >
      <button class="buy-now">Add to Wish List</button>
     </div>
     </div>
        <br class="spacer"/>
      <div class="row">
    <div  class="col-sm-6 col-md-6 col-xs-12"  >
      <img src="image/catalog/stars.png" />
      <p>(35 Customer ratings)</p>
     </div>
  
      <div  class="col-sm-6 col-md-6 col-xs-12"  >
      <div class="purchase-social1">
 <li><img src="image/catalog/purchase-so-1.jpg" /></li>
 <li><img src="image/catalog/purchase-so-2.jpg" /></li>
 <li><img src="image/catalog/purchase-so-3.jpg" /></li>
  <li><img src="image/catalog/purchase-so-4.jpg" /></li>
   <li><img src="image/catalog/purchase-so-5.jpg" /></li>
   </div>

     </div>
     </div>   
     
     
    
    <div class="dots"></div>
       <br class="spacer"/>
  
  <div class="row">
    <div  class="col-sm-12 col-md-12 col-xs-12"  >
    <p>Select your ring size</p>
    <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[230]" value="9" type="radio">
           <label for="option[230]">3.4</label>
        </div>
        <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[2040]" value="9" type="radio">
           <label for="option[2040]">4</label>
        </div>
        <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[240]" value="9" type="radio">
           <label for="option[240]">4.5</label>
        </div>
        <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[340]" value="9" type="radio">
           <label for="option[340]">5</label>
        </div>
         <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[341]" value="9" type="radio">
           <label for="option[341]">5.5</label>
        </div>
        
         <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[342]" value="9" type="radio">
           <label for="option[342]">6</label>
        </div>
        
         <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[343]" value="9" type="radio">
           <label for="option[343]">6.5</label>
        </div>
        
         <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[3404]" value="9" type="radio">
           <label for="option[3404]">7</label>
        </div>
         <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[3405]" value="9" type="radio">
           <label for="option[3405]">7.5</label>
        </div>
        
         <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[346]" value="9" type="radio">
           <label for="option[346]">8</label>
        </div>
        
         <div class="details-radio">                  
           <input name="option[239]" class="thumb"  val="no_image" id="option[347]" value="9" type="radio">
           <label for="option[347]">8.5</label>
        </div>
        
    </div>
    </div><!--row -->
  
      <div class="dots"></div>
      
     
  <div class="row">
    <div  class="col-sm-12 col-md-12 col-xs-12"  >
    <h3>If you don't see you rig size, please call 1 889-565-7641. we may still be able to help you</h3>
    <p>The total diamond carat weight of your ring is 0.30.</p>
    </div>
  </div>
  
    <div class="dots"></div>

<br class="spacer"/> 
<div class="row">
    <div  class="col-sm-3 col-md-3 col-xs-12"  >
      <img src="image/catalog/review1.jpg" />
        </div> 
    <div  class="col-sm-6 col-md-6 col-xs-12"  >
        <p>Round 0.23 ct. Diamond
        Color: EClarity: SI2Cut: Good </p>
        <p>Stock #: LD06109935</p>
    </div> 
    <div  class="col-sm-3 col-md-3 col-xs-12"  >
        <p>$650</p>
        <h3>Changes</h3>
    </div> 
</div>

<div class="row">
    <div  class="col-sm-3 col-md-3 col-xs-12"  >
      <img src="image/catalog/review2.jpg" />
        </div> 
    <div  class="col-sm-6 col-md-6 col-xs-12"  >
        <p>Round 0.23 ct. Diamond
        Color: EClarity: SI2Cut: Good </p>
        <p>Stock #: LD06109935</p>
    </div> 
    <div  class="col-sm-3 col-md-3 col-xs-12"  >
        <p>$650</p>
        <h3>Changes</h3>
    </div> 
</div>
<!-- -->  
 <br class="spacer"/> 
</div>


</div> </div>
<!--showing end -->

 

</div>
  <!-- End SlidesJS Required -->
 
 
 
      <!-- END -->
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>