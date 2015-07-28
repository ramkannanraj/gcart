<div id="heading-strip1">
<h1><span><?php echo $heading_title; ?></span></h1>
</div>
<h3></h3>
<div class="row">
    <!--categories -->
      <div>
       <ul class="ff-items">
            <?php foreach ($categories as $category) { ?>
            
                    <li><a href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span><img src="<?php echo $category['thumb']; ?>" class="img-responsive" /></a></li>
                    
            <?php } ?>
        </ul>
      </div>
      <!--categories End -->
</div>
