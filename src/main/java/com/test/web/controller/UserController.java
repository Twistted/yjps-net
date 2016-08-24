package com.test.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.test.web.entity.UserEntity;
import com.test.web.service.IUserService;
import com.test.web.service.impl.UserService;


@Controller
@RequestMapping("user")
public class UserController {

	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView();
		model.setViewName("user/login");
		return model;
	}
	
	@RequestMapping("login")
	public ModelAndView login(UserEntity userEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		
		IUserService userService = new UserService();
		
		UserEntity user = userService.login(userEntity);
		System.out.println(user);
		if (user == null) {
			httpSession.setAttribute("userSession", null);
			model.setViewName("user/login");
		} else {
			model.addObject("user", user);
			httpSession.setAttribute("userSession", user);
			model.setViewName("test");
		}
		return model;
	}
	
	@RequestMapping("register")
	public ModelAndView register(UserEntity userEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		
		IUserService userService = new UserService();
		
		boolean ok = userService.register(userEntity);
		System.out.println(ok);
		if (ok) {
			httpSession.setAttribute("user", userEntity);
			model.setViewName("user/login");
		} else {
			model.setViewName("user/register");
		}
		return model;
	}
	
}
