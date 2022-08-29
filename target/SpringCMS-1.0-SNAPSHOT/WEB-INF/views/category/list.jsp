<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mateusz
  Date: 29.08.2022
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="hero-body">
    <div class="container has-text-centered">
        <p class="title">
            All categories
        </p>
    </div>
    <div class="table-container">
        <table class="table is-fullwidth is-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>Description</th>
                <th>Name</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="category" items="${categories}">
                <tr>
                    <td>${category.id}</td>
                    <td>${category.description}</td>
                    <td>${category.name}</td>
                    <td>
                        <nav class="navbar">
                            <div class="container">
                                <div class="navbar-menu">
                                    <a href="/edit-category?id=${category.id}">
                                        <button type="submit" class="button button is-primary">Edit</button>
                                    </a>
                                    <a href="/delete-category?id=${category.id}">
                                        <button type="submit" class="button button is-light">Delete</button>
                                    </a>
                                </div>
                            </div>
                        </nav>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="container has-text-centered">
        <form method="get" action="/add-category">
            <button type="submit" class="button is-link">Add new category</button>
        </form>
    </div>
</div>
</body>
</html>
