<?php
class ModelTryTry extends Model {
	//add @ home
public function addtryathome($product, $customer_id, $trySessionId) {
		//$this->data = array();
	//$this->load->model(
		$product_id = $product['product_id'];
		$name = $product['name'];
		$image = $product['image'];
		$created = date('Y-m-d H:i:s');
		if(empty($this->session->data['try']['try_session_id'])){
		$try_session_id = rand(1000, 99999);
		} else {
		$try_session_id = $this->session->data['try']['try_session_id'];
		}
		$customer_id = $customer_id;
		
	 $queryc = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_try WHERE customer_id = '$customer_id' and try_session_id = '$try_session_id' and product_id = '$product_id' ");	
	 $products_exe_count = $queryc->rows ? count($queryc->rows) : 0;
			
  $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_try WHERE customer_id = '$customer_id' and try_session_id = '$try_session_id' ");
  $products_count = $query->rows ? count($query->rows) : 0;
  if($products_exe_count <= 0) {
  if( $products_count < 5 ){

	$sql = "INSERT into " . DB_PREFIX . "product_try  (product_id, product_name, product_image, customer_id, try_session_id, created) value ('$product_id', '$name', '$image', '$customer_id', '$try_session_id', '$created') ";
	   $query = $this->db->query($sql);
				  if($query){
		              $msg =  array('msg' => 'Successfully Added', 'count' => $products_count+1);
						 } else {
						 $msg =  array('msg' => 'Failed');
						 }
	  } else {
	  
	  $msg = array('msg' => 'your Try at Home count exceeded');
	  
	  }
		} else {
		
		 $msg = array('msg' => 'You already have same product to Try, Check another product');
		
		}
	
		 return $msg;
     
	
	}
	public function removeproduct($product_id, $customer_id, $try_session_id) {
	
		$product_id = $product_id;
		
		
		//$try_session_id = $this->session->data['try']['try_session_id'];
		//$customer_id = $this->session->data['try']['customer_id'];
			
	 $queryc = $this->db->query("DELETE FROM " . DB_PREFIX . "product_try WHERE customer_id = '$customer_id' and try_session_id = '$try_session_id' and product_id = '$product_id' ");	
			
  $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_try WHERE customer_id = '$customer_id' and try_session_id = '$try_session_id' ");
  $products_count = $query->rows ? count($query->rows) : 0;
 
	if($queryc){
		    $msg =  array('msg' => 'Product Removed', 'count' => $products_count);
			} else {
			$msg =  array('msg' => 'Failed');
			}
	 return $msg;
     
	}

		public function getTryProducts($customer_id, $try_session_id) {
		if (!$this->data) {
			$customer_id = $customer_id;
			$try_session_id = $try_session_id;
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_try where customer_id = '$customer_id' and try_session_id = '$try_session_id'");
			$product = array();
			$i = 0;
			foreach ($query->rows as $result) {
			$product[$i]['id'] = $result['product_id'];
			$product[$i]['product_name'] =$result['product_name'];
			$product[$i]['product_image'] =$result['product_image'];
			$i++;
		}
			//print_r($product);
			return array('products'  => $query->rows);
			//$this->data[] 
		}

		//return $this->data;
	}

	public function addTryCustomer($name, $mobile, $email, $customer_id, $session_id){
		return "success";
	}

	public function alreadyexist($customer_id){
		$customer_id = $customer_id;
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_try_customer_details WHERE customer_id = '$customer_id' and verification = Yes");	
	 	$excount = $query->rows ? count($query->rows) : 0;

	 	if($excount > 0){
	 		return "yes";
	 	} else {
	 		return "no";
	 	}


	}
	
	
}