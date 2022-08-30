<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/static/header.jsp"/>

<div class="hero-body">
    <div class="container has-text-centered">
        <p class="title">
            Delete Author
        </p>
    </div>
    <div class="container has-text-centered">
        Do you like do delete '${author.firstName}' '${author.lastName}'?

        <form method="post" action="/delete-author">
            <input type="hidden" name="id" value="${author.id}"/>
            <div class="control">
                <button type="submit" class="button is-link">Yes</button>
            </div>
        </form>

        <form method="get" action="/list-author">
            <div class="control">
                <button type="submit" class="button is-link">No</button>
            </div>
        </form>
    </div>
</div>


<jsp:include page="/WEB-INF/views/static/footer.jsp"/>

