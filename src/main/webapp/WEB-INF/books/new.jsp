<!doctype html>
<html lang="en">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
            <h1>New Book</h1>
            <form:form action="/books" method="post" modelAttribute="book">
                <div class="row">
                    <form:label path="title">Title</form:label>
                    <form:errors path="title"/>
                    <form:input path="title"/>
                </div>
                <div class="row">
                    <form:label path="description">Description</form:label>
                    <form:errors path="description"/>
                    <form:textarea path="description"/>
                </div>
                <div class="row">
                    <form:label path="language">Language</form:label>
                    <form:errors path="language"/>
                    <form:input path="language"/>
                </div>
                <div class="row">
                    <form:label path="numberOfPages">Pages</form:label>
                    <form:errors path="numberOfPages"/>     
                    <form:input type="number" path="numberOfPages"/>
                </div>
                <button class="btn btn-outline-primary">Submit</button>
            </form:form>    
        </div>
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>