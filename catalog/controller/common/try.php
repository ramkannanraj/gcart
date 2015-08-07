<?php
class ControllerCommonTry extends Controller {
	public function index() {
		$this->load->language('try/try');

		

		// Display prices
			$this->load->model('try/try'); 
			if(!empty($this->session->data['try']['customer_id']) && !empty($this->session->data['try']['try_session_id'])){
				$customer_id = 	 $this->session->data['try']['customer_id'];
			    $try_session_id = 	 $this->session->data['try']['try_session_id'];
				$try = $this->model_try_try->getTryProducts($customer_id, $try_session_id);  //org
				$data['try'] = $try['products'];
			} else {
				$customer_id = 	 0;
			    $try_session_id = 	 0;
				$try = $this->model_try_try->getTryProducts($customer_id, $try_session_id);  //org
				$data['try'] = $try['products'];
			}
			
			

		$data['cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/try.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/try.tpl', $data);
		} else {
			return $this->load->view('default/template/common/try.tpl', $data);
		}
	}

	public function info() {
		$this->response->setOutput($this->index());
	}
}