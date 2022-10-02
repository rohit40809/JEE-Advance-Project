package com.example.demo.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.example.demo.entity.Products;
@Controller
public class ProductsController {
	@Autowired
	private RestTemplate template;
	@Autowired
	private Products products;
	public ProductsController(Products products) {
		super();
		this.products =  products;
	}
	@GetMapping(path = "/products")
	public String Products() {
		return "products";
	}
	@GetMapping(path = "/products/show-all-products")
	public String ShowAllProducts(Model model) {
		model.addAttribute("list",template.getForObject("http://localhost:8080/list",Products[].class));
		return "show-all-products";
	}
	@GetMapping(path = "/products/add-product")
	public String AddProduct(Model model) {
		model.addAttribute("command",products);
		return "add-product";
	}
	@RequestMapping(path = "/products/add-product",method = RequestMethod.POST)
	public String OnSubmitAddProduct(@ModelAttribute("command") Products obj,Model model ) {
		template.postForLocation("http://localhost:8080/save", obj);
		model.addAttribute("message","product added");
		System.out.println(obj);
		return "add-product";
	}
	@GetMapping(path = "/products/show-all-products-by-merchant-name")
	public String ShowAllProductByMerchantName(Model model) {
		model.addAttribute("merchantlist",template.getForObject("http://localhost:8080/list",Products[].class));
		return "show-all-products-by-merchant-name";
	}
	@RequestMapping(path="/products/show-all-products-by-merchant-name",method = RequestMethod.POST)
	public String OnSubmitShowAllProductByMerchantName(@RequestParam("merchantName")String merchantName,Model model) {
		model.addAttribute("merchantlist",template.getForObject("http://localhost:8080/list",Products[].class));
		model.addAttribute("list",template.getForObject("http://localhost:8080/list/"+merchantName,Products[].class));
		return "show-all-products-by-merchant-name";
	}
	@GetMapping(path = "/products/update-products")
	public String UpdateProduct(Model model) {
		model.addAttribute("command",products);
		model.addAttribute("list",template.getForObject("http://localhost:8080/list",Products[].class));
		return "update-products";
	}
	@RequestMapping(path="/products/update-products",method = RequestMethod.POST)
	public String OnSubmitUpdateProduct(@ModelAttribute("command") Products obj,Model model ) {
		template.postForLocation("http://localhost:8080/save", obj);
		model.addAttribute("message","product updated");
		System.out.println(obj);
		return "update-products";
	}
	
	@GetMapping(path="/products/show-all-available-products")
	public String ShowAllAvailableProducts(Model model) {
		model.addAttribute("availableProducts",template.getForObject("http://localhost:8080/list/available",Products[].class));
		return "show-all-available-products";
	}
	
	@GetMapping(path="/products/show-all-unavailable-products")
	public String ShowAllUnavailableProducts(Model model) {
		model.addAttribute("unavailableProducts",template.getForObject("http://localhost:8080/list/not-available",Products[].class));
		return "show-all-unavailable-products";
	}
}






