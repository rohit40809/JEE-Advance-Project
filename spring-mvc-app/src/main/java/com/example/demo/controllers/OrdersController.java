package com.example.demo.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.entity.Orders;
import com.example.demo.entity.Products;

@Controller
public class OrdersController {
	@Autowired
	private RestTemplate template;
	@Autowired
	private Orders order;
	public OrdersController(Orders order) {
		super();
		this.order=order;
	}
	@GetMapping(path = "/orders")
	public String Orders() {
		return "orders";
	}
	@GetMapping(path="/orders/show-orders-by-order-person")
	public String ShowOrdersByUser(Model model) {
		model.addAttribute("orderPersonList", template.getForObject("http://localhost:5050/list", Orders[].class));
		return "show-orders-by-order-person";
	}
	
	@RequestMapping(path="/orders/show-orders-by-order-person",method = RequestMethod.POST)
	public String OnSubmitShowOrdersByUser(Model model,@RequestParam("orderPerson") String orderPerson) {
		model.addAttribute("list",template.getForObject("http://localhost:5050/list/"+orderPerson,Orders[].class));
		model.addAttribute("orderPersonList", template.getForObject("http://localhost:5050/list", Orders[].class));
		return "show-orders-by-order-person";
	}
	
	@GetMapping(path = "/orders/add-order")
	public String AddOrder(Model model) {
		model.addAttribute("command",order);
		model.addAttribute("list",template.getForObject("http://localhost:8080/list/available",Products[].class));
		return "add-order";
	}
	@RequestMapping(path="/orders/add-order",method = RequestMethod.POST)
	public String OnSubmitAddOrder(@ModelAttribute("command") Orders obj,Model model) {
		model.addAttribute("list",template.getForObject("http://localhost:8080/list/available",Products[].class));
		template.postForLocation("http://localhost:5050/save", obj);
		model.addAttribute("message","order added");
		return "add-order";
	}
	
	@GetMapping(path="/orders/show-order-by-order-id")
	public String ShowOrderByOrderId(Model model) {
		model.addAttribute("orderIdList", template.getForObject("http://localhost:5050/list", Orders[].class));
		return "show-order-by-order-id";
	}
	

	@RequestMapping(path="/orders/show-order-by-order-id",method = RequestMethod.POST)
	public String OnSubmitShowOrderByOrderId(Model model,@RequestParam("orderId") int orderId) {
		model.addAttribute("orderIdList", template.getForObject("http://localhost:5050/list", Orders[].class));
		model.addAttribute("list",template.getForObject("http://localhost:5050/"+orderId,Orders[].class));
		return "show-order-by-order-id";
	}
	
	@GetMapping(path="/orders/orders-by-order-id")
	public String OrderByOrderId(Model model) {
		model.addAttribute("orderidlist",template.getForObject("http://localhost:5050/list",Orders[].class));
		return "orders-by-order-id";
	}
	
	@RequestMapping(path="/orders/orders-by-order-id",method = RequestMethod.POST)
	public String OnSubmitOrderByOrderId(Model model,@RequestParam("orderId") int orderId) {
		model.addAttribute("orderlist",template.getForObject("http://localhost:5050/"+orderId,Orders[].class));
		model.addAttribute("command",order);
		model.addAttribute("list",template.getForObject("http://localhost:8080/list/available",Products[].class));
		return "update-orders";
	}
	
	@RequestMapping(path="/orders/update-order",method = RequestMethod.POST)
	public String OnSubmitUpdateOrder(Model model,@ModelAttribute("command") Orders obj) {
		model.addAttribute("command",order);
		model.addAttribute("list",template.getForObject("http://localhost:8080/list/available",Products[].class));
		template.postForLocation("http://localhost:5050/save", obj);
		model.addAttribute("orderlist",template.getForObject("http://localhost:5050/"+obj.getOrderId(),Orders[].class));
		return "update-orders";
	}
}











