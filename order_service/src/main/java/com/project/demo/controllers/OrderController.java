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

import com.project.demo.entity.Orders;
import com.project.demo.exceptions.IdNotFoundException;
import com.project.demo.exceptions.UserNotFoundException;
import com.project.demo.services.OrdersService;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@RestController
@RequestMapping(path = "/")
@AllArgsConstructor
@NoArgsConstructor
public class OrderController {
	
	@Autowired
	private OrdersService service;
	
	@GetMapping("/list")
	public List<Orders> getAll(){
		return this.service.findAll();
	} 
	
	@GetMapping("/list/{order_person}")
	public List<Orders> findByOrderPerson(@PathVariable("order_person") String orderPerson) throws UserNotFoundException {
		return this.service.findByOrderPerson(orderPerson);
	}
	
	@PostMapping("/save")
	public ResponseEntity<Orders> add(@RequestBody Orders entity){
		Orders addedObj=this.service.add(entity);
		return ResponseEntity.ok().body(null);
	}
	
	@GetMapping("/{orderId}")
	public List<Orders> findByOrderId(@PathVariable("orderId") int orderId) throws IdNotFoundException {
		return this.service.findByOrderId(orderId);
	}
	@GetMapping("/orderId/uniqueId")
	public List<Integer> findByUniqueOrderId(){
		return this.service.findUniqueOrderId();
	}
	@PutMapping("/save")
	public ResponseEntity<Orders> update(@RequestBody Orders entity){
		Orders addedObj=this.service.update(entity);
		return ResponseEntity.ok().body(null);
	}
}







