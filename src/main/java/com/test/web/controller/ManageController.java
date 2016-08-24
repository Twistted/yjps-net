package com.test.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.test.web.entity.ManagerEntity;
import com.test.web.service.IManagerService;
import com.test.web.service.impl.ManagerService;

@Controller
@RequestMapping("manage")
public class ManageController {
	
	@RequestMapping("login")
	public ModelAndView login(ManagerEntity managerEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		IManagerService managerService = new ManagerService();
		
		return model;
	}
	
	@RequestMapping("add_manager")
	public ModelAndView addManager(ManagerEntity managerEntity,HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		IManagerService managerService = new ManagerService();
		boolean ok = managerService.addManager(managerEntity);
		
		return model;
	}
	
}
