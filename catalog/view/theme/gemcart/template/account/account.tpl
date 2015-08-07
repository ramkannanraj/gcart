<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
     <!-- <h2><?php echo $text_my_account; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
        <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      </ul>
      <h2><?php echo $text_my_orders; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
        <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
        <?php if ($reward) { ?>
        <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
        <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
      </ul>
      <h2><?php echo $text_my_newsletter; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul> -->
      
      <div id="content">
        <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
            <li class="active"><a href="#address-setting" data-toggle="tab">Address Book</a></li>
            <li><a href="#account-setting" data-toggle="tab">Accout Settings</a></li>
            <li><a href="#wishlist" data-toggle="tab">Wishlist</a></li>
            <li><a href="#orders" data-toggle="tab">My Orders</a></li>
            <li><a href="<?php echo $logout; ?>" ><?php echo $text_logout; ?></a></li>
        </ul>
        <div id="my-tab-content" class="tab-content">
            <div class="tab-pane active" id="address-setting">
              <div id="edit" class="address-list">
                  <div class="col-sm-8"> 
                     <h2>Default Shipping and Billing Address <span><a href="javascript:void(0);" id="address-edit">Edit</a></span></h2>
                     <p>You have no default billing address in your address book.</p>
                     <p>You have no default shipping address in your address book.</p>
                  </div>
              </div>
              
              <div id="open" class="address-edit">
                <div class="col-sm-8"> 
                  <h2>YOUR SHIPPING ADDRESS DETAILS</h2>
                    <form class="form-horizontal" role="form">
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Title</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">First Name</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Last Name</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Address</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Country</label>
                        <div class="col-sm-10">
                          <select class="form-control" style="width:100%" id="sel1">
                            <option value="India">India</option>
                            <option value="USA">USA</option>
                            <option value="UK">UK</option>
                            <option value="UAE">UAE</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">City</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">State</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Zip Code</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Landline</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Mobile</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <div class="checkbox" style="display:inline-block; margin-right:35px;">
                            <input type="checkbox">
                          </div>
                         <label>Billing address is same as shipping address</label>
                        </div>
                      </div>                 
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="submit1" style="float:left; margin-right:15px;">Submit</button><button type="button" class="submit1 cancel-button">Cancel</button>
                        </div>
                      </div>
                    </form>
                </div>
              </div>
            </div><!-- content end -->
            <!--addred book end --> 
            <div class="tab-pane" id="account-setting">
              <div id="edit" class="account-list">
                <div class="col-sm-8"> 
                  <h2>Account Settings <span><a href="javascript:void(0);" id="account-edit">Edit</a></span></h2>
                  <div class="row">
                    <div class="col-sm-4"><p>First Name </p></div>
                    <div class="col-sm-4"> -</div>
                  </div>
                   
                  <div class="row">
                    <div class="col-sm-4"><p>Last Name</p> </div>
                    <div class="col-sm-4"> -</div>
                  </div>
       
                  <div class="row">
                    <div class="col-sm-4"><p>Email Address</p></div>
                    <div class="col-sm-4"> -</div>
                  </div>
       
       
                  <div class="row">
                    <div class="col-sm-4"><p>Password </p></div>
                    <div class="col-sm-4"> -</div>
                  </div>
                </div>
              </div>
            
              <div id="open" class="account-edit">
                <div class="col-sm-8"> 
                  <h2>YOUR SHIPPING ADDRESS DETAILS</h2>
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                          <label class="control-label col-sm-4" for="pwd">First Name</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="email">
                          </div>
                        </div>
                         <div class="form-group">
                          <label class="control-label col-sm-4" for="pwd">Last Name</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="email">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="control-label col-sm-4" for="pwd">Email / Sign In</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="email">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="control-label col-sm-4" for="pwd">Change Password</label>
                          <div class="col-sm-8">
                             <input type="checkbox">
                          </div>
                        </div>                  
                        <div class="form-group">
                          <div class="col-sm-offset-4 col-sm-8">
                            <button type="submit" class="submit1" style="float:left; margin-right:15px;">Submit</button>  <button type="button" class="submit1 cancel-button">Cancel</button>
                          </div>
                        </div>
                    </form>
                </div>
              </div>
            </div>
            
            
               
            <div class="tab-pane" id="wishlist">
                <div id="edit" class="wish-list"> 
                
                    <div class="col-sm-12"> 
               <button type="button" class="close"><a href="javascript:void(0);" id="wish-edit"><img src="catalog/view/theme/gemcart/images/close.jpg" /></a></li></button>
              <div class="row">
               <div class="col-sm-3">
                   <div class="accout-wishlist">
                   <li>
                   <div class="try1"></div>
                   <img src="catalog/view/theme/gemcart/images/account-wishlist-1.jpg" /></li> </div>
               </div>
               
                <div class="col-sm-7 wishlist-details">
                <h1>Glaze Solitaire Ring</h1>
                <p>Diamond(0.4996 Ct, IJ, SI, Round), 18 Kt Yellow Gold
                    Approx Metal Weight 4.09 gms</p>
                    <br />
                    <div class="row">
                     <div class="col-sm-3"><h2>Ring Size</h2></div>
                    <div class="col-sm-4"><select><option>Select One</option></select></div>
                    <div class="col-sm-5">	<p>Not Sure? We can help. </p></div>
                    </div>
                </div>
                
                 <div class="col-sm-2">
                 <div id="wishlist-btn">
                 <h3>Rs. 46,912</h3>
                  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="buy-now"> Buy Now</button> 
                  <p>OR</p>
                  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="try-home">Try @ Home </button>
                 </div>
                 </div>
                   
              </div>
              <hr/>
              <button type="button" class="close"><img src="catalog/view/theme/gemcart/images/close.jpg" /></li></button>
                <div class="row">
               <div class="col-sm-3">
                   <div class="accout-wishlist">
                   <li>
                    <img src="catalog/view/theme/gemcart/images/account-wishlist-1.jpg" /></li> </div>
               </div>
               
                <div class="col-sm-7 wishlist-details">
                <h1>Glaze Solitaire Ring</h1>
                <p>Diamond(0.4996 Ct, IJ, SI, Round), 18 Kt Yellow Gold
                    Approx Metal Weight 4.09 gms</p>
                    <br />
                    <div class="row">
                     <div class="col-sm-3"><h2>Ring Size</h2></div>
                    <div class="col-sm-4"><select><option>Select One</option></select></div>
                    <div class="col-sm-5">	<p>Not Sure? We can help. </p></div>
                    </div>
                </div>
                
                 <div class="col-sm-2">
                 <div id="wishlist-btn">
                 <h3>Rs. 46,912</h3>
                  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="buy-now"> Buy Now</button> 
                  <p>OR</p>
                  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="try-home">Try @ Home </button>
                 </div>
                 </div>
                   
              </div>
              
              
            </div>
                </div>
                
                <div id="open" class="wish-edit">
                   <div class="col-sm-8"> 
                      
                    <h2>You Currently have no saved items.</h2>
                    <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="close-button continue">Continue Shopping</button>
                   </div>
                </div>
            </div>
            
            
            
            
            
            
            
            
            
            <div class="tab-pane" id="orders">
                <div id="edit" class="orders-edit">
                  <div class="col-sm-8"> 
                  <h2>No Orders</h2>
                  </div>
                </div>
            </div>
            <div class="tab-pane" id="logout">
                <div id="edit">
                  <div class="col-sm-8"> 
                  <h2>Logout</h2>
                  </div>
                </div>
            </div>
        </div>


        <div class="row">
          <div class="col-sm-12 testimonial-bottom">
            <h2> Testimonial</h2>
            <p>"Hi, I love it .....I love it .....I absolutely love it... The entire process of ordering and receiving the earrings. superb customer care. Caratlane really does take it to a whole new level. And the . ..", - Joan Robello,Pune</p>
            <a href="#">Read More</a>
          </div>
        </div>

      </div><!--content -->
      
    <?php echo $content_bottom; ?></div>
    <?php //echo $column_right; ?></div>
    </div>
<script type="text/javascript">
    $(document).ready(function(){
        $('.address-list').show();
        $('.address-edit').hide();
        $('.account-list').show();
        $('.account-edit').hide();
        $('.wish-list').show();
        $('.wish-edit').hide();

      $('#address-edit').on('click', function() {
          $('.address-list').hide();
          $('.address-edit').show();
      });
      $('#account-edit').on('click', function() {
          $('.account-list').hide();
          $('.account-edit').show();
      });
	   $('#wish-edit').on('click', function() {
          $('.wish-list').hide();
          $('.wish-edit').show();
      });
      $('.cancel-button').on('click', function() {
          $('.address-edit').hide();
          $('.address-list').show();
          $('.account-edit').hide();
          $('.account-list').show();
      });
	  
	     $('.close-button').on('click', function() {
          $('.wish-edit').hide();
          $('.wish-list').show();
       });

    });    
    </script><?php echo $footer; ?>