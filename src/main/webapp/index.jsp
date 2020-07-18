<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文件上传</title>
</head>
<body>
<form action="upload" method="post" enctype="multipart/form-data">
    上传者:<input type="text" name="uploader">
    选择文件:<input type="file" name="upload">
    <input type="submit" value="上传">
</form>
</body>
</html>