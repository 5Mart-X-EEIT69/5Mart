package com.ispan.eeit69.service;

import java.util.List;

import com.ispan.eeit69.model.Article;

public interface ArticleService {
	Article save(Article article);
	Article update(Article article);
	Article findById(Integer id);
	List<Article> findAll();
	void deleteById(Integer id);//大禮包抄來的基本功能
	
	List<Article> findByArticleTitle(String articleTitle);//配合網站需求自定義的Dao
	List<Article> findByArticleTitleContaining(String articleTitle);//  搜尋關鍵字
	List<Article> findByTeacher_Id(Integer id);//從老師ID找文章
}
