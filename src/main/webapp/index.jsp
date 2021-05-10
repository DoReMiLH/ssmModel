<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 13754
  Date: 2021/4/29
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>功能入口</title>
    <base href="<%=basePath%>" />
</head>
<body>
    <div align="center">
        <p>SSM整合第一个例子</p>
        <img src="images/2.jpg"/>
        <table>
            <tr>
                <td>
                    <a href="addStudent.jsp">学生注册</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="listStudent.jsp">学生浏览</a>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
