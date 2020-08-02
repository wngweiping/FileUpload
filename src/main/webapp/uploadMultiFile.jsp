<%--
  Created by IntelliJ IDEA.
  User: wngweiping
  Date: 2020/7/26
  Time: 5:22 下午
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
<s:form action="multiUpload" method="post" enctype="multipart/form-data">
    <s:file label="select file1" name="uploads" />
    <s:file label="select file2" name="uploads" />
    <s:file label="select file3" name="uploads" />
    <s:submit value="Upload" />
</s:form>
</body>
</html>
