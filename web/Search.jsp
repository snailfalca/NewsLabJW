<%-- 
    Document   : Home
    Created on : Nov 28, 2017, 9:56:06 PM
    Author     : rat
--%>
<%@taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <j:set var="matchedNews" value="${newsBean.getSearchedNews(param.keyword)}"/>
        <section class="section">
            <j:if test="${matchedNews.size()>0}">
                <j:forEach var="news" items="${matchedNews}">
                    <div>                        
                        <p><a class="newsTitle" href="Post.jsp?id=${news.id}">${news.title}</a></p>
                        <div>${news.previewContent}</div>
                    </div>
                </j:forEach>
            </j:if>
            <j:if test="${matchedNews.size()<=0}">
                <p>No article found!</p>
            </j:if>
        </section>
        <jsp:include page="SideBar.jsp"/>
    </body>
</html>
