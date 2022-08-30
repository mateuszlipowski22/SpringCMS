<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/static/header.jsp"/>

<div class="hero-body">
    <div class="container has-text-centered">
        <p class="title">
            All authors
        </p>
    </div>
    <div class="table-container">
        <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
            <thead>
            <tr>
                <th>Id</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="author" items="${authors}">
                <tr>
                    <td>${author.id}</td>
                    <td>${author.firstName}</td>
                    <td>${author.lastName}</td>
                    <td>
                        <nav class="navbar">
                            <div class="container">
                                <div class="navbar-menu">
                                    <a href="/edit-category?id=${author.id}">
                                        <button type="submit" class="button button is-primary">Edit</button>
                                    </a>
                                    <a href="/delete-category?id=${author.id}">
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
        <form method="get" action="/add-author">
            <button type="submit" class="button is-link">Add new author</button>
        </form>
    </div>
</div>
<jsp:include page="/WEB-INF/views/static/footer.jsp"/>
