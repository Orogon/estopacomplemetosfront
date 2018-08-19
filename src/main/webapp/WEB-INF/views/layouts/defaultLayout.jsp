<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
 
<html>
 
<head>
    
    <title><tiles:getAsString name="title" /></title>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.2/angular.min.js"></script>
<!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.0-beta.2/angular-route.min.js"></script>
    <script src="https://code.angularjs.org/1.4.8/angular-resource.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-filter/0.5.8/angular-filter.min.js"></script>-->

</head>
  
<body>
        <header id="header">
            <tiles:insertAttribute name="header" />
        </header>
     
        <section id="sidemenu">
            <tiles:insertAttribute name="menu" />
        </section>
             
        <section id="site-content">
            <tiles:insertAttribute name="body" />
        </section>
         
        <footer id="footer">
            <tiles:insertAttribute name="footer" />
        </footer>
</body>
</html>