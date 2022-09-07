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
        <form:form modelAttribute="article" method="post" action="/add-article">
            <div class="field">
                <label class="label">Name</label>
                <div class="input">
                    <form:input path="title" cssClass="input"></form:input>
                </div>
                <div>
                    <form:errors path="title" cssClass="error" />
                </div>
            </div>
            <div class="field">
                <label class="label">Content</label>
                <div class="input">
                    <form:input path="content" cssClass="input"></form:input>
                </div>
                <div>
                    <form:errors path="content" cssClass="error" />
                </div>
            </div>
            <div class="field">
                <label class="label">Author</label>
                <div class="input">
                    <form:select path="author" items="${authors}" itemLabel="lastName" itemValue="id"/>
                </div>

            </div>

            <div class="field">
                <label class="label">Categories</label>
                <div class="input">
                    <form:select path="categories" items="${categories}" itemLabel="name" itemValue="id" multiple="true"></form:select>
                </div>
                <div>
                    <form:errors path="categories" cssClass="error" />
                </div>
            </div>
            <form:hidden path="id"></form:hidden>

            <div class="control">
                <button type="submit" class="button is-link">Edit</button>
            </div>
        </form:form>
    </div>
</div>
<jsp:include page="/WEB-INF/views/static/footer.jsp"/>
