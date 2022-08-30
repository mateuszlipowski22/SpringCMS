<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CMS</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
</head>
<body>
<section class="hero is-info">
    <!-- Hero head: will stick at the top -->
    <div class="hero-head">
        <nav class="navbar">
            <div class="container">
                <div class="navbar-brand">
                    <a class="navbar-item">
                        CMS
                    </a>
                </div>
                <div id="navbarMenuHeroA" class="navbar-menu">
                    <div class="navbar-end">
                        <a href="/list-article" class="navbar-item">
                            Articles
                        </a>
                        <a href="/list-category" class="navbar-item">
                            Categories
                        </a>
                        <a href="/list-author" class="navbar-item">
                            Authors
                        </a>
                        <a href="/" class="navbar-item">
                            Home Page
                        </a>
                    </div>
                </div>
            </div>
        </nav>
    </div>