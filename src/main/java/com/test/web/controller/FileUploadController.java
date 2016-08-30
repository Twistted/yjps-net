package com.test.web.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
import com.test.web.util.FileUploadUtil;

@Controller
@RequestMapping("/upload")
public class FileUploadController {
	
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView();
		model.setViewName("upload");
		return model;
	}
    
    /** 
     * 1、文件上传 
     * @param name 
     * @param file 
     * @param session 
     * @return 
     */  
    /*@RequestMapping(value="/file", method=RequestMethod.POST)     
    public @ResponseBody Result uploadFile(@RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	// 判断图片大小是否大于2M
        if (fileData.getSize() > 2 * 1024 * 1024) {
            System.out.println("fail");
            return new Result(500);
        }
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData,"");
        System.out.println(filePath);
        filePath = filePath.replace("src/main/webapp/assets/uploads","/assets/uploads");
        System.out.println("yes");   
        return new Result(200);
    } */
    
    @RequestMapping(value="/user_file", method=RequestMethod.POST)     
    public @ResponseBody Result uploadUserFile(@RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	// 判断图片大小是否大于2M
        /*if (fileData.getSize() > 2 * 1024 * 1024) {
            System.out.println("fail");
            return new Result(500);
        }*/
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData,"user");
        filePath = filePath.replace("src/main/webapp/assets/uploads","/assets/uploads");
        System.out.println("yes");
        System.out.println(filePath);
        IUserService userService = new UserService();
        UserEntity user = (UserEntity)session.getAttribute("userSession");
        user.setPhotoUrl(filePath);
        if(userService.modify(user)){
        	session.setAttribute("userSession", user);
        	Result result = new Result(200);
        	result.setUserEntity(user);
        	result.setFilePath(filePath);
        	return result;
        }
        else return new Result(500);
    } 
    
    @RequestMapping(value="/agent_file", method=RequestMethod.POST)     
    public @ResponseBody Result uploadAgentFile(@RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	// 判断图片大小是否大于2M
        /*if (fileData.getSize() > 2 * 1024 * 1024) {
            System.out.println("fail");
            return new Result(500);
        }*/
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData,"agent");
        Result result = new Result();
        filePath = filePath.replace("src/main/webapp/assets/uploads","/assets/uploads");
        System.out.println("yes");
        IAgentService agentService = new AgentService();
        AgentEntity agent = (AgentEntity)session.getAttribute("agentSession");
        agent.setPhotoUrl(filePath);
        if(agentService.modifyAgent(agent)){
        	session.setAttribute("agentSession", agent);
        	result.setCode(200);
        	result.setFilePath(filePath);
        	result.setAgentEntity(agent);
        }
        else result.setCode(500);
        return result;
    } 
    
    @RequestMapping(value="/manager_file", method=RequestMethod.POST)     
    public @ResponseBody Result uploadManagerFile(@RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	// 判断图片大小是否大于2M
        /*if (fileData.getSize() > 2 * 1024 * 1024) {
            System.out.println("fail");
            return new Result(500);
        }*/
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData,"manager");
        Result result = new Result();
        filePath = filePath.replace("src/main/webapp/assets/uploads","/assets/uploads");
        System.out.println("yes");
        IManagerService managerService = new ManagerService();
        ManagerEntity manager = (ManagerEntity)session.getAttribute("managerSession");
        manager.setPhotoUrl(filePath);
        if(managerService.modifyManager(manager)){
        	session.setAttribute("managerSession", manager);
        	result.setCode(200);
        	result.setFilePath(filePath);
        	result.setManagerEntity(manager);
        }
        else result.setCode(500);
        return result;
    } 
    
    @RequestMapping(value="/fileOfAgent", method=RequestMethod.POST)     
    public @ResponseBody Result fileOfAgent(@RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	// 判断图片大小是否大于2M
        /*if (fileData.getSize() > 2 * 1024 * 1024) {
            System.out.println("fail");
            return new Result(500);
        }*/
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData,"agent");
        Result result = new Result();
        filePath = filePath.replace("src/main/webapp/assets/uploads","/assets/uploads");
        System.out.println("yes");
        result.setCode(200);
        result.setFilePath(filePath);
        return result;
    } 
    
    @RequestMapping(value="/fileOfUser", method=RequestMethod.POST)     
    public @ResponseBody Result fileOfUser(@RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	// 判断图片大小是否大于2M
        /*if (fileData.getSize() > 2 * 1024 * 1024) {
            System.out.println("fail");
            return new Result(500);
        }*/
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData,"user");
        Result result = new Result();
        filePath = filePath.replace("src/main/webapp/assets/uploads","/assets/uploads");
        System.out.println("yes");
        result.setCode(200);
        result.setFilePath(filePath);
        return result;
    }
    
    @RequestMapping(value="/fileOfManager", method=RequestMethod.POST)     
    public @ResponseBody Result fileOfManager(@RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	// 判断图片大小是否大于2M
        /*if (fileData.getSize() > 2 * 1024 * 1024) {
            System.out.println("fail");
            return new Result(500);
        }*/
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData,"manager");
        Result result = new Result();
        filePath = filePath.replace("src/main/webapp/assets/uploads","/assets/uploads");
        System.out.println("yes");
        result.setCode(200);
        result.setFilePath(filePath);
        return result;
    }
    
    @RequestMapping(value="/delete", method=RequestMethod.POST)
    public ModelAndView deleteFile(@RequestParam("fileName") String fileName,     
            @RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	ModelAndView view = new ModelAndView();
    	// 判断图片大小是否大于2M
        if (fileData.getSize() > 2 * 1024 * 1024) {
            return view;
        }
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData,"");
        System.out.println(filePath);
        view.setViewName("upload");
        return view;     
    } 
   
}
