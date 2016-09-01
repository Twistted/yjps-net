<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
    <head>  
        <title>file upload test</title>  
    </head>  
    <body>  
        <form method="post" action="<%=path %>/upload/upload_house_photo" enctype="multipart/form-data">    
            <input id="file_one" type="file" name="houseType" /><br/>  
            <input id="file_two" type="file" name="houseView" /><br/>
            <input type="submit" value="上传文件 "/>  
        </form>  
    </body>  
</html>  