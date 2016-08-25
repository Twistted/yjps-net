package com.test.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.test.web.dto.Result;
import com.test.web.entity.AgentEntity;
import com.test.web.entity.HouseEntity;
import com.test.web.service.IAgentService;
import com.test.web.service.IHouseService;
import com.test.web.service.impl.AgentService;
import com.test.web.service.impl.HouseService;

@Controller
@RequestMapping("agent")
public class AgentController {
	
	@RequestMapping("index")
	public ModelAndView index(HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		model.setViewName("agent/login");
		return model; 
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public ModelAndView login(AgentEntity agentEntity,HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		IAgentService agentService = new AgentService();
		AgentEntity agent = agentService.getAgentByAccount(agentEntity.getAccount());
		System.out.println(agent);
		model.addObject("agent", agent);
		if(agent.getPassword().equals(agentEntity.getPassword())){
			model.addObject("agent",agent);
			model.setViewName("agent/agent_index");
			httpSession.setAttribute("agentSession", agent);
		}
		else model.setViewName("agent/login");
		return model;
	}
	
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		model.setViewName("agent/login");
		httpSession.setAttribute("agentSession", null);
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
	
	
	@RequestMapping("add_house")
	public ModelAndView addHouse(HouseEntity houseEntity,HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		if(houseService.addHouse(houseEntity)){
			model.setViewName("agent/index");
		}
		else model.setViewName("agent/index");
		return model;
	}
	
	@RequestMapping("find_house")
	public ModelAndView getHouseList(AgentEntity agentEntity,HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		List<HouseEntity> houseList = houseService.getByAgentId(agentEntity.getAgentId());
		System.out.println(houseList.size());
		return model;
	}
	
	@RequestMapping("modify_agent")
	public ModelAndView modifyAgent(AgentEntity agentEntity,HttpSession httpSession){
		ModelAndView model = new ModelAndView();
		IAgentService agentService = new AgentService();
		if(agentService.modifyAgent(agentEntity)){
			httpSession.setAttribute("agentSession", agentEntity);
			model.setViewName("agent/index");
		}
		else model.setViewName("agent/index");
		return model;
	}
	
	@RequestMapping("list_agent")
	public @ResponseBody Result listAgent(HttpSession httpSession){
		Result result = new Result();
		List<AgentEntity> agentList;
		IAgentService agentService = new AgentService();
		agentList = agentService.allAgent();
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
