
<div id="heading-strip">
    <h1><span><?php echo $heading_title; ?></span></h1>
</div>
<div class="row">
  <!--most popular -->
    <div id="most-popular">
      <ul class="mostpopularslider">
          <?php foreach ($products as $product) { ?>
              <li>
                <a href="<?php echo $product['category_href']; ?>"><img src="<?php echo $product['thumb']; ?>" class="img-responsive" /></a>
              </li>
          <?php } ?>
      </ul>
    </div>
  <!--most popular End -->
      <br class="spacer"/>
</div>

