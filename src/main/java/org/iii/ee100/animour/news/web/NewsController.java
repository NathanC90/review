package org.iii.ee100.animour.news.web;

import org.iii.ee100.animour.news.entity.News;
import org.iii.ee100.animour.news.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NewsController {
	
	@Autowired
	NewsService newsService;	
	
//	@RequestMapping("/news/index")
//	public String newsIndex(Model model) {
//		return "/news/newsIndex";
//	}
	@RequestMapping("/news/index")
	public String findAll(int pageNo,Model model) {
		//分頁
		if(pageNo < 1) {
			pageNo = 1;
		}
		Page<News> page = newsService.getPage(pageNo, 3);
		int totalPage = page.getTotalPages();
		if(pageNo > totalPage && totalPage!=0) {
			pageNo = totalPage;
		}
		page = newsService.getPage(pageNo, 3);
		model.addAttribute("page", page);
		
		return "/news/newsIndex";
	}
	
	
	
	@RequestMapping(path= {"/findOneNews"}, method={RequestMethod.GET})
	public String findOne(News news, Model model) {
		News nb = newsService.getOne(Long.valueOf(news.getSeqno()));
		if (nb != null) {
			model.addAttribute("oneNews", nb);
		}
		return "/news/enroll";
	}
	
	@RequestMapping(path= {"/findAllNews"}, method={RequestMethod.GET})
	public String selectAll(Model model) {
		model.addAttribute("allNews", newsService.getAll());
		return "/news/enroll";
	}
	
	@RequestMapping(path= {"/deleteNews"}, method={RequestMethod.GET})
	public String deleteNews(News news, Model model) {
		newsService.delete(news.getSeqno());
		model.addAttribute("delete", Long.valueOf(news.getSeqno()));
		return "/news/enroll";
	}
	
	@RequestMapping(path= {"/insertNews"}, method={RequestMethod.POST})
	public String insertNews(News news, Model model) {
		newsService.insert(news);
		model.addAttribute("insertNews", news);
		return "/news/enroll";
	}
	
	@RequestMapping(path= {"/updateNews"}, method={RequestMethod.GET})
	public String updateNews(News news, Model model) {
		newsService.update(news);
		model.addAttribute("updateNews", news);
		return "/news/enroll";
	}
	
	@RequestMapping(path= {"/findSixNews"}, method={RequestMethod.GET})
	public String findSixNews(Model model) {
		model.addAttribute("sixNews", newsService.getSixNews());
		return "/news/newsIndex";
	}
	
	
	
}
