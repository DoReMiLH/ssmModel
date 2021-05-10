<%--
  Created by IntelliJ IDEA.
  User: 13754
  Date: 2021/4/29
  Time: 19:46
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
    <title>注册学生</title>
    <base href="<%=basePath%>" />
</head>
<body>
    <div align="center">
        <form action="student/addStudent.do" method="post">
            <table>
                <tr>
                   <td colspan="2" align="center">
                       <p>学生注册</p>
                   </td>
               </tr>
               <tr>
                   <td>姓名:</td>
                   <td>
                       <input type="text" name="name">
                   </td>
               </tr>
               <tr>
                   <td>年龄:</td>
                   <td>
                       <input type="text" name="age">
                   </td>
               </tr>
               <tr>
                   <td colspan="2" align="center">
                       <input type="submit" value="提交" align="center">
                   </td>
               </tr>
            </table>
        </form>
    </div>
</body>
</html>
