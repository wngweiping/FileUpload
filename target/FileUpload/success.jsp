<%--
  Created by IntelliJ IDEA.
  User: wngweiping
  Date: 2020/7/12
  Time: 12:36 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文件上传</title>
</head>

<body>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

上传成功!<br/>
上传者:<s:property value=" + uploader"/><br/>
文件名:<s:property value="+ uploadFileName"/><br/>
文件类型:<s:property value="+ uploadContentType"/><br/>
文件地址:<p> <%=basePath %><s:property value="'uploadFiles/'
    + uploadFileName"/></p><br/>
</body>
</html>
