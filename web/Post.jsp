<%-- 
    Document   : Home
    Created on : Nov 28, 2017, 9:56:06 PM
    Author     : rat
--%>
<%@taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="General.css">
    </head>
    <body>        
        <jsp:include page="Header.jsp"/>
        <jsp:useBean id="newsBean" scope="request" class="com.bean.NewsBean"/>
        <j:set var="news" value="${newsBean.getNewsById(param.id)}"/>
        <section class="section">
            <p class="Title">${news.title}</p>
            <j:if test="${news.imagePath != null}">                
            <img alt="${news.title}" src="${news.imagePath}">
            </j:if>
            <div class="newsContent">${news.content}</div>
            <div class="newsFooter"><img src="images/comment.gif"> <img src="images/timeicon.gif"> By ${news.writer} | <fmt:formatDate type="both" value="${news.publishedDate}"/></div>
        </section>
        <jsp:include page="SideBar.jsp"/>
    </body>
</html>
