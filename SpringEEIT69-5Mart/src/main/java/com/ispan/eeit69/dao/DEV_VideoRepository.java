package com.ispan.eeit69.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.model.DEV_Video;

@Repository
public interface VideoRepository extends JpaRepository<Video, Integer>{
	
	//自定義的一個方法。Spring Data JPA 根據方法名自動實現 SQL 查詢。
	//findByUuid 會自動轉成一個 SQL 查詢，用來根據 UUID 字段找到對應的 Video 實體。
	//返回一個 Optional<Video>，這意味著查詢的結果可能是空。
	
	 Optional<Video> findByUuid(String uuid);  // 用來找UUID的方法
}
