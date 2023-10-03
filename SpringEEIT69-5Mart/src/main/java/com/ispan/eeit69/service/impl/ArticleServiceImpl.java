package com.ispan.eeit69.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ispan.eeit69.dao.ArticleRepository;
import com.ispan.eeit69.model.Article;
import com.ispan.eeit69.service.ArticleService;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class ArticleServiceImpl implements ArticleService {
	
	final static Logger log = LoggerFactory.getLogger(ArticleServiceImpl.class);
	
	ArticleRepository articleRepository ;
	
	public ArticleServiceImpl(ArticleRepository articleRepository) {
		this.articleRepository = articleRepository;
	}

	@Override
	public Article save(Article article) {
		log.info("=====>ArticleServiceImpl#save()");
		articleRepository.save(article);
		return article;
	}

	@Override
	public Article update(Article article) {
		log.info("=====>ArticleServiceImpl#update()");		
		return articleRepository.save(article);
	}

	@Override
	public Article findById(Integer id) {
		Article article = null;
		log.info("=====>ArticleServiceImpl#findById()");
		Optional<Article> opt = articleRepository.findById(id);
		if (opt.isPresent()) {
			article = opt.get();
		} else throw new RuntimeException("文章(鍵值=" + id + ")不存在");
		return article;
	}

	@Override
	public List<Article> findAll() {
		log.info("=====>ArticleServiceImpl#findAll()");
		return articleRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		log.info("=====>ArticleServiceImpl#deleteById()");
		articleRepository.deleteById(id);
	}

	@Override
	public List<Article> findByArticleTitle(String articleTitle) {
		log.info("=====>ArticleServiceImpl#findByArticleTitle()");
		return articleRepository.findByArticleTitle(articleTitle);
	}

	@Override
	public List<Article> findByArticleTitleContaining(String articleTitle) {
		log.info("=====>ArticleServiceImpl#findByArticleTitleContaining()");
		return articleRepository.findByArticleTitleContaining(articleTitle);
	}

	@Override
	public List<Article> findByTeacher_Id(Integer id) {
		log.info("=====>ArticleServiceImpl#findByTeacher_Id()");
		return articleRepository.findByTeacher_Id(id);
	}

	
}
