<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/static/header.jsp"/>

<div class="hero-body">
    <div class="container has-text-centered">
        <p class="title">
            Delete Category
        </p>
    </div>
    <div class="container has-text-centered">
        Do you like do delete '${category.name}'?

        <form method="post" action="/delete-category">
            <input type="hidden" name="id" value="${category.id}"/>
            <div class="control">
                <button type="submit" class="button is-link">Yes</button>
            </div>
        </form>

        <form method="get" action="/list-category">
            <div class="control">
                <button type="submit" class="button is-link">No</button>
            </div>
        </form>
    </div>
</div>


<jsp:include page="/WEB-INF/views/static/footer.jsp"/>

