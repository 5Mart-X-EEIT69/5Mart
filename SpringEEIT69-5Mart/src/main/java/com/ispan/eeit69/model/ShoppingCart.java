package com.ispan.eeit69.model;

import java.util.LinkedHashMap;
import java.util.Map;

public class ShoppingCart {
	private Map<Integer, Course> cart = new LinkedHashMap< >();
	
	// 建構式
	public ShoppingCart() {
		
	}
	
	// 方法
	public Map<Integer, Course> getContent(){
		return cart;
	}
	
	public void addToCart(int id, Course course) {
		if( cart.get(id) == null ) {
		    cart.put(id, course);
		}
	}

}
