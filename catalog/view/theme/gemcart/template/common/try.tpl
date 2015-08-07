<div id="tryathomeu" >
<li> 
                    <a href = "javascript:void(0)" onclick = "document.getElementById('try').style.display='block';document.getElementById('fade').style.display='block'">Try @ Home (<span id="trycount"><?php echo count($try); ?></span>)</a> </li>
                    <div id="try" class="white_content1 tryhome" >
                    <a href = "javascript:void(0)" onclick = "document.getElementById('try').style.display='none';document.getElementById('fade').style.display='none'"><span style="float:right"><img src="catalog/view/theme/gemcart/images/close.jpg" style="border:none"></span></a>
                    
                                          <div  class="col-sm-4 col-md-4 col-xs-12"><img src="catalog/view/theme/gemcart/images/hometryon_home.png" class="img-responsive img"  /></div>
                                <div  class="col-sm-8 col-md-8 col-xs-12" style="float:right">
                                <h2><?php //print_r($try); ?></h2>
                                <p>Choose up to 5 products and we will send samples to you to try @ home. Just so that you can be sure. Learn More</p>
                                </div>

                                 <div  class="col-sm-12 col-md-12 col-xs-12">
                                 <hr/>
                                <h1>Your Selection</h1></div>

                                <div class="selection">
                                
                                   <?php if(count($try) > 0){ ?> 
                                <?php   foreach ($try as $product) {  ?>

                                <?php //echo "<pre>"; print_r($product); echo "</pre>"; ?>
                               
                          <li><img src="image/<?php echo $product['product_image']; ?>"  class="img-responsive"/>
                                 <?php echo $product['product_name'];   ?> &nbsp; <button type="button" onclick="tryremove('<?php echo $product['product_id']; ?>');" title="<?php echo $product['product_name'];   ?>" class=" " ><i class="fa fa-times"></i></button></li>

                                 
                                <?php   }  } else { ?>
                                
                                <li> <center>No product to show</center></li>
                              <?php } ?>
                              
                                 </div>
 
                                    <div  class="col-sm-12 col-md-12 col-xs-12">
                                    <hr/>
                                    <h1>your details</h1>
                                    <p>Our representative will contact you within 24 hours to schedule an appointment at your convenience. </p>
                                    <br>
                                     </div>

                                   <form id="submitTrycusotmer">
                                 <div  class="col-sm-5 col-md-5 col-xs-12"><strong>City :</strong></div>
                                <div  class="col-sm-7 col-md-7 col-xs-12"><select id="city"><option value="Mumbai">Mumbai</option><option value="Bangaluru">Bangaluru</option><option value="Chennai">Chennai</option></select></div>
                                
                                 <div  class="col-sm-5 col-md-5 col-xs-12"><strong>Name :</strong></div>
                                <div  class="col-sm-7 col-md-7 col-xs-12"><input type="text" id="name" required /></div>
                                
                                 <div  class="col-sm-5 col-md-5 col-xs-12"><strong>Mobile No. :</strong></div>
                                <div  class="col-sm-7 col-md-7 col-xs-12"><input type="text" id="mobile" required /></div>
                                
                                
                                 <!-- <div  class="col-sm-5 col-md-5 col-xs-12"><strong>Email :</strong></div>
                                <div  class="col-sm-7 col-md-7 col-xs-12"><input type="text" id="email" required/></div> -->
                                
                                 <div  class="col-sm-7 col-md-7 col-xs-12"><button class="drop-btn" href="catalog/products">Try More Products</button></div>
                                 <div  class="col-sm-5 col-md-5 col-xs-12"><input class="drop-btn" type="submit" id="submitTrycusotmer" value="Submit"></div>  
                                 </form> 

                                       
   
 
          </div>                      
</div>                           
       <script type="text/javascript"><!--
            $('#submitTrycusotmer').on('submit', function(e) {
                e.preventDefault();
                 var name = $("#name").val(); var mobile = $("#mobile").val(); var email = $("#email").val();
    var dataString = 'name='+name+'&mobile='+mobile+'&email='+email;
    //var dataString = '{"name":"'+name+', "mobile":"'+mobile+'" , "email" :" '+email+'" }'
               $.ajax({
        url: 'index.php?route=try/try/addTryCustomerdata',
        type: 'post',
        data: dataString,
        //dataType: 'json',   
         success: function(result){
       obj = JSON.parse(result);
      alert(obj.msg);
      if(obj.url){
        window.location="?route="+obj.url;
      }
      $("#trysqlcount").hide();
      $("#trycount").show();
    $('html, body').animate({ scrollTop: 0 }, 'slow');
    } 

                    }); 
             });            
       </script>

       <script type="text/javascript">
     function  tryremove(id){
        var product_id = id;
        $.ajax({
    type: "POST",
    url: 'index.php?route=try/try/removetryhomeproduct',
    //url: "catalog/view/theme/gemcart/template/product/addtryproduct.php",
    data: 'tryproduct_id='+ product_id,
    success: function(result){
       obj = JSON.parse(result);
      alert(obj.msg);
      if(obj.count){
         $("#trycount").html(obj.count);
      }
      $("#trysqlcount").hide();
      $("#trycount").show();
   // $('html, body').animate({ scrollTop: 0 }, 'slow');
    $('#tryathomeu').load('index.php?route=common/try/info');
    }   
    });

     }
  
</script>      