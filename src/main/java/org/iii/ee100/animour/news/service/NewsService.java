package org.iii.ee100.animour.news.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.news.dao.NewsDao;
import org.iii.ee100.animour.news.entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class NewsService{
	@Autowired
	private NewsDao newsDao;
	
	public Page<News> getPage(int pageNo, int pageSize) {
		PageRequest pageable = new PageRequest(pageNo - 1, pageSize);
		return newsDao.findTop6ByOrderBySeqnoDesc(pageable);
	}
		
	
	
	
	public void insert(News news) {
		newsDao.save(news);
	}
	
	
	
	public void update(News news) {
		newsDao.save(news);
	}

	
	
	public void delete(Long seqno) {
		newsDao.delete(seqno);
	}

	
	
	public List<News> getAll() {
		return Lists.newArrayList(newsDao.findAll());
	}

	
	
	public News getOne(Long seqno) {
		return newsDao.findOne(seqno);
	}
	public List<News> getSixNews(){
		return newsDao.findTop6ByOrderByEventDateDesc();
	}
}
