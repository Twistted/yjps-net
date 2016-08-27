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
    @RequestMapping(value="/file", method=RequestMethod.POST)     
    public @ResponseBody String uploadFile(@RequestParam("fileName") String fileName,     
            @RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	// 判断图片大小是否大于2M
        if (fileData.getSize() > 2 * 1024 * 1024) {
            return "";
        }
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData);
        System.out.println(filePath);
        filePath = filePath.replace("src\\main\\webapp\\assets\\uploads","/assets/uploads");
        return filePath;     
    } 
    
    @RequestMapping(value="/delete", method=RequestMethod.POST)
    public @ResponseBody String deleteFile(@RequestParam("fileName") String fileName,     
            @RequestParam("clientFile") MultipartFile fileData, HttpSession session){  
    	// 判断图片大小是否大于2M
        if (fileData.getSize() > 2 * 1024 * 1024) {
            return "";
        }
        // 判断司机是否已存在
        // 在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹
        String filePath = FileUploadUtil.saveFile(fileData);
        System.out.println(filePath);
        return filePath;     
    } 
   
}
