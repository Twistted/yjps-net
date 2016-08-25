package com.test.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.web.entity.AdvertisementEntity;
import com.test.web.entity.HouseEntity;
import com.test.web.service.IAdvertisementService;
import com.test.web.service.IHouseService;
import com.test.web.service.impl.AdvertisementService;
import com.test.web.service.impl.HouseService;

@Controller
@RequestMapping("/home")
public class IndexController {
	
	@RequestMapping("/index")
	public ModelAndView home(@RequestParam(value="page", required=false) String page) {
		ModelAndView model = new ModelAndView();
		// get service
		IHouseService houseService = new HouseService();
		int pageOffset;
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		
		List<HouseEntity> houseList = houseService.listHouse(pageOffset, 3);
		
		model.addObject("houseList", houseList);
		model.addObject("listSize", houseList.size());
		model.addObject("currentPage", pageOffset);
		model.addObject("pageSize", (houseList.size() / 3) + 1 );
		
		IAdvertisementService advertisementService = new AdvertisementService();
		List<AdvertisementEntity> advertisementList = advertisementService.getAdvertisementList(4);
		model.addObject("advertisementList", advertisementList);
		
		model.setViewName("home");
		return model;
	}
	
	@RequestMapping(value="page/{id}/{size}", method=RequestMethod.GET) 
	public ModelAndView page(@PathVariable String id, @PathVariable String size) {
		System.out.println("id => " + id + " size => " + size);
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		List<HouseEntity> housePage = houseService.listHouse(Integer.valueOf(id), Integer.valueOf(size));
		System.out.println(housePage);
		model.setViewName("test");
		return model;
	}
	
	@RequestMapping(value="search", method=RequestMethod.GET)
	public ModelAndView search(@RequestParam("search") String search) {
		ModelAndView model = new ModelAndView();
		// get service
		IHouseService houseService = new HouseService();
		System.out.println(search);
		List<HouseEntity> houseList = houseService.search(search);
		
		model.addObject("houseList", houseList);
		model.addObject("listSize", houseList.size());
		
		IAdvertisementService advertisementService = new AdvertisementService();
		List<AdvertisementEntity> advertisementList = advertisementService.getAdvertisementList(4);
		model.addObject("advertisementList", advertisementList);
		
		model.setViewName("home");
		return model;
	}
	
	
}
