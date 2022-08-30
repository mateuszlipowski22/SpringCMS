<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/static/header.jsp"/>

<div class="hero-body">
    <div class="container has-text-centered">
        <p class="title">
            All articles
        </p>
    </div>
    <div class="table-container">
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
            <c:forEach var="articles" items="${articles}">
                <tr>
                    <td>${articles.id}</td>
                    <td>${articles.title}</td>
                    <td>${articles.createdOn}</td>
                    <td>${articles.content}</td>
                    <td>
                        <nav class="navbar">
                            <div class="container">
                                <div class="navbar-menu">
                                    <a href="/edit-article?id=${articles.id}">
                                        <button type="submit" class="button button is-primary">Edit</button>
                                    </a>
                                    <a href="/delete-article?id=${articles.id}">
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
        <form method="get" action="/add-article">
            <button type="submit" class="button is-link">Add new article</button>
        </form>
    </div
</div>
<jsp:include page="/WEB-INF/views/static/footer.jsp"/>
