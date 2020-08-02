<%@ page import="org.apache.struts2.ServletActionContext" %><%--
  Created by IntelliJ IDEA.
  User: wngweiping
  Date: 2020/7/26
  Time: 5:26 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>多文件上传</title>
</head>

<body>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<h1>上传成功!</h1><br/>

文件名:<s:property value="+ uploadsFileName[0]"/><br/>
文件类型:<s:property value="+ uploadsContentType[0]"/><br/>
文件地址:<p> <%=basePath %><s:property value="'uploadMultiFiles/'
        + uploadsFileName[0]"/><a href="download.action?filename=<s:property value="+ uploadsFileName[0]"/>">下载</a> </p><br/>

文件名:<s:property value="+ uploadsFileName[1]"/><br/>
文件类型:<s:property value="+ uploadsContentType[1]"/><br/>
文件地址:<p> <%=basePath %><s:property value="'uploadMultiFiles/'
        + uploadsFileName[1]"/><a href="download.action?filename=<s:property value="+ uploadsFileName[1]"/>">下载</a> </p><br/>

文件名:<s:property value="+ uploadsFileName[2]"/><br/>
文件类型:<s:property value="+ uploadsContentType[2]"/><br/>
文件地址:<p> <%=basePath %><s:property value="'uploadMultiFiles/'
        + uploadsFileName[2]"/><a href="download.action?filename=<s:property value="+ uploadsFileName[2]"/>">下载</a> </p><br/>

</body>
</html>