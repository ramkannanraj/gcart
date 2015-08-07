<?php
class ControllerTryTry extends Controller {


	public function addtryhomeproduct(){
	
	$try_product_id = $_POST['tryproduct_id'];
	
	$this->load->model('catalog/product'); // include once
	
	$product_info = $this->model_catalog_product->getProduct($try_product_id);
	//print_r($product_info);
	
		@ini_set('session.gc_maxlifetime',1440);


		if(empty($this->session->data['try']['try_session_id'])){
		$try_session_id = rand(1000, 99999);
		
		} else {
		$try_session_id = $this->session->data['try']['try_session_id'];
		}		
		$this->session->data['try']['try_session_id'] = $try_session_id;		
				//debug($this->customer->isLogged());
		if($this->customer->isLogged()){ 
		
		$customer_id = $this->customer->isLogged();
		$this->session->data['try']['customer_id'] = $customer_id;
		} elseif(!empty($this->session->data['try']['customer_id'])){
		$customer_id = $this->session->data['try']['customer_id'];
		}else {
		$customer_id = rand(1000, 99999);
		$this->session->data['try']['customer_id'] = $customer_id;
		}
		
	$this->load->model('try/try'); 
	$try = $this->model_try_try->addtryathome($product_info, $customer_id, $try_session_id);

	
	$erreo = array('msg' => 'errer'); 
    if($try){ 
				echo json_encode($try);
	 } else { 
	 			echo json_encode($erreo);
	  }	//}	
   }
	

public function addTryCustomerdata(){

					$name = $_POST['name'];
					$mobile = $_POST['mobile'];
					$email = $_POST['email'];
					$session_id = $this->session->data['try']['try_session_id'];
					$this->load->model('try/try'); 
					if($this->customer->isLogged()){ 
						$this->load->model('try/try'); 
						

						$customer_id = $this->customer->isLogged();
						$session_cust_id = $this->session->data['try']['customer_id'];
						if($customer_id != $session_cust_id){
							$rid = $this->model_try_try->replaceCustId($customer_id, $session_cust_id, $session_id);
							if($rid == $customer_id){
							$this->session->data['try']['customer_id'] = $customer_id;
							}
						}

						
						$ae = $this->model_try_try->alreadyexist($customer_id);

					if($ae == 'no'){
						$this->load->model('try/try'); 
						$add = $this->model_try_try->addTryCustomer($name, $mobile, $email, $customer_id, $session_id);
						//echo count($add);
						if($add){
							$son = array('msg' => 'Successfully Added, We will contact you shortly', 'url'=> 'account/account');
							//$email = $this->customer->getEmail();
							$email = "mail2ramkannan@gmail.com";
							$from = "tryathome@gemcart.com";
							$sender = "confirmation@gemcart.com";
							$subject = "Gemcart : Your Try @ Home item list ";
							$ry = $this->model_try_try->getTryProducts($customer_id, $session_id);
							$text = "All items added successfully";
							
							
							$this->mail->setTo($email);
							$this->mail->setFrom($from);
							$this->mail->setSender($sender);
							$this->mail->setSubject($subject);
							$this->mail->setHtml($text);
							$this->mail->send();
							
							
							unset($this->session->data['try']['try_session_id']);
							unset($this->session->data['try']['customer_id']); 
							//$son = array('msg' => 'logged in');
						}else{
							$son = array('msg' => 'not success');
						}
					} else {
					$son = array('msg' => 'you already have a verified details. We will contact you shortly');
					}
					
					} else {
						$son = array('msg' => 'Please login and try again', 'url' => 'account/login');
					}
	echo json_encode($son);
	
	}
	
	
	public function removetryhomeproduct(){
	
	$product_id = $_POST['tryproduct_id'];
	$try_session_id = $this->session->data['try']['try_session_id'];
	$customer_id = $this->session->data['try']['customer_id'];
			
	$this->load->model('try/try'); 
	$try = $this->model_try_try->removeproduct($product_id, $customer_id, $try_session_id);

	
	$erreo = array('msg' => 'error'); 
    if($try){ 
				echo json_encode($try);
	 } else { 
	 			echo json_encode($erreo);
	  }	//}	
   }
	
}