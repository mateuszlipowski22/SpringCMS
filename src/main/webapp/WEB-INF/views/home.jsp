<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mateusz
  Date: 29.08.2022
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>

<table class="table is-fullwidth is-bordered">
    <thead>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Creation Date</th>
        <th>Content</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="articles" items="${lastFiveArticles}">
        <tr>
            <td>${articles.id}</td>
            <td>${articles.title}</td>
            <td>${articles.createdOn}</td>
            <td>${articles.content}</td>
            <td>
                <nav class="navbar">
                    <div class="container">
                        <div class="navbar-menu">
                            <a href="/edit-article?id=${articles.id}"><button type="submit" class="button button is-primary">Edit</button></a>
                            <a href="/delete-article?id=${articles.id}"><button type="submit" class="button button is-light">Delete</button></a>
                        </div>
                    </div>
                </nav>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
