<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%@include file="head-frag.jsp" %>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <h1 class="text-center">Student Form</h1>
                    <form action="${pageContext.request.contextPath}/student" method="post">
                        <input type="hidden" name="id" value="${student.id}" />
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" name="name" value="${student.name}" />
                        </div>
                        <div class="form-group">
                            <label>Roll</label>
                            <input type="text" class="form-control" name="roll" value="${student.roll}" />
                        </div>
                        <div class="form-group">
                            <label>Subject</label>
                            <input type="text" class="form-control" name="subject" value="${student.subject}" />
                        </div>
                        <div class="form-group">
                            <label>GPA</label>
                            <input type="text" class="form-control" name="gpa" value="${student.gpa}" />
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary btn-sm text-bold" type="submit">Submit</button>
                            <button class="btn btn-danger btn-sm text-bold" type="reset">Reset</button>
                            <a href="${pageContext.request.contextPath}/student">
                                <button class="btn btn-sm text-bold" type="button">List</button>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
