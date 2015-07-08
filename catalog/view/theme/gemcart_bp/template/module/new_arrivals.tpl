<br class="spacer">
<div id="heading-strip">
    <h1><span><?php echo $heading_title; ?></span></h1>
</div>
<div class="row">
  <!--new arrival -->
  <div id="new-arrival">
    <ul>
      <?php foreach ($products as $product) { ?>
          <li>
            <a href="<?php echo $product['category_href']; ?>"><img src="<?php echo $product['thumb']; ?>" class="img-responsive" /></a>
            <h1><?php echo $product['name']; ?></h1>
          </li>
      <?php } ?>
    </ul>
  </div>
  <!--New arrivals end -->
</div>
