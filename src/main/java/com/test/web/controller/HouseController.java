package com.test.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.web.entity.AdvertisementEntity;
import com.test.web.entity.AgentEntity;
import com.test.web.entity.HouseEntity;
import com.test.web.entity.InterestEntity;
import com.test.web.entity.UserEntity;
import com.test.web.service.IAdvertisementService;
import com.test.web.service.IAgentService;
import com.test.web.service.IHouseService;
import com.test.web.service.IInterestService;
import com.test.web.service.impl.AdvertisementService;
import com.test.web.service.impl.AgentService;
import com.test.web.service.impl.HouseService;
import com.test.web.service.impl.InterestService;

@Controller
@RequestMapping("house")
public class HouseController {
	
	@RequestMapping(value="house", method=RequestMethod.GET)
	public ModelAndView house(@RequestParam("id") String id, HttpSession httpSession) {
		UserEntity userEntity = (UserEntity) httpSession.getAttribute("userSession");
		if (userEntity != null) {
			// 记录浏览
		}
		
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		HouseEntity houseEntity = houseService.getHouseById(Integer.valueOf(id));
		// System.out.println(houseEntity);
		model.addObject("house", houseEntity);
		
		IAgentService agentService = new AgentService();
		AgentEntity agentEntity = agentService.getAgentById(houseEntity.getAgentId());
		System.out.println(agentService);
		model.addObject("agent", agentEntity);
		
		IAdvertisementService advertisementService = new AdvertisementService();
		List<AdvertisementEntity> advertisementList = advertisementService.getAdvertisementList(4);
		model.addObject("advertisementList", advertisementList);
		
		model.setViewName("house");
		return model;
	}
	
	@RequestMapping(value="interest", method=RequestMethod.GET)
	public ModelAndView interest(@RequestParam("id") String id, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		UserEntity userEntity = (UserEntity) httpSession.getAttribute("userSession");
		if (userEntity == null) {
			model.setViewName("user/login");
			return model;
		} else {
			IInterestService interestService = new InterestService();
			InterestEntity interestEntity = new InterestEntity();
			interestEntity.setHouseId(Integer.valueOf(id));
			interestEntity.setInterestId(userEntity.getUserId());
			boolean ok = interestService.addInterest(interestEntity);
			System.out.println("ok" + ok);
			if (ok) {
				IHouseService houseService = new HouseService();
				HouseEntity houseEntity = houseService.getHouseById(Integer.valueOf(id));
				model.addObject("house", houseEntity);
				
				IAgentService agentService = new AgentService();
				AgentEntity agentEntity = agentService.getAgentById(houseEntity.getAgentId());
				System.out.println(agentService);
				model.addObject("agent", agentEntity);
				
				model.setViewName("house");
			} else {
				System.out.println("Interest Failure");
			}
			return model;
		}
	}
	
	@RequestMapping(value="page/{id}/{size}", method=RequestMethod.GET) 
	public ModelAndView page(@PathVariable String id, @PathVariable String size) {
		System.out.println("id => " + id + " size => " + size);
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		List<HouseEntity> housePage = houseService.listHouse(Integer.valueOf(id), Integer.valueOf(size));
		System.out.println(housePage);
		model.setViewName("test");
		return model;
	}
	
	@RequestMapping("insert")
	public ModelAndView insert() {
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		HouseEntity houseEntity = houseService.getHouseById(12);
		System.out.println(houseEntity);
		model.setViewName("test");
		return model;
	}
	
	@RequestMapping("delete")
	public ModelAndView delete(@RequestParam("id") String id) {
		ModelAndView model = new ModelAndView();
		IHouseService houseService = new HouseService();
		boolean ok = houseService.delete(Integer.valueOf(id));
		System.out.println(ok);
		return model;
	}
	
}
