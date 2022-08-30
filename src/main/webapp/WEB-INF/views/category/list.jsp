<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/static/header.jsp"/>

<div class="hero-body">
    <div class="container has-text-centered">
        <p class="title">
            All categories
        </p>
    </div>
    <div class="table-container">
        <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
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
<jsp:include page="/WEB-INF/views/static/footer.jsp"/>
