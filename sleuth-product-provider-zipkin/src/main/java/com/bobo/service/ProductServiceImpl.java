package com.bobo.service;

import com.bobo.mapper.ProductMapper;
import com.bobo.pojo.Product;
import com.bobo.pojo.ProductExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl {

	@Autowired
	private ProductMapper productMapper;

	public List<Product> findAll() {
		ProductExample example = new ProductExample();
		//List<Product> products = productMapper.selectByExample(example);
		List<Product> products = new ArrayList<>();
		Product product = productMapper.selectByPrimaryKey(1);
		products.add(product);
		return products;
	}

}
