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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

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
    public String uploadFile(@RequestParam("fileName") String fileName,     
            @RequestParam("clientFile") MultipartFile filedata, HttpSession session){  
    	// 判断图片大小是否大于2M
        if (filedata.getSize() > 2 * 1024 * 1024) {
            return "";
        }
        // 判断司机是否已存在
        
        if (filedata != null && !filedata.isEmpty()) {  
            //在这里就可以对file进行处理了，可以根据自己的需求把它存到数据库或者服务器的某个文件夹  
        	// 获取图片的文件名
            String fileNameTemp = filedata.getOriginalFilename();
            // 获取图片的扩展名
            String extensionName = fileNameTemp
                    .substring(fileNameTemp.lastIndexOf(".") + 1);
            // 新的图片文件名 = 获取时间戳+"."图片扩展名
            String newFileName = String.valueOf(System.currentTimeMillis())
                    + "." + extensionName;

            try {
            	// 插入到数据库中
                // driver.setPicUrl(newFileName);
                saveFile(newFileName, filedata);

            } catch (Exception e) {
                return "";
            }    
        }     
        return "";     
    } 
    
    
    /**
     * 
     * 功能描述   保存图片
     * 
     * @author ：xiaoyu 创建日期 ：2014年2月12日 下午7:37:45
     * 
     * @param newFileName
     *            上传照片文件名
     * @param filedata
     *           文件数据
     * 
     *            修改历史 ：(修改人，修改时间，修改原因/内容)
     */
    private void saveFile(String newFileName, MultipartFile filedata) {
        // TODO Auto-generated method stub
        // 根据配置文件获取服务器图片存放路径
        String picDir = "";
//        try {
//        //这里封装了读取配置文件的方法 配置文件中有图片的存放地址和获取地址
//            Properties properties = PropertiesUtil
//                    .getProperties("configure/driverpicurl.properties");
//            picDir = properties.getProperty("savePicUrl");
//        } catch (IOException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
        String saveFilePath = picDir;

        /* 构建文件目录 */
        File fileDir = new File(saveFilePath);
        if (!fileDir.exists()) {
            fileDir.mkdirs();
        }

        try {
            FileOutputStream out = new FileOutputStream(saveFilePath + "\\"
                    + newFileName);
            // 写入文件
            out.write(filedata.getBytes());
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    
    /**
     * 
     * 功能描述：删除图片
     * 
     * @author ： xiaoyu    创建日期 ：2014年2月12日 下午7:36:55
     * 
     * @param oldPicName
     *           修改之前的文件名
     * 
     *         修改历史 ：(修改人，修改时间，修改原因/内容)
     */
    private void deleteFile(String oldPicName) {
        // TODO Auto-generated method stub
        String picDir = "";
//        try {
//            Properties properties = PropertiesUtil.getProperties("configure/driverpicurl.properties");
//            picDir = properties.getProperty("savePicUrl");
//        } catch (IOException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
        /* 构建文件目录 */
        File fileDir = new File(picDir+"/"+oldPicName);
        if (fileDir.exists()) {
            //把修改之前的图片删除 以免太多没用的图片占据空间
            fileDir.delete();
        }

    }
    
}
