<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory" %>
<!DOCTYPE HTML>
<html>
<%
Throwable ex = null;
if (exception != null)
	ex = exception;
if (request.getAttribute("javax.servlet.error.exception") != null)
	ex = (Throwable) request.getAttribute("javax.servlet.error.exception");

//记录日志
Logger logger = LoggerFactory.getLogger("500.jsp");
logger.error(ex.getMessage(), ex);

%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Error 500</title>
</head>
<body>
Error 500
<% out.print(ex.getMessage()); %>
</body>
</html>
