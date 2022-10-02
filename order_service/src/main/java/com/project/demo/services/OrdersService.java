package com.project.demo.services;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.demo.repo.OrdersRepository;
import com.project.demo.entity.Orders;

@Service
public class OrdersService {

	@Autowired
	private OrdersRepository repo;
	
	public OrdersService(OrdersRepository repo) {
		super();
		this.repo=repo;
	}
	
	public List<Orders> findAll(){
		return this.repo.findAll();
	}

	public Orders add(Orders entity) {
		return this.repo.save(entity);
	}

	public Orders update(Orders entity) {
		// TODO Auto-generated method stub
		return this.repo.save(entity);
	}

	public List<Orders> findByOrderId(int orderId) {
		// TODO Auto-generated method stub
		return this.repo.findByOrderId(orderId);
	}
	
	public List<Integer> findUniqueOrderId(){
		return this.repo.findUniqueOrderId();
	}
	public List<Orders> findByOrderPerson(String orderPerson) {
		// TODO Auto-generated method stub
		return this.repo.findByOrderPerson(orderPerson);
	}
	
}
