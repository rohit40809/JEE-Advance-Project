package com.project.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.demo.entity.Products;

public interface ProductRepository extends JpaRepository<Products, Integer> {
	List<Products> findByMerchantName(String merchantName);
	
	@Query(value="select * from products where product_inventory>0",nativeQuery=true)
	List<Products> findByAvailability();
	
	@Query(value="select distinct * from products where product_inventory=0",nativeQuery=true)
	List<Products> findByNotAvailability();
}
