package com.test.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView();
		
		return model;
	}

	@RequestMapping("login")
	public @ResponseBody Result login(ManagerEntity managerEntity, HttpSession httpSession) {
		Result result = new Result();
		IManagerService managerService = new ManagerService();

		ManagerEntity manager = managerService.login(managerEntity);
		System.out.println(manager);
		if (manager == null) {
			httpSession.setAttribute("managerSession", null);
			result.setCode(500);
		} else {
			result.setManagerEntity(manager);
			httpSession.setAttribute("managerSession", manager);
			result.setCode(200);
		}
		return result;
	}
	
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		httpSession.setAttribute("managerSession", null);
		model.setViewName("manager/login");
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
	public @ResponseBody Result modifyManager(ManagerEntity managerEntity, HttpSession httpSession) {
		Result result = new Result();
		IManagerService managerService = new ManagerService();
		ManagerEntity manager = (ManagerEntity) httpSession.getAttribute("managerSession");
		managerEntity.setManagerId(managerEntity.getManagerId());
		boolean ok = managerService.modifyManager(managerEntity);
		if (ok) {
			result.setCode(200);
			result.setManagerEntity(manager);
		} else {
			result.setCode(500);
		}
		return result;
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

	@RequestMapping(value="list_manager",method=RequestMethod.POST)
	public @ResponseBody Result listManager(@RequestParam(value="page", required=false) String page, HttpSession httpSession) {
		int pageOffset,pageSize;
		Result result = new Result();
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		IManagerService managerService = new ManagerService();
		List<ManagerEntity> managerList = managerService.listManager(pageOffset, 3);
		List<ManagerEntity> allManagerList = managerService.findAll();
		pageSize = (int) Math.ceil(allManagerList.size()*1.0/3);
		
		if (managerList == null || managerList.isEmpty()) 
			result.setCode(500);
		else result.setCode(200);
		result.setManagerList(managerList);
		result.setPageSize(pageSize);
		return result;
	}

	@RequestMapping(value="list_user",method=RequestMethod.POST)
	public @ResponseBody Result listUser(@RequestParam(value="page", required=false) String page, HttpSession httpSession) {
		Result result = new Result();
		int pageOffset,pageSize;
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		
		IUserService userService = new UserService();
		List<UserEntity> userList = userService.listUser(pageOffset, 3);
		List<UserEntity> allUserList = userService.findAll();
		pageSize = (int) Math.ceil(allUserList.size()*1.0/3);
		
		if (userList == null || userList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setPageSize(pageSize);
		result.setUserList(userList);
		return result;

	}
	
	@RequestMapping(value="list_agent",method=RequestMethod.POST)
	public @ResponseBody Result listAgent(@RequestParam(value="page", required=false) String page,HttpSession httpSession){
		Result result = new Result();
		int pageOffset,pageSize;
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		List<AgentEntity> agentList,allAgentList;
		IAgentService agentService = new AgentService();
		agentList = agentService.listAgent(pageOffset, 3);
		allAgentList = agentService.allAgent();
		System.out.println(allAgentList.size());
		pageSize = (int) Math.ceil(allAgentList.size()*1.0/3);
		if(agentList == null || agentList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setAgentList(agentList);
		result.setPageSize(pageSize);
		return result;
	}

}
