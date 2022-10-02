package com.project.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.demo.entity.Products;
import com.project.demo.repo.ProductRepository;

@Service
public class ProductsService {

	@Autowired
	private ProductRepository repo;
	
	public ProductsService(ProductRepository repo) {
		super();
		this.repo=repo;
	}
	
	public List<Products> findAll(){
		return this.repo.findAll();
	}

	public List<Products> findByMerchantName(String merchantName) {
		// TODO Auto-generated method stub
		return this.repo.findByMerchantName(merchantName);
	}

	public List<Products> findByAvailability() {
		// TODO Auto-generated method stub
		return this.repo.findByAvailability();
	}

	public List<Products> findByNotAvailability() {
		// TODO Auto-generated method stub
		return this.repo.findByNotAvailability();
	}

	public Products add(Products entity) {
		return this.repo.save(entity);
	}

	public Products update(Products entity) {
		// TODO Auto-generated method stub
		return this.repo.save(entity);
	}
}
