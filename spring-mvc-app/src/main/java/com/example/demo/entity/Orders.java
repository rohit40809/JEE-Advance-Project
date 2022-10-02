package com.example.demo.entity;


import org.springframework.stereotype.Component;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

@FieldDefaults(level=AccessLevel.PRIVATE)
@Data
@AllArgsConstructor
@NoArgsConstructor

@Component
public class Orders {
	
	int id; 
	
	int orderId;
	
	String orderPerson;
	
	int productId;
	
	int quantity;
}










