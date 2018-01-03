<%-- 
    Document   : SideBar
    Created on : Dec 27, 2017, 3:02:25 PM
    Author     : crustyrat
--%>

<%@taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="General.css">
    </head>
    <body>
        <jsp:useBean id="sideBarNewsBean" scope="request" class="com.bean.NewsBean"/>
        <j:set var="mostRecentNews" value="${sideBarNewsBean.mostRecentNews}"/>
        <j:set var="fiveRecentNews" value="${sideBarNewsBean.allNews}"/>
        <aside id="sideBar">
            <p class="sideBarItemName">Digital news</p>
            <div id="sideBarContent">${mostRecentNews.previewContent}</div>  
            <p class="sideBarItemName">Search</p>  
            <div>
                <form onsubmit="checkKeyword();" method="GET" id="searchForm">
                    <input type="text" id="searchBox" name="keyword"/>
                    <input type="button" id="searchButton" onclick="checkKeyword();" value="Go"/>
                </form>
            </div>
            <p class="sideBarItemName">Last Articles</p> 
            <div id="fiveRecentNews">
                <j:if test="${fiveRecentNews.size() > 0}">
                    <j:forEach var="recentNews" items="${fiveRecentNews}">
                        <p><a class="newsTitle" href="Post.jsp?id=${recentNews.id}">${recentNews.title}</a></p>
                    </j:forEach>
                </j:if>
                <j:if test="${!(fiveRecentNews.size() > 0)}">
                    <p>No article found!</p>
                </j:if>
            </div>
        </aside>
    </body>
    <script>
        function checkKeyword() {
            var keyword = document.getElementById("searchBox");
            var searchForm = document.getElementById("searchForm");

            if (keyword.value.length > 0) {
                searchForm.setAttribute("action","Search.jsp");
                searchForm.submit();
            } else {
                alert("Enter keyword first!");
            }

            return;
        }
    </script>
</html>
