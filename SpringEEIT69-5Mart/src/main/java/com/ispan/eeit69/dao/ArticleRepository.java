package com.ispan.eeit69.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.eeit69.model.Article;
import com.ispan.eeit69.model.Course;

@Repository
public interface ArticleRepository extends JpaRepository<Article, Integer> {
	
	List<Article> findByArticleTitle(String articleTitle);//配合網站需求自定義的Dao
	List<Article> findByArticleTitleContaining(String articleTitle);//  搜尋關鍵字
	List<Article> findByTeacher_Id(Integer id);
}
