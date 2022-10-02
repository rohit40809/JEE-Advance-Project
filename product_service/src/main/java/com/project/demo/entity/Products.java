package com.project.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

@FieldDefaults(level=AccessLevel.PRIVATE)
@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name="products")
public class Products {
	@Id
	@Column(name="product_id")
	int productId;
	
	@Column(name="merchant_name")
	String merchantName;
	
	@Column(name="product_categories")
	String productCategories;
	
	@Column(name="product_name")
	String productName;
	
	@Column(name="product_price")
	int productPrice;
	
	@Column(name="product_inventory")
    int productInventory;
}



