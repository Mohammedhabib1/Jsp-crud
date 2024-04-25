<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%@include file="head-frag.jsp" %>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col text-center">
                    <h1>Student List</h1>
                    <div class="text-right">
                        <a href="${pageContext.request.contextPath}/student/form">
                            <button class="btn btn-primary btn-sm text-bold">+</button>
                        </a>
                    </div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Roll</th>
                                <th scope="col">Subject</th>
                                <th scope="col">GPA</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="student" items="${students}">
                                <tr>
                                    <th>${student.name}</th>
                                    <td>${student.roll}</td>
                                    <td>${student.subject}</td>
                                    <td>${student.gpa}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/student/edit?id=${student.id}">
                                        <button class="btn btn-info btn-xs">Edit</button>
                                        </a>
                                        <a href="${pageContext.request.contextPath}/student/delete?id=${student.id}">
                                        <button class="btn btn-danger btn-xs">Delete</button>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </body>
</html>
