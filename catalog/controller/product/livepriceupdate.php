<?php 

// Name: 		Live Price Update with Options
// Version: 	1.0
// Author: 		OpenCart FACTORY
// Website:		www.ocfactory.net
	
class ControllerProductLivepriceupdate extends Controller {
	/* ====================================================================================

	SETTINGS

	Below you can find five variables that relate to DOM the structure of the template product/product.tpl. 
	The default values correspond to a default OpenCart theme. 
	If you use customized theme, these containers might have other class or id. In this case you need to clarify their value.

	==================================================================================== */
	
	public $options_container 			= '#product'; 			// in default them it is 			".product-info"
	public $old_price_container		 	= '#price_old'; 			// in default them it is 			".price-old"
	public $tax_price_container 		= '#price_tax'; 			// in default them it is 			".price-tax'"
	public $special_price_container		= '#price_special'; 		// by default this module sets 		"#price_container"
	public $use_cache					= true;						// set FALSE to disable caching (TRUE - enable)
	public $calculate_quantity			= true;						// calculate price with quantity
	
	private $error = array();

	public function index() {
		
		$json = array();
		$update_cache = false;
		$options_makeup = 0;
		
		if (isset($this->request->post['product_id'])) {
			$product_id = (int)$this->request->post['product_id'];
		} else {
			$product_id = 0;
		}
		
		if ($this->calculate_quantity && isset($this->request->post['quantity'])) {
			$quantity = (int)$this->request->post['quantity'];
		} else {
			$quantity = 1;
		}
		
		$this->language->load('product/product');
		$this->load->model('catalog/product');
		
		$data['gold_price'] = 2558;
		$data['gold_selling_price'] = ($data['gold_price'] * 0.03) + $data['gold_price'];


		// Cache name
		if (isset($this->request->post['option']) && is_array($this->request->post['option'])) {
			$options_hash = serialize($this->request->post['option']);
		} else {
			$options_hash = '';
		}
		
		$cache_key = 'live_price_update'. md5($product_id . $quantity. $options_hash . $this->currency->getCode() . $this->session->data['language']);
		
		if (!$this->use_cache || (!$json = $this->cache->get($cache_key))) {
				
			$product_info = $this->model_catalog_product->getProduct($product_id);
			
			// Prepare data
			if ($product_info) {
			
				$update_cache = true;
							
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					//$data['price'] = $this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax'));
                    $data['price'] = $product_info['price'];
                } else {
					$data['price'] = false;
				}
							
				if ((float)$product_info['special']) {
					//$data['special'] = $this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax'));
                    $data['special'] = $product_info['special'];
                } else {
					$data['special'] = false;
				}

				$product_gold = $this->model_catalog_product->getProductGold($product_id);

				foreach($product_gold as $gold){
					$gold_weight = $gold['weight'];
				}

				$purity = 0;

				// If some options are selected
				if (isset($this->request->post['option']) && $this->request->post['option']) {
                    foreach ($this->model_catalog_product->getProductOptions($product_id) as $option) {
                        foreach ($option['product_option_value'] as $option_value) {
                            //If options checkbox
                            if(isset($this->request->post['option'][$option['product_option_id']]) && is_array($this->request->post['option'][$option['product_option_id']])) {
                                array_filter($this->request->post['option'][$option['product_option_id']]);
                                foreach($this->request->post['option'][$option['product_option_id']] as $checked_option) {
                                    if ($checked_option == $option_value['product_option_value_id']) {
                                    	/*if($this->request->post['option'][$option['option_id']] == 23){
		                        			if($option_value['option_value_id'] == 51){ 
		                        				$option_value['price'] = 10 *100;
		                            		}elseif($option_value['option_value_id'] == 52){
		                            			$option_value['price'] = 10 *300;
		                            		}
		                            		//$option_value['price'] = 10 *300;
		                        		}*/
                                        if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
                                            if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
                                                //$price = $this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax'));
                                                $price = $option_value['price'];
                                            } else {
                                                $price = false;
                                            }
                                            if ($price) {
                                                if ($option_value['price_prefix'] === '+') {
                                                    $options_makeup = $options_makeup + (float)$price;
                                                } else {
                                                    $options_makeup = $options_makeup - (float)$price;
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            //If options not checkbox
                            if (isset($this->request->post['option'][$option['product_option_id']]) && $this->request->post['option'][$option['product_option_id']] == $option_value['product_option_value_id']) {
                            	
                        			if($option_value['option_value_id'] == 51){ 
                        				$purity = 51;
                            		}
                            		if($purity){
                            			if($option_value['option_value_id'] == 83 || $option_value['option_value_id'] == 84){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.03 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 85 || $option_value['option_value_id'] == 86){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.06 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 87 || $option_value['option_value_id'] == 88){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.09 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 89 || $option_value['option_value_id'] == 90){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.12 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 91 || $option_value['option_value_id'] == 92){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.15 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 93 || $option_value['option_value_id'] == 94){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.18 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 95 || $option_value['option_value_id'] == 96){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.21 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 97 || $option_value['option_value_id'] == 98){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.24 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 99 || $option_value['option_value_id'] == 100){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.27 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 101 || $option_value['option_value_id'] == 102){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.30 * $gold_weight));
                            			}
                            			if($option_value['option_value_id'] == 103){
                            				$option_value['price'] = round((($data['gold_selling_price']/24) * 14) * (0.33 * $gold_weight));
                            			}
                            		}
                                //$json['new_price']['values'] = $purity;
                                if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
                                    if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
                                        //$price = $this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax'));
                                        $price = $option_value['price'];
                                    } else {
                                        $price = false;
                                    }
                                    if ($price) {
                                        if ($option_value['price_prefix'] === '+') {
                                            $options_makeup = $options_makeup + (float)$price;
                                        } else {
                                            $options_makeup = $options_makeup - (float)$price;
                                        }
                                    }
                                }
                            }
                        }
                        unset($price);
                    }
				}
				if ($data['price']) {
					$json['new_price']['price'] = $this->currency->format($this->tax->calculate(($data['price'] + $options_makeup), $product_info['tax_class_id'], $this->config->get('config_tax')) * $quantity);
				} else {
					$json['new_price']['price'] = false;
				}
				
				if ($data['special']) {
					$json['new_price']['special'] = $this->currency->format($this->tax->calculate(($data['special'] + $options_makeup), $product_info['tax_class_id'], $this->config->get('config_tax')) * $quantity);
				} else {
					$json['new_price']['special'] = false;
				}
		
				if ($this->config->get('config_tax')) {
					$json['new_price']['tax'] = $this->currency->format(((float)$product_info['special'] ? ($product_info['special'] + $options_makeup) : ($product_info['price'] + $options_makeup)) * $quantity );
				} else {
					$json['new_price']['tax'] = false;
				}
				
				$json['success'] = true;
				
			} else {
				$json['success'] = false;
			}
		
		}
		
		if ($update_cache && $this->use_cache) {
			$this->cache->set($cache_key, $json);
		}
		
		echo json_encode($json);
		exit;
  	}

  	function js() {
		
		header('Content-Type: application/javascript');
		
		$js = <<<HTML

			var price_with_options_ajax_call = function() {
				$.ajax({
					type: 'POST',
					url: 'index.php?route=product/livepriceupdate/index',
					data: $('{$this->options_container} input[type=\'text\'], {$this->options_container} input[type=\'hidden\'], {$this->	options_container} input[type=\'radio\']:checked, {$this->options_container} input[type=\'checkbox\']:checked, {$this->options_container} select, {$this->options_container} textarea'),
					dataType: 'json',
						beforeSend: function() {
							// you can add smth useful here
						},
						complete: function() {
							// you can add smth useful here
						},
						success: function(json) {
						if (json.success) {
							animation_on_change_price_with_options('{$this->special_price_container}', json.new_price.special);
							animation_on_change_price_with_options('{$this->tax_price_container}', json.new_price.tax);
							animation_on_change_price_with_options('{$this->old_price_container}', json.new_price.price);
						}
					},
					error: function(error) {
						//console.log(error);
					}
				});
			}
			
			var animation_on_change_price_with_options = function(selector_class_or_id, new_html_content) {
				$(selector_class_or_id).fadeOut(150, function() {
					$(this).html(new_html_content).fadeIn(50);
				});
			}
			
			if ( jQuery.isFunction(jQuery.fn.on) ) 
			{
				$('{$this->options_container} input[type=\'text\'], {$this->options_container} input[type=\'hidden\'], {$this->options_container} input[type=\'radio\'], {$this->options_container} input[type=\'checkbox\'], {$this->options_container} select, {$this->options_container} textarea, {$this->options_container} input[name=\'quantity\']').on('change', function() {
					price_with_options_ajax_call();
				});
			} 
			else 
			{
				$('{$this->options_container} input[type=\'text\'], {$this->options_container} input[type=\'hidden\'], {$this->options_container} input[type=\'radio\'], {$this->options_container} input[type=\'checkbox\'], {$this->options_container} select, {$this->options_container} textarea, {$this->options_container} input[name=\'quantity\']').on('change', function() {
					price_with_options_ajax_call();
				});
			}	

HTML;

		echo $js;
		exit;
	}
}