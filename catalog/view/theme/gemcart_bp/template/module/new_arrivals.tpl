<br class="spacer">
<div id="heading-strip1">
    <h1><span><?php echo $heading_title; ?></span></h1>
</div>
<div class="row">
  <!--new arrival -->
  <div >
    <ul class="ff-items">
      <?php foreach ($products as $product) { ?>
          <li>
            <a href="<?php echo $product['category_href']; ?>"><span><?php echo $product['name']; ?></span><img src="<?php echo $product['thumb']; ?>" class="img-responsive" /> </a>
           
          </li>
      <?php } ?>
    </ul>
    
    
    
  </div>
  <!--New arrivals end -->
</div>
