package com.test.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.test.web.dto.Result;
import com.test.web.entity.AgentEntity;
import com.test.web.entity.InterestEntity;
import com.test.web.entity.UserEntity;
import com.test.web.service.IAgentService;
import com.test.web.service.IInterestService;
import com.test.web.service.IUserService;
import com.test.web.service.impl.AgentService;
import com.test.web.service.impl.InterestService;
import com.test.web.service.impl.UserService;


@Controller
@RequestMapping("user")
public class UserController {

	boolean isLogin(HttpSession httpSession) {
		UserEntity userEntity = (UserEntity) httpSession.getAttribute("userSession");
		System.out.println(userEntity);
		return userEntity != null ? true : false;
	}
	
	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView();
		
		model.addObject("title", "用户登录");
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
			model.setViewName("user/user_index");
		}
		return model;
	}
	
	
	
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		httpSession.setAttribute("userSession", null);
		model.setViewName("user/login");
		return model;
	}
	
	@RequestMapping("modify_password")
	public @ResponseBody Result modifyPassword(@RequestParam("oldPassword") String oldPassword, 
			@RequestParam("newPassword") String newPassword, HttpSession httpSession) {
		Result result = new Result();
		UserEntity userSession = (UserEntity) httpSession.getAttribute("userSession");
		if (userSession.getPassword().equals(oldPassword)) {
			userSession.setPassword(newPassword);
			IUserService userService = new UserService();
			if (userService.modify(userSession)) {
				httpSession.setAttribute("userSession", userSession);
				result.setCode(200);
			} else {
				result.setCode(500);
			}
			
		} else {
			result.setCode(500);
		}
		return result;
	}
	
	@RequestMapping("modify_user")
	public @ResponseBody Result modifyUser(UserEntity userEntity, HttpSession httpSession) {
		Result result = new Result();
		System.out.println(userEntity);
		
		UserEntity user = (UserEntity) httpSession.getAttribute("userSession");
		userEntity.setUserId(user.getUserId());
		IUserService userService = new UserService();
		boolean ok = userService.modify(userEntity);
		if (ok) {
			httpSession.setAttribute("userSession", userEntity);
			result.setCode(200);
		} else {
			result.setCode(500);
		}
		return result;
	}
	
	@RequestMapping("register")
	public ModelAndView register(UserEntity userEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		
		if (userEntity.getAccount() == null || userEntity.getAccount().isEmpty()) {
			model.setViewName("user/register");
			return model;
		}
		
		IUserService userService = new UserService();
		
		boolean ok = userService.register(userEntity);
		System.out.println(ok);
		if (ok) {
			httpSession.setAttribute("userSession", userEntity);
			model.setViewName("user/login");
		} else {
			model.setViewName("user/register");
		}
		return model;
	}
	
	@RequestMapping("list_interest")
	public ModelAndView listInterest(UserEntity userEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		UserEntity user = (UserEntity) httpSession.getAttribute("userSession");
		if (user == null) {
			model.setView(new RedirectView("home"));
		} else {
			IInterestService interestService = new InterestService();
			List<InterestEntity> interestList = interestService.getInterestList(user.getUserId());
			model.addObject("interestList", interestList);
		}
		return model;
	}
	
	@RequestMapping("delete_interest")
	public @ResponseBody Result deleteInterest(HttpSession httpSession, InterestEntity interestEntity) {
		UserEntity user = (UserEntity) httpSession.getAttribute("userSession");
		if (user == null || interestEntity.getInterestId() <= 0) {
			return new Result(500);
		} 
		IInterestService interestService = new InterestService();
		boolean ok = interestService.deleteInterest(interestEntity);
		if (ok) {
			return new Result(200);
		} else {
			return new Result(500);
		}
	}
	
	@RequestMapping("user_protocol")
	public ModelAndView userProtocal() {
		ModelAndView model = new ModelAndView();
		model.setViewName("user/user_protocol");
		return model;
	}
	
}
