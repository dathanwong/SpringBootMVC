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
            <%@ page isErrorPage="true" %>    
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>     
            <h1>Edit Book</h1>
            <form:form action="/books/${book.id}" method="post" modelAttribute="book">
                <input type="hidden" name="_method" value="put">
                <p>
                    <form:label path="title">Title</form:label>
                    <form:errors class="text-danger" path="title"/>
                    <form:input path="title"/>
                </p>
                <p>
                    <form:label path="description">Description</form:label>
                    <form:errors class="text-danger" path="description"/>
                    <form:textarea path="description"/>
                </p>
                <p>
                    <form:label path="language">Language</form:label>
                    <form:errors class="text-danger" path="language"/>
                    <form:input path="language"/>
                </p>
                <p>
                    <form:label path="numberOfPages">Pages</form:label>
                    <form:errors class="text-danger" path="numberOfPages"/>     
                    <form:input type="number" path="numberOfPages"/>
                </p>    
                <input class="btn btn-primary" type="submit" value="Submit"/>
            </form:form>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>