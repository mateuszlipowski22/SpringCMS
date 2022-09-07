<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/views/static/header.jsp"/>

<div class="hero-body">
    <div class="container has-text-centered">
        <p class="title">
            Edit existing author
        </p>
    </div>
    <div class="table-container">
        <form:form modelAttribute="author" method="post" action="/edit-author">
            <div class="field">
                <label class="label">First name</label>
                <div class="input">
                    <form:input path="firstName" cssClass="input"></form:input>
                </div>
                <div>
                    <form:errors path="firstName" cssClass="error" />
                </div>
            </div>
            <div class="field">
                <label class="label">Last Name</label>
                <div class="input">
                    <form:hidden path="id"></form:hidden>
                    <form:input path="lastName" cssClass="input"></form:input>
                </div>
                <div>
                    <form:errors path="lastName" cssClass="error" />
                </div>
            </div>
            <div class="control">
                <button type="submit" class="button is-link">Edit</button>
            </div>
        </form:form>
    </div>
</div>
<jsp:include page="/WEB-INF/views/static/footer.jsp"/>
