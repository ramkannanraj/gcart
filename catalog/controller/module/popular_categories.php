<?php
class ControllerModulePopularCategories extends Controller {
	public function index($setting) {
		$this->load->language('module/popular_categories');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/category');

		$this->load->model('tool/image');

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		if (!empty($setting['product'])) {
			$categories = array_slice($setting['product'], 0, (int)$setting['limit']);

			foreach ($categories as $category_id) {
							
				$category = $this->model_catalog_category->getCategory($category_id);
											
				if ($category) {
					if ($category['image']) {
						$image = $this->model_tool_image->resize($category['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					$data['categories'][] = array(
						'category_id'  => $category['category_id'],
						'thumb'       => $image,
						'name'        => $category['name'],
						'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
					);
				}
			}
		}

		if ($data['categories']) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/popular_categories.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/popular_categories.tpl', $data);
			} else {
				return $this->load->view('default/template/module/popular_categories.tpl', $data);
			}
		}
	}
}