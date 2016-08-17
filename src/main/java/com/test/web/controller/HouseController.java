package com.test.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.web.entity.HouseEntity;
import com.test.web.service.IHouseService;
import com.test.web.service.impl.HouseService;

@Controller
@RequestMapping("house")
public class HouseController {
	
	@RequestMapping("house")
	public ModelAndView house(@RequestParam("id") String id) {
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		HouseEntity houseEntity = houseService.getHouseById(Integer.valueOf(id));
		
		model.addObject("house", houseEntity);
		model.setViewName("house");
		
		return model;
	}
	
	@RequestMapping(value="page/{id}/{size}", method=RequestMethod.GET) 
	public ModelAndView page(@PathVariable String id, @PathVariable String size) {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("test");
		return model;
	}
	
	@RequestMapping("insert")
	public ModelAndView insert() {
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		HouseEntity houseEntity = houseService.getHouseById(12);
		model.setViewName("test");
		return model;
	}
	
}
