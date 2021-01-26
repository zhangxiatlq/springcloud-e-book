package com.bobo.controller;

import com.bobo.pojo.Product;
import com.bobo.service.ConsumerProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 创建订单
 *
 * @author dengp
 */
@RestController
@RequestMapping(value = "custom")
public class ConsumerController {


	@Autowired
	private ConsumerProductService productService;


	@RequestMapping(value = "/find", method = RequestMethod.GET)
	public List<Product> createOrder() {
		// 查询所有商品
		List<Product> products = this.productService.findAll();
		return products;
	}


}
