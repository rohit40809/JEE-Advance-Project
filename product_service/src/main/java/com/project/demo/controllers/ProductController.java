package com.project.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.demo.entity.Products;
import com.project.demo.services.ProductsService;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@RestController
@RequestMapping(path = "/")
@AllArgsConstructor
@NoArgsConstructor
public class ProductController {
	
	@Autowired
	private ProductsService service;
	
	@GetMapping("/list")
	public List<Products> getAll(){
		return this.service.findAll();
	} 
//	findByMerchantName(String merchantName)
	@GetMapping("/list/{merchant_name}")
	public List<Products> findById(@PathVariable("merchant_name") String merchantName) {
		return this.service.findByMerchantName(merchantName);
	}
	
	@GetMapping("/list/available")
	public List<Products> findByAvailability(){
		return this.service.findByAvailability();
	}
	
	@GetMapping("/list/not-available")
	public List<Products> findByNotAvailability(){
		return this.service.findByNotAvailability();
	}
	
	@PostMapping("/save")
	public ResponseEntity<Products> add(@RequestBody Products entity){
		Products addedObj=this.service.add(entity);
		return ResponseEntity.ok().body(null);
	}
	
	@PutMapping("/save")
	public ResponseEntity<Products> update(@RequestBody Products entity){
		Products addedObj=this.service.update(entity);
		return ResponseEntity.ok().body(null);
	}
}







