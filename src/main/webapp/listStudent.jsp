<%--
  Created by IntelliJ IDEA.
  User: 13754
  Date: 2021/4/29
  Time: 20:14
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
    <title>查询学生ajax</title>
    <base href="<%=basePath%>" />
    <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        $(function () {
            loadStudentData();
            $("#btnLoader").click(function () {
                loadStudentData();
            })

            function loadStudentData() {
                $.ajax({
                    url:"student/queryStudent.do",
                    type:"get",
                    dataType:"json",
                    success:function (data) {
                        //清除旧的数据
                        $("#info").html("");
                        //添加新的数据
                        $.each(data,function (i,n) {
                            // alert(n.name+n.id+n.age);
                            $("#info").append("<tr>")
                                .append("<td>"+n.id+"</td>")
                                .append("<td>"+n.name+"</td>")
                                .append("<td>"+n.age+"</td>")
                                .append("</tr>");
                        })
                    }
                })
            }
        })

    </script>
</head>
<body>
    <div align="center">
        <table border="1px" style="text-align: center">
            <thead>
                <tr>
                    <td>学号</td>
                    <td>姓名</td>
                    <td>年龄</td>
                </tr>
            </thead>
            <tbody id="info">

            </tbody>
        <br/>
        <tfoot>
        <tr>
            <td colspan="3">
            <input type="button" id="btnLoader" value="查询学生"/>
            </td>
        </tr>
        </tfoot>
    </table>
    </div>
</body>
</html>
