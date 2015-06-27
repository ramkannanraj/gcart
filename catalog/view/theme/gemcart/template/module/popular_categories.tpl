<div id="heading-strip">
<h1><span><?php echo $heading_title; ?></span></h1>
</div>
<h3></h3>
<div class="row">
    <!--categories -->
      <div id="new-arrival">
        <ul>
            <?php foreach ($categories as $category) { ?>
            
                    <li><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" class="img-responsive" /></a><h1><?php echo $category['name']; ?></h1></li>
                    
            <?php } ?>
        </ul>
      </div>
      <!--categories End -->
</div>
