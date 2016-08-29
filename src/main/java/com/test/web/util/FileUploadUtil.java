package com.test.web.util;

import java.io.File;
import java.io.FileOutputStream;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtil {
	
	// 存储文件的文件目录
	public static final String SAVE_FILE_DIRECTORY = "src/main/webapp/assets/uploads";
	
	/**
     * 功能描述   保存图片
     *
     * @param fileData 文件数据
     * @return 上传文件路径 （如果为null表示操作失败）
     *
     */
	public static String saveFile(MultipartFile fileData) {
		/* 构建文件目录 */
		File fileDirectory = new File(SAVE_FILE_DIRECTORY);
		if (! fileDirectory.exists()) {
			if (! fileDirectory.mkdirs()) {
				return null;
			}
		}
		/* 构建文件名 */
		String newFileName = null;
		if (fileData != null && !fileData.isEmpty()) {  
            // 在这里就可以对file进行处理了，可以根据自己的需求把它存到服务器的某个文件夹
        	// 获取图片的文件名
            String fileName = fileData.getOriginalFilename();
            // 获取图片的扩展名
            String extensionName = fileName.substring(fileName.lastIndexOf(".") + 1);
            // 新的图片文件名 = 获取时间戳 + "." + 图片扩展名
            newFileName = String.valueOf(System.currentTimeMillis()) + "." + extensionName;
        }

		/* 保存文件 */
		String saveFilePath = fileDirectory + "/" + newFileName;
		try {
            FileOutputStream out = new FileOutputStream(saveFilePath);
            // 写入文件
            out.write(fileData.getBytes());
            out.flush();
            out.close();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return saveFilePath;
	}
	
	/** 
     * 功能描述：删除图片
     * 
     * @param filePath 修改之前的文件路径
	 * 
     */
    public static boolean deleteFile(String filePath) {
        /* 构建文件目录 */
        File file = new File(filePath);
        if (file.exists()) {
           //删除文件
           if (file.delete()) {
        	   return true;
           }
        }
        return false;
    }

}
