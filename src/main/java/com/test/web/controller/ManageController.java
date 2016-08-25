package com.test.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.test.web.dto.Result;
import com.test.web.entity.AgentEntity;
import com.test.web.entity.ManagerEntity;
import com.test.web.entity.UserEntity;
import com.test.web.service.IAgentService;
import com.test.web.service.IManagerService;
import com.test.web.service.IUserService;
import com.test.web.service.impl.AgentService;
import com.test.web.service.impl.ManagerService;
import com.test.web.service.impl.UserService;

@Controller
@RequestMapping("manage")
public class ManageController {

	@RequestMapping("login")
	public ModelAndView login(ManagerEntity managerEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		IManagerService managerService = new ManagerService();

		ManagerEntity manager = managerService.login(managerEntity);
		System.out.println(manager);
		if (manager == null) {
			httpSession.setAttribute("managerSession", null);
			model.setViewName("manager/login");
		} else {
			model.addObject("manager", manager);
			httpSession.setAttribute("managerSession", manager);
			model.setViewName("test");
		}
		return model;
	}

	@RequestMapping("add_manager")
	public ModelAndView addManager(ManagerEntity managerEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		ManagerEntity manager = (ManagerEntity) httpSession.getAttribute("managerSession");
		IManagerService managerService = new ManagerService();
		boolean ok = managerService.addManager(managerEntity);

		return model;
	}

	@RequestMapping("modify_manager")
	public ModelAndView modifyManager(ManagerEntity managerEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		IManagerService managerService = new ManagerService();

		return model;
	}
	
	@RequestMapping("findManager")
	public @ResponseBody Result findManager(int id, HttpSession httpSession) {
		Result result = new Result();
		IManagerService managerService = new ManagerService();
		ManagerEntity managerEntity = managerService.getManagerById(id);
		if (managerEntity == null) {
			result.setCode(500);
		} else {
			result.setCode(200);
			result.setManagerEntity(managerEntity);
		}
		return result;
	}
	
	@RequestMapping("findAgent")
	public @ResponseBody Result findAgent(int id, HttpSession httpSession) {
		Result result = new Result();
		IAgentService agentService = new AgentService();
		AgentEntity agentEntity = agentService.getAgentById(id);
		if (agentEntity == null) {
			result.setCode(500);
		} else {
			result.setCode(200);
			result.setAgentEntity(agentEntity);
		}
		return result;
	}
	
	@RequestMapping("findUser")
	public @ResponseBody Result findUser(int id, HttpSession httpSession) {
		Result result = new Result();
		IUserService userService = new UserService();
		UserEntity userEntity = userService.getUserById(id);
		if (userEntity == null) {
			result.setCode(500);
		} else {
			result.setCode(200);
			result.setUserEntity(userEntity);
		}
		return result;
	}

	@RequestMapping("list_manager")
	public @ResponseBody Result listManager(Integer page, HttpSession httpSession) {
		if (page == null || page == 0)
			page = 1;
		IManagerService managerService = new ManagerService();
		List<ManagerEntity> managerList = managerService.listManager(page, 3);
		if (managerList == null || managerList.isEmpty()) {
			return new Result(500, managerList);
		}
		return new Result(200, managerList);
	}

	@RequestMapping("list_user")
	public @ResponseBody Result listUser(Integer page, HttpSession httpSession) {
		Result result = new Result();
		if (page == null || page == 0)
			page = 1;
		IUserService userService = new UserService();
		List<UserEntity> userList = userService.listUser(page, 3);
		if (userList == null || userList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setUserList(userList);
		return result;

	}
	
	@RequestMapping("list_agent")
	public @ResponseBody Result listAgent(Integer page,HttpSession httpSession){
		Result result = new Result();
		if( page == null || page == 0)
			page = 1;
		List<AgentEntity> agentList;
		IAgentService agentService = new AgentService();
		agentList = agentService.listAgent(page, 3);
		if(agentList == null || agentList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setAgentList(agentList);
		for(int i = 0;i < agentList.size();i++){
			System.out.println(agentList.get(i));
		}
		return result;
	}

}
