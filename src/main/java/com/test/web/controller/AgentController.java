package com.test.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView index(HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		model.setViewName("agent/login");
		return model;
	}

	@RequestMapping("show_agent")
	public ModelAndView showAgent(@RequestParam(value="page", required=false) Integer page, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		if (page == null || page == 0)
			page = 1;
		List<AgentEntity> agentList, allAgentList;
		IAgentService agentService = new AgentService();
		agentList = agentService.listAgent(page, 3);
		allAgentList = agentService.allAgent();
		if (agentList == null || agentList.isEmpty()) {
			model.setViewName("500");
			return model;
		}
		for (int i = 0; i < agentList.size(); i++) {
			System.out.println(agentList.get(i));
		}
		model.addObject("allAgentSize", allAgentList.size());
		model.addObject("pageSize", (Math.ceil(allAgentList.size() * 1.0 / 3)));
		model.addObject("agentList", agentList);
		model.addObject("currentPage", page);
		model.addObject("listSize", agentList.size());
		model.setViewName("agent/agent_list");
		return model;
	}
	
	@RequestMapping("show_agent_detail")
	public ModelAndView showAgentDetail(@RequestParam("agentId") int agentId, @RequestParam(value="page", required=false) Integer page, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		
		IAgentService agentService = new AgentService();
		AgentEntity agentEntity = agentService.getAgentById(agentId);
		if (agentEntity == null) {
			model.setViewName("500");
			return model;
		} 
		if (page == null || page == 0)
			page = 1;
		
		List<HouseEntity> allHouseList, houseList;
		IHouseService houseService = new HouseService();
		houseList = houseService.getPageByAgentId(page, 15, agentId);
		allHouseList = houseService.getByAgentId(agentId);
		int pageSize = (int)Math.ceil(allHouseList.size()*1.0/15);
		if(houseList == null) {
			model.setViewName("500");
			return model;
		}
		
		System.out.println(agentService);
		model.addObject("agent", agentEntity);
		model.addObject("houseList", houseList);
		model.addObject("pageSize", pageSize);
		model.addObject("currentPage", page);
		
		model.setViewName("agent/agent_detail");
		return model;
	}

	@RequestMapping("insert")
	public @ResponseBody Result insert(HouseEntity houseEntity, HttpSession httpSession) {
		IHouseService houseService = new HouseService();
		System.out.println(houseEntity);
		return new Result(200);
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView login(AgentEntity agentEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		IAgentService agentService = new AgentService();
		AgentEntity agent = agentService.getAgentByAccount(agentEntity.getAccount());
		httpSession.setAttribute("agentLoginFail", null);
		if (agent == null || !agent.getPassword().equals(agentEntity.getPassword())) {
			httpSession.setAttribute("agentSession", null);
			httpSession.setAttribute("agentLoginFail", true);
			model.setViewName("agent/login");
		}
		else if (agent.getState() != 1) {
			httpSession.setAttribute("agentSession", null);
			httpSession.setAttribute("agentLoginFail", false);
			model.setViewName("agent/login");
		}
		else{
			model.addObject("agent", agent);
			model.setViewName("agent/agent_index");
			httpSession.setAttribute("agentSession", agent);
		}
		return model;
	}

	@RequestMapping("logout")
	public ModelAndView logout(HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		model.setViewName("agent/login");
		httpSession.setAttribute("agentSession", null);
		return model;
	}

	/*
	 * @RequestMapping("register") public ModelAndView register(AgentEntity
	 * agentEntity,HttpSession httpSession){ ModelAndView model = new
	 * ModelAndView(); IAgentService agentService = new AgentService();
	 * if(agentService.register(agentEntity)){
	 * model.addObject("agent",agentEntity); model.setViewName("test");
	 * httpSession.setAttribute("agentSession", agentEntity); } else
	 * model.setViewName("agent/login"); return model; }
	 */

	@RequestMapping(value = "delete_house", method = RequestMethod.POST)
	public @ResponseBody Result deleteHose(HouseEntity houseEntity, HttpSession httpSession) {
		IHouseService houseService = new HouseService();
		if (houseService.delete(houseEntity.getHouseId()))
			return new Result(200);
		else
			return new Result(500);
	}

	@RequestMapping(value = "add_house", method = RequestMethod.POST)
	public @ResponseBody Result addHouse(HouseEntity houseEntity, HttpSession httpSession) {
		AgentEntity agent = (AgentEntity) httpSession.getAttribute("agentSession");
		houseEntity.setAgentId(agent.getAgentId());
		System.out.println(houseEntity);
		IHouseService houseService = new HouseService();
		if (houseService.addHouse(houseEntity))
			return new Result(200);
		else
			return new Result(200);
	}

	@RequestMapping("find_house")
	public ModelAndView getHouseList(AgentEntity agentEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		List<HouseEntity> houseList = houseService.getByAgentId(agentEntity.getAgentId());
		System.out.println(houseList.size());
		return model;
	}

	@RequestMapping(value = "modify_house", method = RequestMethod.POST)
	public @ResponseBody Result modifyHouse(HouseEntity houseEntity, HttpSession httpSession) {
		Result result = new Result();
		IHouseService houseService = new HouseService();
		if (houseService.update(houseEntity))
			result.setCode(200);
		else
			result.setCode(500);
		result.setHouseEntity(houseEntity);
		;
		return result;
	}

	@RequestMapping("delete_house")
	public @ResponseBody Result deleteHouse(HouseEntity houseEntity, HttpSession httpSession) {
		Result result = new Result();
		IHouseService houseService = new HouseService();
		if (houseService.delete(houseEntity.getHouseId()))
			result.setCode(200);
		else
			result.setCode(500);
		result.setHouseEntity(houseEntity);
		;
		return result;
	}

	@RequestMapping(value = "modify_password", method = RequestMethod.POST)
	public @ResponseBody Result modifyPassword(@RequestParam("oldPassword") String oldPassword,
			@RequestParam("newPassword") String newPassword, HttpSession httpSession) {
		Result result = new Result();
		AgentEntity agentSession = (AgentEntity) httpSession.getAttribute("agentSession");
		if (agentSession.getPassword().equals(oldPassword)) {
			agentSession.setPassword(newPassword);
			IAgentService agentService = new AgentService();
			if (agentService.modifyAgent(agentSession)) {
				httpSession.setAttribute("agentSession", agentSession);
				result.setCode(200);
			} else {
				result.setCode(500);
			}

		} else {
			result.setCode(500);
		}
		return result;
	}

	@RequestMapping(value = "modify_agent", method = RequestMethod.POST)
	public @ResponseBody Result modifyAgent(AgentEntity agentEntity, HttpSession httpSession) {
		Result result = new Result();
		System.out.println(agentEntity);
		AgentEntity agent = (AgentEntity) httpSession.getAttribute("agentSession");
		agentEntity.setAgentId(agent.getAgentId());
		IAgentService agentService = new AgentService();
		if (agentService.modifyAgent(agentEntity)) {
			httpSession.setAttribute("agentSession", agentEntity);
			result.setCode(200);
			result.setAgentEntity(agentEntity);
		} else
			result.setCode(500);
		return result;
	}

	@RequestMapping(value = "list_agent", method = RequestMethod.POST)
	public @ResponseBody Result listAgent(Integer page, HttpSession httpSession) {
		Result result = new Result();
		if (page == null || page == 0)
			page = 1;
		List<AgentEntity> agentList;
		IAgentService agentService = new AgentService();
		agentList = agentService.listAgent(page, 3);
		if (agentList == null || agentList.isEmpty())
			result.setCode(500);
		else
			result.setCode(200);
		result.setAgentList(agentList);
		for (int i = 0; i < agentList.size(); i++) {
			System.out.println(agentList.get(i));
		}
		return result;
	}

	@RequestMapping(value = "list_house", method = RequestMethod.POST)
	public @ResponseBody Result listHouse(Integer page, HttpSession httpSession) {
		Result result = new Result();
		if (page == null || page == 0)
			page = 1;
		int agentId;
		agentId = ((AgentEntity) httpSession.getAttribute("agentSession")).getAgentId();
		List<HouseEntity> allHouseList, houseList;
		IHouseService houseService = new HouseService();
		houseList = houseService.getPageByAgentId(page, 15, agentId);
		allHouseList = houseService.getByAgentId(agentId);
		int pageSize = (int)Math.ceil(allHouseList.size()*1.0/15);
		if(houseList == null)

			result.setCode(500);
		else
			result.setCode(200);
		result.setHouseList(houseList);
		result.setHouseListSize(houseList.size());
		result.setPageSize(pageSize);
		return result;
	}
}
