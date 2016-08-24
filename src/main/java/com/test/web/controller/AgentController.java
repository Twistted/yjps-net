package com.test.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.test.web.entity.AgentEntity;
import com.test.web.entity.HouseEntity;
import com.test.web.service.IAgentService;
import com.test.web.service.IHouseService;
import com.test.web.service.impl.AgentService;
import com.test.web.service.impl.HouseService;

@Controller
@RequestMapping("agent")
public class AgentController {
	
	@RequestMapping(value="login")
	public ModelAndView login(AgentEntity agentEntity,HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		IAgentService agentService = new AgentService();
		AgentEntity agent = agentService.getAgentByAccount(agentEntity.getAccount());
		System.out.println(agent);
		model.addObject("agent", agent);
		if(agent.getPassword().equals(agentEntity.getPassword())){
			System.out.println("Yes");
			model.addObject("agent",agent);
			model.setViewName("test");
			httpSession.setAttribute("agentSession", agent);
		}
		else{
			System.out.println("no");
			model.setViewName("agent/login");
		}
		return model;
	}
	
	@RequestMapping("register")
	public ModelAndView register(AgentEntity agentEntity,HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		IAgentService agentService = new AgentService();
		if(agentService.register(agentEntity)){
			model.addObject("agent",agentEntity);
			model.setViewName("test");
			httpSession.setAttribute("agentSession", agentEntity);
		}
		else model.setViewName("agent/login");
		return model;
	}
	
	
	@RequestMapping("insert")
	public ModelAndView addHouse(HouseEntity houseEntity,HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		if(houseService.addHouse(houseEntity)){
			model.setViewName("agent/index");
		}
		else model.setViewName("agent/index");
		return model;
	}
	


}
