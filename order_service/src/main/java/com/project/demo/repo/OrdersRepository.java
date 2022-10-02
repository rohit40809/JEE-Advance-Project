package com.project.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.demo.entity.Orders;
import com.project.demo.exceptions.IdNotFoundException;
import com.project.demo.exceptions.UserNotFoundException;


public interface OrdersRepository extends JpaRepository<Orders, Integer> {
	List<Orders> findByOrderId(int orderId);
	List<Orders> findByOrderPerson(String orderPerson);
	
	@Query(value="select order_id from orders",nativeQuery=true)
	List<Integer> findUniqueOrderId();
}
