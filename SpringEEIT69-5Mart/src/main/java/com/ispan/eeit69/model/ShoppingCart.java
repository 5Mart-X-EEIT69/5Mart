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
	
	// 增加課程到購物車
	public void addToCart(int id, Course course) {
		if( cart.get(id) == null ) {
		    cart.put(id, course);
		}
	}
	
	// 刪除購物車的某個課程
	public boolean removeToCart(int id) {
		if(cart.get(id) != null) {
			cart.remove(id);
			return true;
		}
		return false;
	}


	
	
	

}
