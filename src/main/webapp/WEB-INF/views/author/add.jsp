<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/views/static/header.jsp"/>

<div class="hero-body">
    <div class="container has-text-centered">
        <p class="title">
            Add New author
        </p>
    </div>
    <div class="table-container">
        <form:form modelAttribute="author" method="post" action="/add-author">
            <div class="field">
                <label class="label">First name</label>
                <div class="input">
                    <form:input path="firstName" cssClass="input"></form:input>
                </div>
            </div>
            <div class="field">
                <label class="label">Last Name</label>
                <div class="input">
                    <form:input path="lastName" cssClass="input"></form:input>
                </div>
            </div>
            <div class="control">
                <button type="submit" class="button is-link">Add</button>
            </div>
        </form:form>
    </div>
</div>
<jsp:include page="/WEB-INF/views/static/footer.jsp"/>
