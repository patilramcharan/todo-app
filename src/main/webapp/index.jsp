<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
</head>
<body>
    <h1>Todo List</h1>
    <form method="post" action="${pageContext.request.contextPath}/todos">
        <input type="text" name="item" placeholder="Enter item">
        <input type="submit" value="Add">
    </form>
    <h2>Items:</h2>
    <ul>
        <% for (String item : (List<String>) request.getAttribute("todoList")) { %>
            <li><%= item %></li>
        <% } %>
    </ul>
</body>
</html>
