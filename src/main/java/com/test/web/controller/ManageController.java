package com.test.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.test.web.entity.LabelEntity;
import com.test.web.entity.ManagerEntity;
import com.test.web.entity.NewsEntity;
import com.test.web.entity.ExpertEntity;
import com.test.web.entity.GuideEntity;
import com.test.web.entity.FocusEntity;
import com.test.web.entity.HouseinfoEntity;
import com.test.web.entity.UserEntity;
import com.test.web.service.IAgentService;
import com.test.web.service.ILabelService;
import com.test.web.service.IManagerService;
import com.test.web.service.INewsService;
import com.test.web.service.IExpertService;
import com.test.web.service.IFocusService;
import com.test.web.service.IGuideService;
import com.test.web.service.IHouseinfoService;
import com.test.web.service.IUserService;
import com.test.web.service.impl.AgentService;
import com.test.web.service.impl.ExpertService;
import com.test.web.service.impl.FocusService;
import com.test.web.service.impl.GuideService;
import com.test.web.service.impl.HouseinfoService;
import com.test.web.service.impl.LabelService;
import com.test.web.service.impl.ManagerService;
import com.test.web.service.impl.NewsService;
import com.test.web.service.impl.UserService;

@Controller
@RequestMapping("manage")
public class ManageController {
	
	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView();
		model.setViewName("manage_system/login");
		return model;
	}

	@RequestMapping(value="login",method=RequestMethod.POST)
	public ModelAndView login(ManagerEntity managerEntity, HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		httpSession.setAttribute("loginFail", null);
		IManagerService managerService = new ManagerService();
		ManagerEntity manager = managerService.login(managerEntity);
		if(manager == null){
			model.setViewName("manage_system/login");
			httpSession.setAttribute("loginFail", true);
			httpSession.setAttribute("managerSession", null);
		}
		else if (!managerEntity.getPassword().equals(manager.getPassword())){
			model.setViewName("manage_system/login");
			httpSession.setAttribute("loginFail", true);
			httpSession.setAttribute("managerSession", null);
		}	
		else if(manager.getState() != 1){
			model.setViewName("manage_system/login");
			httpSession.setAttribute("loginFail", false);
			httpSession.setAttribute("managerSession", null);
		}
		else{
			model.setViewName("manage_system/admin_main");
			httpSession.setAttribute("managerSession", manager);
		}
		return model;
	}
	
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession httpSession) {
		ModelAndView model = new ModelAndView();
		httpSession.setAttribute("managerSession", null);
		model.setViewName("manage_system/login");
		return model;
	}
	
	@RequestMapping(value="add_manager",method=RequestMethod.POST)
	public @ResponseBody Result addManager(ManagerEntity managerEntity,HttpSession httpSesion){
		Result result = new Result();
		IManagerService managerService = new ManagerService();
		if(managerService.login(managerEntity) != null)
			return new Result(500);
		managerEntity.setState(1);
		managerEntity.setLevel(managerEntity.getLevel() > 1 ? 2 : 1 );
		if(managerService.login(managerEntity) != null){
			return new Result(500);
		}
		else if(managerService.addManager(managerEntity))
			result.setCode(200);
		else result.setCode(500);	
		return result;
	}

	@RequestMapping(value="modify_manager",method=RequestMethod.POST)
	public @ResponseBody Result modifyManager(ManagerEntity managerEntity, HttpSession httpSession) {
		Result result = new Result();
		IManagerService managerService = new ManagerService();
		boolean ok = managerService.modifyManager(managerEntity);
		if(ok) result.setCode(200);
		else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="modify_password", method=RequestMethod.POST) 
	public @ResponseBody Result modifyPassword(@RequestParam("oldPassword") String oldPassword, 
			@RequestParam("newPassword") String newPassword, HttpSession httpSession) {
		Result result = new Result();
		ManagerEntity managerSession = (ManagerEntity) httpSession.getAttribute("managerSession");
		if (managerSession.getPassword().equals(oldPassword)) {
			managerSession.setPassword(newPassword);
			IManagerService managerService = new ManagerService();
			if (managerService.modifyManager(managerSession)) {
				httpSession.setAttribute("managerSession", managerSession);
				result.setCode(200);
			} else {
				result.setCode(500);
			}
		} else {
			result.setCode(500);
		}
		return result;
	}
	
	@RequestMapping(value="modify_agent",method=RequestMethod.POST)
	public @ResponseBody Result modifyAgent(AgentEntity agentEntity, HttpSession httpSession) {
		Result result = new Result();
		IAgentService agentService = new AgentService();
		boolean ok = agentService.modifyAgent(agentEntity);
		if (ok)
			result.setCode(200);
	    else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="modify_user",method=RequestMethod.POST)
	public @ResponseBody Result modifyUser(UserEntity userEntity, HttpSession httpSession) {
		Result result = new Result();
		System.out.println("haha" + userEntity);
		IUserService userService = new UserService();
		boolean ok = userService.modify(userEntity);
		if (ok)
			result.setCode(200);
	    else result.setCode(500);
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

	@RequestMapping(value="enable_agent",method=RequestMethod.POST)
	public @ResponseBody Result enableAgent(int agentId,HttpSession httpSession){
		Result result = new Result();
		IAgentService agentService = new AgentService();
		if(agentService.enableAgent(agentId))
			result.setCode(200);
		else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="disable_agent",method=RequestMethod.POST)
	public @ResponseBody Result disableAgent(int agentId,HttpSession httpSession){
		Result result = new Result();
		IAgentService agentService = new AgentService();
		if(agentService.disableAgent(agentId))
			result.setCode(200);
		else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="add_agent",method=RequestMethod.POST)
	public @ResponseBody Result addAgent(AgentEntity agentEntity,HttpSession httpSesion){
		Result result = new Result();
		IAgentService agentService = new AgentService();
		if(agentService.getAgentByAccount(agentEntity.getAccount()) != null){
			return new Result(500);
		}
		agentEntity.setState(1);
		if(agentService.addAgent(agentEntity))
			result.setCode(200);
		else result.setCode(500);	
		return result;
	}
	
	@RequestMapping(value="enable_user",method=RequestMethod.POST)
	public @ResponseBody Result enableUser(int userId,HttpSession httpSession){
		Result result = new Result();
		System.out.println(userId);
		IUserService userService = new UserService();
		if(userService.enableUser(userId))
			result.setCode(200);
		else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="disable_user",method=RequestMethod.POST)
	public @ResponseBody Result disableUser(int userId,HttpSession httpSession){
		Result result = new Result();
		System.out.println(userId);
		IUserService userService = new UserService();
		if(userService.disableUser(userId))
			result.setCode(200);
		else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="enable_manager",method=RequestMethod.POST)
	public @ResponseBody Result enableManager(ManagerEntity managerEntity,HttpSession httpSession){
		Result result = new Result();
		IManagerService managerService = new ManagerService();
		if(managerService.enableManager(managerEntity.getManagerId())){
			result.setCode(200);
			managerEntity.setState(1);
		}
		else result.setCode(500);
		result.setManagerEntity(managerEntity);
		return result;
	}
	
	@RequestMapping(value="disable_manager",method=RequestMethod.POST)
	public @ResponseBody Result disableManager(int managerId,HttpSession httpSession){
		Result result = new Result();
		IManagerService managerService = new ManagerService();
		if(managerService.disableManager(managerId))
			result.setCode(200);
		else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="list_manager",method=RequestMethod.POST)
	public @ResponseBody Result listManager(@RequestParam(value="page", required=false) String page, HttpSession httpSession) {
		int pageOffset,pageSize,level;
		Result result = new Result();
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		IManagerService managerService = new ManagerService();
		List<ManagerEntity> managerList = managerService.listManager(pageOffset, 3);
		List<ManagerEntity> allManagerList = managerService.findAll();
		pageSize = (int) Math.ceil((allManagerList.size() - 1)*1.0/3);
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
		pageSize = (int) Math.ceil(allAgentList.size()*1.0/3);
		if(agentList == null || agentList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setAgentList(agentList);
		result.setPageSize(pageSize);
		return result;
	}
	
	@RequestMapping(value="list_label",method=RequestMethod.POST)
	public @ResponseBody Result listLabel(@RequestParam(value="page", required=false) String page,HttpSession httpSession){
		Result result = new Result();
		int pageOffset,pageSize;
		if(page == null){
			pageOffset = 1;
		}else{
			pageOffset = Integer.valueOf(page);
		}
		List<LabelEntity> labelList,allLabelList;
		ILabelService labelService = new LabelService();
		allLabelList = labelService.getAllLabel();
		labelList = labelService.queryByPage(pageOffset, 3);
		pageSize = (int)Math.ceil(allLabelList.size()*1.0/3);
		if(labelList == null || labelList.isEmpty())
			result.setCode(500);
		else result.setCode(500);
		result.setLabelList(labelList);
		result.setPageSize(pageSize);
		return result;
	}
	
	
	@RequestMapping(value="add_label",method=RequestMethod.POST)
	public @ResponseBody Result addLabel(LabelEntity labelEntity,HttpSession httpSession){
		ILabelService labelService = new LabelService();
		if(labelService.addLabel(labelEntity))
			return new Result(200);
		else return new Result(500);
	}
	
	@RequestMapping(value="delete_label",method=RequestMethod.POST)
	public @ResponseBody Result deleteLabel(Integer labelId,HttpSession httpSession){
		if(labelId == null || labelId <= 0)
			return new Result(500);
		ILabelService labelService = new LabelService();
		if(labelService.deleteByLabelId(labelId))
			return new Result(200);
		else return new Result(500);
	}
	
	
	@RequestMapping(value="list_news",method=RequestMethod.POST)
	public @ResponseBody Result listNews(@RequestParam(value="page", required=false) String page, HttpSession httpSession) {
		Result result = new Result();
		int pageOffset,pageSize;
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		
		INewsService newsService = new NewsService();
		List<NewsEntity> newsList = newsService.listNews(pageOffset, 3);
		List<NewsEntity> allNewsList = newsService.findAll();
		pageSize = (int) Math.ceil(allNewsList.size()*1.0/3);
		
		if (newsList == null || newsList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setPageSize(pageSize);
		result.setNewsList(newsList);
		return result;

	}
	@RequestMapping(value="add_news",method=RequestMethod.POST)
	public @ResponseBody Result addNews(NewsEntity newsEntity,HttpSession httpSession){
		INewsService newsService = new NewsService();
		Date date = new Date();
		String dateString = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(date);
		newsEntity.setTimestamp(dateString);
		if(newsService.addNews(newsEntity))
			return new Result(200);
		else return new Result(500);
	}
	
	@RequestMapping(value="enable_news",method=RequestMethod.POST)
	public @ResponseBody Result enableNews(NewsEntity newsEntity,HttpSession httpSession){
		Result result = new Result();
		INewsService newsService = new NewsService();
		if(newsService.enableNews(newsEntity.getNewsId())){
			result.setCode(200);
			newsEntity.setState(1);
		}
		else result.setCode(500);
		result.setNewsEntity(newsEntity);
		return result;
	}
	
	@RequestMapping(value="disable_news",method=RequestMethod.POST)
	public @ResponseBody Result disableNews(int newsId,HttpSession httpSession){
		Result result = new Result();
		INewsService newsService = new NewsService();
		if(newsService.disableNews(newsId))
			result.setCode(200);
		else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="modify_news",method=RequestMethod.POST)
	public @ResponseBody Result modifyNews(NewsEntity newsEntity, HttpSession httpSession) {
		Result result = new Result();
		INewsService newsService = new NewsService();
		boolean ok = newsService.modifyNews(newsEntity);
		if (ok)
			result.setCode(200);
	    else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="list_expert",method=RequestMethod.POST)
	public @ResponseBody Result listExpert(@RequestParam(value="page", required=false) String page, HttpSession httpSession) {
		Result result = new Result();
		int pageOffset,pageSize;
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		
		IExpertService expertService = new ExpertService();
		List<ExpertEntity> expertList = expertService.listExpert(pageOffset, 3);
		List<ExpertEntity> allExpertList = expertService.findAll();
		pageSize = (int) Math.ceil(allExpertList.size()*1.0/3);
		
		if (expertList == null || expertList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setPageSize(pageSize);
		result.setExpertList(expertList);
		return result;

	}
	@RequestMapping(value="add_expert",method=RequestMethod.POST)
	public @ResponseBody Result addExpert(ExpertEntity expertEntity,HttpSession httpSession){
		IExpertService expertService = new ExpertService();
		if(expertService.addExpert(expertEntity))
			return new Result(200);
		else return new Result(500);
	}
	
	@RequestMapping(value="enable_expert",method=RequestMethod.POST)
	public @ResponseBody Result enableExpert(ExpertEntity expertEntity,HttpSession httpSession){
		Result result = new Result();
		IExpertService expertService = new ExpertService();
		if(expertService.enableExpert(expertEntity.getExpertId())){
			result.setCode(200);
			expertEntity.setState(1);
		}
		else result.setCode(500);
		result.setExpertEntity(expertEntity);
		return result;
	}
	
	@RequestMapping(value="disable_expert",method=RequestMethod.POST)
	public @ResponseBody Result disableExpert(int expertId,HttpSession httpSession){
		Result result = new Result();
		IExpertService expertService = new ExpertService();
		if(expertService.disableExpert(expertId))
			result.setCode(200);
		else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="modify_expert",method=RequestMethod.POST)
	public @ResponseBody Result modifyExpert(ExpertEntity expertEntity, HttpSession httpSession) {
		Result result = new Result();
		IExpertService expertService = new ExpertService();
		boolean ok = expertService.modifyExpert(expertEntity);
		if (ok)
			result.setCode(200);
	    else result.setCode(500);
		return result;
	}
	
	@RequestMapping(value="list_focus",method=RequestMethod.POST)
	public @ResponseBody Result listFocus(@RequestParam(value="page", required=false) String page, HttpSession httpSession) {
		Result result = new Result();
		int pageOffset,pageSize;
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		
		IFocusService focusService = new FocusService();
		List<FocusEntity> focusList = focusService.listFocus(pageOffset, 3);
		List<FocusEntity> allFocusList = focusService.findAll();
		pageSize = (int) Math.ceil(allFocusList.size()*1.0/3);
		
		if (focusList == null || focusList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setPageSize(pageSize);
		result.setFocusList(focusList);
		return result;

	}
	@RequestMapping(value="add_focus",method=RequestMethod.POST)
	public @ResponseBody Result addfocus(FocusEntity focusEntity,HttpSession httpSession){
		IFocusService focusService = new FocusService();
		if(focusService.addFocus(focusEntity))
			return new Result(200);
		else return new Result(500);
	}
	
	@RequestMapping(value="delete_focus",method=RequestMethod.POST)
	public @ResponseBody Result deleteFocus(Integer focusId,HttpSession httpSession){
		if(focusId == null || focusId <= 0)
			return new Result(500);
		IFocusService focusService = new FocusService();
		if(focusService.disableFocus(focusId))
			return new Result(200);
		else return new Result(500);
	}
	
	@RequestMapping(value="list_guide",method=RequestMethod.POST)
	public @ResponseBody Result listGuide(@RequestParam(value="page", required=false) String page, HttpSession httpSession) {
		Result result = new Result();
		int pageOffset,pageSize;
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		
		IGuideService guideService = new GuideService();
		List<GuideEntity> guideList = guideService.listGuide(pageOffset, 3);
		List<GuideEntity> allGuideList = guideService.findAll();
		pageSize = (int) Math.ceil(allGuideList.size()*1.0/3);
		
		if (guideList == null || guideList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setPageSize(pageSize);
		result.setGuideList(guideList);
		return result;

	}
	@RequestMapping(value="add_guide",method=RequestMethod.POST)
	public @ResponseBody Result addGuide(GuideEntity guideEntity,HttpSession httpSession){
		IGuideService guideService = new GuideService();
		if(guideService.addGuide(guideEntity))
			return new Result(200);
		else return new Result(500);
	}
	
	@RequestMapping(value="delete_guide",method=RequestMethod.POST)
	public @ResponseBody Result deleteGuide(Integer guideId,HttpSession httpSession){
		if(guideId == null || guideId <= 0)
			return new Result(500);
		IGuideService guideService = new GuideService();
		if(guideService.disableGuide(guideId))
			return new Result(200);
		else return new Result(500);
	}
	
	@RequestMapping(value="list_houseinfo",method=RequestMethod.POST)
	public @ResponseBody Result listHouseinfo(@RequestParam(value="page", required=false) String page, HttpSession httpSession) {
		Result result = new Result();
		int pageOffset,pageSize;
		if (page == null) {
			pageOffset = 1;
		} else {
			pageOffset = Integer.valueOf(page);
		}
		
		IHouseinfoService houseinfoService = new HouseinfoService();
		List<HouseinfoEntity> houseinfoList = houseinfoService.listHouseinfo(pageOffset, 3);
		List<HouseinfoEntity> allHouseinfoList = houseinfoService.findAll();
		pageSize = (int) Math.ceil(allHouseinfoList.size()*1.0/3);
		
		if (houseinfoList == null || houseinfoList.isEmpty())
			result.setCode(500);
		else result.setCode(200);
		result.setPageSize(pageSize);
		result.setHouseinfoList(houseinfoList);
		return result;

	}
	@RequestMapping(value="add_houseinfo",method=RequestMethod.POST)
	public @ResponseBody Result addHouseinfo(HouseinfoEntity houseinfoEntity,HttpSession httpSession){
		IHouseinfoService houseinfoService = new HouseinfoService();
		if(houseinfoService.addHouseinfo(houseinfoEntity))
			return new Result(200);
		else return new Result(500);
	}
	
	@RequestMapping(value="delete_houseinfo",method=RequestMethod.POST)
	public @ResponseBody Result deleteHouseinfo(Integer houseinfoId,HttpSession httpSession){
		if(houseinfoId == null || houseinfoId <= 0)
			return new Result(500);
		IHouseinfoService houseinfoService = new HouseinfoService();
		if(houseinfoService.disableHouseinfo(houseinfoId))
			return new Result(200);
		else return new Result(500);
	}
}
