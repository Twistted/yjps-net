package com.test.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.test.web.dto.Result;
import com.test.web.entity.NewsEntity;
import com.test.web.service.INewsService;
import com.test.web.service.impl.NewsService;


@Controller
@RequestMapping("info")
public class InfoController {

	@RequestMapping("show_news")
	public ModelAndView showNews(@RequestParam(value="page", required=false) Integer page, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		if (page == null || page == 0)
			page = 1;
		List<NewsEntity> newsList, allNewsList;
		INewsService agentService = new NewsService();
		newsList = agentService.listNews(page, 5);
		allNewsList = agentService.findAll();
		if (newsList == null || newsList.isEmpty()) {
			model.setViewName("500");
			return model;
		}
		for (int i = 0; i < newsList.size(); i++) {
			System.out.println(newsList.get(i));
		}
		model.addObject("allNewsSize", allNewsList.size());
		model.addObject("pageSize", (Math.ceil(allNewsList.size() * 1.0 / 5)));
		model.addObject("newsList", newsList);
		model.addObject("currentPage", page);
		model.addObject("listSize", newsList.size());
		model.setViewName("info/news_list");
		return model;
	}
	
	@RequestMapping("show_news_detail")
	public ModelAndView showAgentDetail(@RequestParam("newsId") int newsId, @RequestParam(value="page", required=false) Integer page, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		
		INewsService newsService = new NewsService();
		NewsEntity newsEntity = newsService.getNewsById(newsId);
		if (newsEntity == null) {
			model.setViewName("500");
			return model;
		} 
		if (page == null || page == 0)
			page = 1;
		
		
		
		System.out.println(newsService);
		model.addObject("news", newsEntity);
		model.addObject("currentPage", page);
		
		model.setViewName("info/news_detail");
		return model;
	}

}
