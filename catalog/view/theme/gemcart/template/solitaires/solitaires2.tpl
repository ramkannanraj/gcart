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
           
      <!-- START-->
          <!--showing -->
<!--<div id="showing">
<div class="container">
<div class="row">
 <div  class="col-sm-12 col-md-12 col-xs-12 "><h1>SHOWING 505 DIAMONDS</h1></div>
 </div></div></div> -->
<!--showing end -->
  
 

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
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                     <li class="dropdown active">
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
                    <li class="dropdown">
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
  <div  class="col-sm-12 col-md-12 col-xs-12"  > 
   <section class="cd-gallery">
  <!--tab -->
        
     <section id="multiple" data-accordion-group>
      <section data-accordion>
        <button data-control>View Filter</button>
        <div data-content>
           
          <article data-accordion>
            <button data-control>Filters</button>
            <div data-content>
              <article>
                  <div class="row">
                    <div  class="col-sm-4 col-md-4 col-xs-12 shapes"  >
                       <h1>Shape</h1>
                               <div id="input-option239" class="input-option">
                                  <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb" src="image/catalog/up.png" val="no_image" id="option[2391]" value="42" type="checkbox">
                                       <label for="option[2391]"><img src="image/catalog/shape-1.png" /></label>
                                   </div>
                                  <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2392]" value="40" type="checkbox">
                                       <label for="option[2392]"><img src="image/catalog/shape-2.png" /></label>
                                    </div>
                                  <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2393]" value="41" type="checkbox">
                                       <label for="option[2393]"><img src="image/catalog/shape-2.png" /></label>
                                         </div>
                                  <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2394]" value="39" type="checkbox">
                                       <label for="option[2394]"><img src="image/catalog/shape-4.png" /></label>
                                    </div>
                                    <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2394]" value="39" type="checkbox">
                                                            <!-- (+$31.60) -->
                                      <label for="option[2394]"><img src="image/catalog/shape-5.png" /></label>
                                    </div>
                                    <br class="spacer" />
                                    <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb" src="image/catalog/up.png" val="no_image" id="option[2391]" value="42" type="checkbox">
                                       <label for="option[2391]"><img src="image/catalog/shape-6.png" /></label>
                                   </div>
                                  <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2392]" value="40" type="checkbox">
                                       <label for="option[2392]"><img src="image/catalog/shape-7.png" /></label>
                                    </div>
                                  <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2393]" value="41" type="checkbox">
                                       <label for="option[2393]"><img src="image/catalog/shape-8.png" /></label>
                                         </div>
                                  <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2394]" value="39" type="checkbox">
                                       <label for="option[2394]"><img src="image/catalog/shape-9.png" /></label>
                                    </div>
                                    <div class="shape-checkbox">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2394]" value="39" type="checkbox">
                                                            <!-- (+$31.60) -->
                                      <label for="option[2394]"><img src="image/catalog/shape-10.png" /></label>
                                    </div>
                
                
                              </div> 
                            
                       
                    </div>
                    
                     <div  class="col-sm-4 col-md-4 col-xs-12 shapes"  >
                            <h1>Price</h1>
 <div class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slider-range"><div style="left: 6.8%; width: 61.8%;" class="ui-slider-range ui-widget-header ui-corner-all"></div><span style="left: 6.8%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span><span style="left: 68.6%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span></div>
<p><input value="$34 - $343" id="amount" readonly="readonly" style=" border:#adadad solid 1px; padding:7px 3px; font-size:15px; text-align:center; margin-top:10px;" type="text"></p>
                             </div>
                             
                            
                            <div  class="col-sm-4 col-md-4 col-xs-12 shapes"  >
                            <h1>Carat</h1>
                             <div class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slider-range"><div style="left: 6.8%; width: 61.8%;" class="ui-slider-range ui-widget-header ui-corner-all"></div><span style="left: 6.8%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span><span style="left: 68.6%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span></div>
<p><input value="$34 - $343" id="amount" readonly="readonly" style=" border:#adadad solid 1px; padding:7px 3px; font-size:15px; text-align:center; margin-top:10px;" type="text"></p>
                             
                            </div>
                   </div><!--row -->
                   
                   <hr/>
                   
                   <div class="row">
                    <div  class="col-sm-3 col-md-3 col-xs-12 shapes"  >
                       <h1>Cut</h1>
                               <div id="input-option239" class="input-option">
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb" src="image/catalog/up.png" val="no_image" id="option[239]" value="4" type="radio">
                                       <label for="option[239]">EX</label>
                                   </div>
                                 <div class="solitaires-radio">                 
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[232]" value="4" type="radio">
                                       <label for="option[232]">VG</label>
                                    </div>
                                 <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[233]" value="4" type="radio">
                                       <label for="option[233]">G</label>
                                         </div>
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[234]" value="9" type="radio">
                                       <label for="option[234]">MED</label>
                                    </div>
                                    
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2347]" value="9" type="radio">
                                       <label for="option[2347]">AGSO</label>
                                    </div>  
                               </div> 
                            
                       
                    </div>
                    
                     <div  class="col-sm-4 col-md-4 col-xs-12 shapes"  >
                     <h1>Color</h1>
                             <div id="input-option239" class="input-option">
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb" src="image/catalog/up.png" val="no_image" id="option[2398]" value="4" type="radio">
                                       <label for="option[2398]">D</label>
                                   </div>
                                 <div class="solitaires-radio">                 
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2325]" value="4" type="radio">
                                       <label for="option[2325]">E</label>
                                    </div>
                                 <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2335]" value="4" type="radio">
                                       <label for="option[2337]">F</label>
                                         </div>
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2340]" value="9" type="radio">
                                       <label for="option[2340]">G</label>
                                    </div>
                                    
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[230]" value="9" type="radio">
                                       <label for="option[230]">H</label>
                                    </div>
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2040]" value="9" type="radio">
                                       <label for="option[2040]">I</label>
                                    </div>
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[240]" value="9" type="radio">
                                       <label for="option[240]">J</label>
                                    </div>
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[340]" value="9" type="radio">
                                       <label for="option[340]">K</label>
                                    </div>
                                    
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[30]" value="9" type="radio">
                                       <label for="option[30]">L</label>
                                    </div>
                                    
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[34]" value="9" type="radio">
                                       <label for="option[34]">M</label>
                                    </div>
                                    
                               </div> 
                          </div>     
                <div  class="col-sm-5 col-md-5 col-xs-12 shapes"  >
                     <h1>cLARITY</h1>
                             <div id="input-option239" class="input-option">
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb" src="image/catalog/up.png" val="no_image" id="option[12]" value="4" type="radio">
                                       <label for="option[12]">SI1</label>
                                   </div>
                                 <div class="solitaires-radio">                 
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[11]" value="4" type="radio">
                                       <label for="option[11]">SI2</label>
                                    </div>
                                   <div class="solitaires-radio">                 
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[11]" value="4" type="radio">
                                       <label for="option[11]">SI3</label>
                                    </div>
                                    
                                      <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[22]" value="9" type="radio">
                                       <label for="option[22]">VS1</label>
                                    </div>
                                    
                                 <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[33]" value="4" type="radio">
                                       <label for="option[33]">VS2</label>
                                         </div>
                                
                                    
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[231]" value="9" type="radio">
                                       <label for="option[231]">VVS1</label>
                                    </div>
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[202]" value="9" type="radio">
                                       <label for="option[202]">VVS2</label>
                                    </div>
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[210]" value="9" type="radio">
                                       <label for="option[210]">IF</label>
                                    </div>
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[390]" value="9" type="radio">
                                       <label for="option[390]">FL</label>
                                    </div>
                                    <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[390]" value="9" type="radio">
                                       <label for="option[390]">I1</label>
                                    </div>
                               </div> 
                          </div>
                   </div><!--row -->
                   
                   
                   
                   
              </article>
           
            </div>
          </article>
          
  <div class="line-1"> </div>
     <article data-accordion>
            <button data-control>Advanced Filters</button>
            <div data-content>
              <article>
             <div class="row">
                    <div  class="col-sm-2 col-md-2 col-xs-12 shapes"  >
                       <h1>Polish</h1>
                               <div id="input-option239" class="input-option">
                                  <div class="solitaires-radio">                 
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2355]" value="4" type="radio">
                                       <label for="option[2355]">VG</label>
                                    </div>
                                 <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2355]" value="4" type="radio">
                                       <label for="option[2355]">G</label>
                                         </div>
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2355]" value="9" type="radio">
                                       <label for="option[2355]">MED</label>
                                    </div>
                               </div> 
                            
                       
                    </div>
                    
                     <div  class="col-sm-3 col-md-3 col-xs-12 shapes"  >
                         <h1>symmetry</h1>
                             <div id="input-option239" class="input-option">
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb" src="image/catalog/up.png" val="no_image" id="option[2355]" value="4" type="radio">
                                       <label for="option[2355]">EX</label>
                                   </div>
                                 <div class="solitaires-radio">                 
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2355]" value="4" type="radio">
                                       <label for="option[2355]">FAIR</label>
                                    </div>
                                 <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2355]" value="4" type="radio">
                                       <label for="option[2355]">VG</label>
                                         </div>
                                         
                                   <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2355]" value="4" type="radio">
                                       <label for="option[2355]">G</label>
                                         </div>      
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[2355]" value="9" type="radio">
                                       <label for="option[2355]">MED</label>
                                    </div>
                               </div> 
                            
                           </div>     
                <div  class="col-sm-7 col-md-7 col-xs-12 shapes"  >
                     <h1>Fluore scence</h1>
                             <div id="input-option239" class="input-option">
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb" src="image/catalog/up.png" val="no_image" id="option[12]" value="4" type="radio">
                                       <label for="option[12]">V Strong</label>
                                   </div>
                                    <div class="solitaires-radio">                 
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[11]" value="4" type="radio">
                                       <label for="option[11]">Strong</label>
                                    </div>
                                    <div class="solitaires-radio">                  
                                      <input name="option[239]" class="thumb"  val="no_image" id="option[22]" value="9" type="radio">
                                       <label for="option[231]">V.SLIGHT</label>
                                    </div>
                                      <div class="solitaires-radio">                  
                                      <input name="option[239]" class="thumb"  val="no_image" id="option[22]" value="9" type="radio">
                                       <label for="option[231]">SLIGHT</label>
                                    </div>
                                
                                 <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[33]" value="4" type="radio">
                                       <label for="option[33]">Med</label>
                                         </div>
                                          <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[33]" value="4" type="radio">
                                       <label for="option[33]">Med YEL</label>
                                         </div>
                                  <div class="solitaires-radio">                  
                                       <input name="option[239]" class="thumb"  val="no_image" id="option[22]" value="9" type="radio">
                                       <label for="option[22]">Faint</label>
                                    </div>
                                    
                                    <div class="solitaires-radio">                  
                                      <input name="option[239]" class="thumb"  val="no_image" id="option[22]" value="9" type="radio">
                                       <label for="option[231]">None/NIL</label>
                                    </div>
                                  
                                     
                               </div> 
                           </div>
                   </div><!--row -->
                   <hr/>
                   
                    <div class="row">
                    <div  class="col-sm-4 col-md-4 col-xs-12 shapes"  >
                       <h1>Depth</h1>
                      <div class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slider-range"><div style="left: 6.8%; width: 61.8%;" class="ui-slider-range ui-widget-header ui-corner-all"></div><span style="left: 6.8%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span><span style="left: 68.6%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span></div>
<p><input value="$34 - $343" id="amount" readonly="readonly" style=" border:#adadad solid 1px; padding:7px 3px; font-size:15px; text-align:center; margin-top:10px;" type="text"></p>
                          
                       
                    </div>
                    
                     <div  class="col-sm-4 col-md-4 col-xs-12 shapes"  >
                         <h1>Table</h1>
                              <div class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slider-range"><div style="left: 6.8%; width: 61.8%;" class="ui-slider-range ui-widget-header ui-corner-all"></div><span style="left: 6.8%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span><span style="left: 68.6%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span></div>
<p><input value="$34 - $343" id="amount" readonly="readonly" style=" border:#adadad solid 1px; padding:7px 3px; font-size:15px; text-align:center; margin-top:10px;" type="text"></p>
                              
                            
                           </div>     
                <div  class="col-sm-4 col-md-4 col-xs-12 shapes"  >
                     <h1>Lengh/Width Radio</h1>
                            <div class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slider-range"><div style="left: 6.8%; width: 61.8%;" class="ui-slider-range ui-widget-header ui-corner-all"></div><span style="left: 6.8%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span><span style="left: 68.6%;" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span></div>
<p><input value="$34 - $343" id="amount" readonly="readonly" style=" border:#adadad solid 1px; padding:7px 3px; font-size:15px; text-align:center; margin-top:10px;" type="text"></p>
                             </div>
                                     
                               </div> 
                   
              </article>
           
            </div>
          </article>          
             </div>
       </section>
     </section>
<!--tab end -->
      
      
      <!--table start --> 
        <div class="table-responsive" style="margin-top:50px;">
         <div class="fixed-table-container"><div class="header-background"></div><div class="fixed-table-container-inner">
    <table class="table table-striped fix-table">
        <thead>
            <tr>
    <th><div class="th-inner">Compare</div></th>
    <th><div class="th-inner">Shape</div></th>
    <th><div class="th-inner">Carat</div></th>
     <th><div class="th-inner">Cut</div></th>
      <th><div class="th-inner">Color</div></th>
       <th><div class="th-inner">Clarity</div></th>
        <th><div class="th-inner">Symmetry</div></th>
         <th><div class="th-inner">Flurescence</div></th>
          <th><div class="th-inner">Depth</div></th>
           <th><div class="th-inner">Table</div></th>
            <th><div class="th-inner">1/W Radio</div></th>
             <th><div class="th-inner">Date</div></th>
                 <th><div class="th-inner">Price</div></th>
            </tr>
        </thead>
        <tbody >
             <tr>
                <td><input id=" " value="39" type="checkbox"> &nbsp; &nbsp;</td>
                <td><img src="image/catalog/table-img.jpg" width="23" height="23" style="display:inline-block" />Princess</td>
                <td>1.51</td>
                <td>Sig Ideal</td>
                <td>G</td>
                <td>SI1</td>
                <td>Very Good</td>
                <td>Faint &nbsp; &nbsp; &nbsp;</td>
                <td>69.9</td>
                <td>71.0</td>
                <td>1.02&nbsp; &nbsp; &nbsp;</td>
                <td>july 22</td>
                 <td><a href="#0" class="cd-filter-trigger">$9,727 </a></td>
            </tr>
             <tr>
                <td><input id=" " value="39" type="checkbox"> &nbsp; &nbsp;</td>
               <td><img src="image/catalog/table-img.jpg" width="23" height="23" style="display:inline-block" />Princess</td>
               <td>1.51</td>
               <td>Sig Ideal</td>
               <td>G</td>
               <td>SI1</td>
               <td>Very Good</td>
               <td>Faint &nbsp; &nbsp; &nbsp;</td>
               <td>69.9</td>
               <td>71.0</td>
               <td>1.02&nbsp; &nbsp; &nbsp;</td>
               <td>july 22</td>
               <td><a href="#0" class="cd-filter-trigger">$9,727 </a></td>
             </tr>
             <tr>
                <td><input id=" " value="39" type="checkbox"> &nbsp; &nbsp;</td>
              <td><img src="image/catalog/table-img.jpg" width="23" height="23" style="display:inline-block" />Princess</td>
               <td>1.51</td>
               <td>Sig Ideal</td>
               <td>G</td>
               <td>SI1</td>
               <td>Very Good</td>
               <td>Faint &nbsp; &nbsp; &nbsp;</td>
               <td>69.9</td>
               <td>71.0</td>
               <td>1.02&nbsp; &nbsp; &nbsp;</td>
               <td>july 22</td>
               <td>$9.727</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
        </tbody>
    </table>

</div>

<!--tab end -->       
    </section>
        
        
        
        </section> <!-- cd-gallery -->
    <div class="cd-filter scrollbar" >
        
       <h2> 2.01-Carat Blue Nile Signature Asscher Cut Diamond</h2>
       <hr/>
        <div class="row">
        <div  class="col-sm-4 col-md-4 col-xs-12"  ><h3>$26,677</h3></div>
        <div  class="col-sm-8 col-md-8 col-xs-12"  >
                    <div class="dropdown">
                      <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Add this Diamond
                      <span class="caret"></span></button>
                      <ul class="dropdown-menu">
                        <li><a href="#">Add to your ring</a></li>
                        <li><a href="#">Add to your pendant</a></li>
                        <li><a href="#">Add to shopping basket</a></li>
                        <li><a href="#">Add to diamond comparison</a></li>
                      </ul>
                    </div></div>
        </div>
        
        <h4>$26,276.85 <b>Bank Wire Price</b></h4>
        <br class="spacer" />
        <img src="image/catalog/stars.png" />
        <p>(136 customer ratings)</p>
        <hr/>
        
        <p>Order in the next 7 hours 44 minutes for free delivery loose on Tuesday, July 21 or set in jewelry on Tuesday, July 21. </p>

 <table class="table table-striped">
    <thead>
      <tr>
        <th>Summary</th>
        <th style=" float:right"><img src="image/catalog/email.png" style="margin-right:15px;" /><img src="image/catalog/fax.png" /></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Stock number</td>
        <td>LD01738718</td>
      </tr>
      <tr>
        <td>Price per carat</td>
        <td>$13,272</td>
      </tr>
      <tr>
        <td>Carat weight</td>
        <td>2.01</td>
      </tr>
      <tr>
        <td>Shape</td>
        <td>Asscher</td>
      </tr>
      <tr>
        <td>Cut</td>
        <td>Sig. Ideal</td>
      </tr>
      <tr>
        <td>Color</td>
        <td>E</td>
      </tr>
      <tr>
        <td>Clarity</td>
        <td>VVS2</td>
      </tr>
      <tr>
        <td>Length/width ratio</td>
        <td>1.2</td>
      </tr>
      <tr>
        <td>Depth %</td>
        <td>66.8%</td>
      </tr>
      <tr>
        <td>Table %</td>
        <td>60.0%</td>
      </tr>
      <tr>
        <td>Polish</td>
        <td>Excellent</td>
      </tr>
      <tr>
        <td>Symmetry</td>
        <td>Very Good</td>
      </tr>
      <tr>
        <td>Girdle</td>
        <td>Slightly Thick to Thick</td>
      </tr>
      <tr>
        <td>Culet</td>
        <td>Small</td>
      </tr>
      <tr>
        <td>Fluorescence</td>
        <td>Medium</td>
      </tr>
      <tr>
        <td>Measurements</td>
        <td>6.95 x 6.84 x 4.57 mm</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </tbody>
  </table>

<div id="rg-gallery" class="rg-gallery">
          <div class="rg-thumbs">
            <!-- Elastislide Carousel Thumbnail Viewer -->
            <div class="es-carousel-wrapper">
               
              <div class="es-carousel">
                <ul>
                  <li><a href="#"><img src="image/catalog/thumbs/1.jpg" data-large="image/catalog/1.jpg" alt="image01"/></a></li>
                  <li><a href="#"><img src="image/catalog/thumbs/2.jpg" data-large="image/catalog/2.jpg" alt="image01"/></a></li>
                                    <li><a href="#"><img src="image/catalog/thumbs/3.jpg" data-large="image/catalog/3.jpg" alt="image01"/></a></li>
                  <li><a href="#"><img src="image/catalog/thumbs/4.jpg" data-large="image/catalog/4.jpg" alt="image01"/></a></li>
                </ul>
              </div>
            </div>
            <!-- End Elastislide Carousel Thumbnail Viewer -->
          </div><!-- rg-thumbs -->
        </div>
<a href="#1" class="cd-close" style="left:0px"><img src="image/catalog/close-arrow.png" />Close Details</a>
<a href="#0" class="cd-close">More Details &nbsp; &nbsp; &nbsp;<img src="image/catalog/more-details.png" /></a>
    </div> <!-- cd-filter -->

    
</div></div> </div>
<!--showing end -->

 

</div>
  <!-- End SlidesJS Required -->
 <script>
$( "#slider-range" ).slider({
            range: true,
            min: 0,
            max: 500,
            values: [ 75, 300 ],
            slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
            }
 });
$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );
</script>

 
<!--tab -->
 <script src="catalog/view/javascript/jquery/jquery.mixitup.min.js"></script>
<script src="catalog/view/javascript/jquery/main.js"></script> 
 
<script src="catalog/view/javascript/jquery/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!--tab -->
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.accordion.js"></script> 

<script type="text/javascript">$(document).ready(function() {
        $('#only-one [data-accordion]').accordion();

        $('#multiple [data-accordion]').accordion({
          singleOpen: false
        });

        $('#single[data-accordion]').accordion({
          transitionEasing: 'cubic-bezier(0.455, 0.030, 0.515, 0.955)',
          transitionSpeed: 200
        });
      });
    </script>
    
     <!--on off -->
 <!--gallery -->
 		<script type="text/javascript" src="catalog/view/javascript/js/jquery.tmpl.min.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/js/jquery.elastislide.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/js/gallery.js"></script>
      <!-- END-->
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>