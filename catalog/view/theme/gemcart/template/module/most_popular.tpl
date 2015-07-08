
<div id="heading-strip1">
    <h1><span><?php echo $heading_title; ?></span></h1>
</div>
<div class="row">
  <!--most popular -->
    <div id="most-popular">
      <ul id="carousel" class="elastislide-list">
          <?php foreach ($products as $product) { ?>
              <li>
                <a href="<?php echo $product['category_href']; ?>"><img src="<?php echo $product['thumb']; ?>" class="img-responsive" /></a>
              </li>
          <?php } ?>
      </ul>
    </div>
    
 
					<!-- Elastislide Carousel -->
					<!-- <ul id="carousel" class="elastislide-list">
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img1.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img2.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img3.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img4.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img1.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img2.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img3.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img4.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img1.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img2.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img3.jpg" class="img-responsive" /></a></li>
<li><a href="#"><img src="catalog/view/theme/gemcart/images/most-popular-img4.jpg" class="img-responsive" /></a></li>

   
 					</ul> -->
					<!-- End Elastislide Carousel -->
     
    
  <!--most popular End -->
      <br class="spacer"/>
    <!--SHOW MORE PRODUCTS + --> 
     <!--<div id="more-products">
            <h1>SHOW MORE PRODUCTS +</h1>
     </div> -->
</div>

 <script type="text/javascript" src="catalog/view/javascript/jquery/jquery.elastislide.js"></script>
		<script type="text/javascript">
			
			$( '#carousel' ).elastislide( {
				minItems : 2
			} );
			
		</script>