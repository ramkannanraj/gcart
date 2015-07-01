<?php echo $header;  ?>

<!--container -->
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
      <div class="row">
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-5'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
                <li><div class="thumbnail" ><img class='zoom' data-zoom-image="<?php echo $popup; ?>" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></div></li>
            <li style="display:none"><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
			<div class="test3">
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
			
            <li class="image-additional"><img id="gallery" val="<?php echo $image['popup']; ?>" name="<?php echo $image['big_thumb']; ?>" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></li>
			
            <?php } ?>
            <?php } ?>
			</div>
          </ul>
          <?php } ?>

<!-------------------------------------------------->
          <div class="btn-group">           
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style">
              <a class="addthis_button_facebook_like" fb:like:layout="button_count"><img src="catalog/view/theme/default/image/purchase-so-1.jpg" /></a> 
              <a class="addthis_button_tweet"></a> 
              <a class="addthis_button_pinterest_pinit"></a> 
              <a class="addthis_counter addthis_pill_style"></a>
              <span class="btn-group"><button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>Add to Wish list<span>
            </div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
            <!-- AddThis Button END -->
          </div>



          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">

				
				
				
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php if ($site_key) { ?>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                    </div>
                  </div>
                <?php } ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>
        </div>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-5'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <!-- div class="btn-group">
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
          </div -->
          <h3><?php echo $heading_title; ?></h3>
		  <div>
			<p>Set in 18 kt yellow gold ( 2gms ) with Diamonds (0.13 Ct, I,J- SI ) Certified by SGL</p>
		  </div>
		  <div class="dots"></div>
          <!-- ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><?php echo $text_model; ?> <?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
          </ul -->
		  <div class="row">
		  <div class="col-sm-6 col-md-6 col-xs-12">
		  <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><span id="price_old"><?php echo $price; ?></span></h2>
            </li>
            <?php } else { ?>
            <li><span id="price_old" style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><span id="price_special"><?php echo $special; ?></span></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <span id="price_tax"><?php echo $tax; ?></span></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
		  </div>
		  <div class="col-sm-6 col-md-6 col-xs-12 details">
              <h3><a href="#">Click for Offers</a></h3>
              
			<p><strong>Shipping within 15 days</strong></p>
		  </div>
		  </div>		  
		  <div class="dots"></div>
		  <div class="row">
			<div class="col-sm-8 col-md-8 col-xs-12">
				<p>Check for Availability in your Area</p>
			</div>
			<div class="col-sm-4 col-md-4 col-xs-12 details">
				<input type="text" name="Pincode" value="Enter Pincode">
			</div><!--col -->
		  </div>
		  <div class="dots"></div>
		  
		  
          <div id="product">
            <?php if ($options) { ?>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
			<!------------------------------------------------------------ -->
            <div class="hrz-dsiplay form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
 <?php  if (!$option_value['imagel'] || strpos($option_value['imagel'], 'no_image')) $option_value['imagel'] = $thumb; ?>
 <?php if ($option_value['imagexl'] == '') $option_value['imagexl'] = 'no_image'; ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"class="thumb" src="<?php echo $option_value['imagel']; ?>" val="<?php echo $option_value['imagexl']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                <!--(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)-->
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>" class="input-option">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
 <?php  if (!$option_value['imagel'] || strpos($option_value['imagel'], 'no_image')) $option_value['imagel'] = $thumb; ?>
 <?php if ($option_value['imagexl'] == '') $option_value['imagexl'] = 'no_image'; ?>
                <div class="radio">
                  <label>
                                       <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" class="thumb" src="<?php echo $option_value['imagel']; ?>" val="<?php echo $option_value['imagexl']; ?>" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    <!-- (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>) -->
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
			<!-- ------------------------------------------------------------ -->
			<div class="dots"></div>
            <?php if ($option['type'] == 'scheckbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
			  <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
              <!-- ----------------------------------------------------------- -->
            <?php if ($option['type'] == 'simage') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
 <?php  if (!$option_value['imagel'] || strpos($option_value['imagel'], 'no_image')) $option_value['imagel'] = $thumb; ?>
 <?php if ($option_value['imagexl'] == '') $option_value['imagexl'] = 'no_image'; ?>
                <div class="radio">
                  <label>
                                       <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" class="thumb" src="<?php echo $option_value['imagel']; ?>" val="<?php echo $option_value['imagexl']; ?>" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
              <!-- ------------------------------------------------------------ -->
            <?php if ($option['type'] == 'stext') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="thumb form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'stextarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'sfile') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'sdate') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'sdatetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'stime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
			
			<div class="row">
				<div class="col-sm-4 col-md-4 col-xs-12">
					<p>30-Day Money Back Guarantee. </p>
				</div>
  
				<div class="col-sm-4 col-md-4 col-xs-12">
					<p>Lifetime Exchange</p>
				</div>
				<div class="col-sm-4 col-md-4 col-xs-12">
					<p>Certified Jewellery</p>
				</div>
			</div>
			<div class="dots"></div>
			
			<!-- ------------------------------Add to Cart Button--------------------------------- -->
			<div style="display:flex;display:-webkit-box;">
            <div class="form-group">
              <label class="control-label" for="input-quantity" style="display:none;"><?php echo $entry_qty; ?></label>
              <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><span class="add-to-cart"><?php echo $button_cart; ?></span></button><br/>
            </div>
			
			<!-- -----------------------------Buy Now Button--------------------------- -->
			<div class="form-group">
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><span class="buy-now"><?php echo $buy_cart; ?></span><br/></button>
            </div>
			</div>
			
			
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr>
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a>
            </div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
            <!-- AddThis Button END -->
          </div>
          <?php } ?>
        </div>
              
              <!-- -------------similar products-------------------- -->
              <div class="col-sm-2" style="float:right;">
                  
                    <div class="">
            <div class="">
				<div class="similar-col column">
					<!-- Elastislide Carousel -->
					<ul id="carousel" class="elastislide-list">
                        <li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/4.jpg" alt="image04" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/5.jpg" alt="image05" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/6.jpg" alt="image06" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/7.jpg" alt="image07" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/11.jpg" alt="image11" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/12.jpg" alt="image12" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/13.jpg" alt="image13" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/14.jpg" alt="image14" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/15.jpg" alt="image15" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/16.jpg" alt="image16" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/17.jpg" alt="image17" /></a>Rs. 15000/-</ligemcart
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/18.jpg" alt="image18" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/19.jpg" alt="image19" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/20.jpg" alt="image20" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/1.jpg" alt="image01" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/2.jpg" alt="image02" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/3.jpg" alt="image03" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/8.jpg" alt="image08" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/9.jpg" alt="image09" /></a>Rs. 15000/-</li>
						<li><a href="#"><img src="catalog/view/theme/gemcart/stylesheet/images/small/10.jpg" alt="image10" /></a>Rs. 15000/-</li>
					</ul>
					<!-- End Elastislide Carousel -->
				</div>
			</div>
		</div>
                  
                  
              </div>
              <!-- -------------------End of Similar products-------------------- -->
      </div>

      <!-- -----------------------Related Product---------------------------- -->
    <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-3 hidden-xs'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-3 hidden-xs'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-3 hidden-xs'; ?>
        <?php } ?>
        <div id="column-right" class="">
          <div class="product-thumb transition">
              <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
              </div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </div>
            <div class="button-group">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div>
          </div> 
        </div>

        <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif ($i % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
    <!-- -----------------------End of Related Product---------------------------- -->
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?>

  </div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : ''),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<script type="text/javascript" defer src="js/autoptimize_9a15becef9b2f850af1e4f2ecea7b647.js"></script>
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
  <!--  similar product -->      
<!-- script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script -->
	<script type="text/javascript" src="catalog/view/javascript/js/jquerypp.custom.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/js/jquery.elastislide.js"></script>
	<script type="text/javascript">
			
		$( '#carousel' ).elastislide( {
			orientation : 'vertical'
		} );
			
</script>
<script type="text/javascript" src="index.php?route=product/livepriceupdate/js&product_id=<?php echo $product_id; ?>"></script>
<script type="text/javascript"><!--
 function c() {
    var srcimg;
    var srcim;
        $("option:selected", $(this)).each(function(){
            srcimg = $(this).attr('src');  
            srcim = $(this).attr('val');
    });
        if (srcimg == null || srcim == null) {         
            srcimg = $(this).attr('src');
            srcim = $(this).attr('val');
    }
        if (srcim != null) {  
    var noimage = srcim.indexOf("no_image"); 
    }
        if (srcimg == null || srcim == null || noimage == 0) {
            //srcimg = '<?php echo $thumb; ?>';
            //srcim = '<?php echo $popup; ?>';
            return;
                } 
    $('.zoom').attr('src', srcimg);
    $('.zoom').attr('data-zoom-image', srcim);
    $('.zoomLens, .zoomWindow').css("background-image", "url(" + srcim +")");
    } 
$(document).on("change", ".thumb", c);
$(document).on("click", "#gallery", function()  {
    var srcimg = $(this).attr('name');
    var srcim = $(this).attr('val');
    $('.zoom').attr('src', srcimg);
    $('.zoom').attr('data-zoom-image', srcim);
    $('.zoomLens, .zoomWindow').css("background-image", "url(" + srcim +")");
 event.preventDefault();
    }); 
//--></script>

<script type="text/javascript"><!--
$('.zoom').elevateZoom({
            zoomWindowWidth:230,
            zoomWindowHeight:230,
            easing : true
});
//--></script> 
<?php echo $footer; ?>