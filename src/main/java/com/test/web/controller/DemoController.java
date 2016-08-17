package com.test.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.test.web.entity.HouseEntity;
import com.test.web.entity.UserEntity;
import com.test.web.service.IHouseService;
import com.test.web.service.impl.HouseService;


@Controller
public class DemoController {
	
	@RequestMapping("/test")
	public ModelAndView hello(){
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		List<HouseEntity> houseList = houseService.listHouse(1, 10);
		model.addObject("uList", houseList);
		model.setViewName("test");
		return model;
	}

}
