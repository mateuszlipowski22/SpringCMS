<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/views/static/header.jsp"/>

<div class="hero-body">
    <div class="container has-text-centered">
        <p class="title">
            Edit Existing Category
        </p>
    </div>
    <div class="table-container">
        <form:form modelAttribute="category" method="post" action="/edit-category">
            <div class="field">
                <label class="label">Description</label>
                <div class="input">
                    <form:input path="description" cssClass="input"></form:input>
                </div>
            </div>
            <div class="field">
                <label class="label">Name</label>
                <div class="input">
                    <form:hidden path="id"></form:hidden>
                    <form:input path="name" cssClass="input"></form:input>
                </div>
                <div>
                    <form:errors path="name" cssClass="error" />
                </div>
            </div>
            <div class="control">
                <button type="submit" class="button is-link">Edit</button>
            </div>
        </form:form>
    </div>
</div>
<jsp:include page="/WEB-INF/views/static/footer.jsp"/>
