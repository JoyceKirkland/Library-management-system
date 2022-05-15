<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html >
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
</head>

<body>
    <table width="100%" height="150" border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td width="200" valign="top">
                <div id="container">
                    <h1 class="type"><a href="javascript:void(0)">借阅者管理</a></h1>
                        <ul class="RM">
                            <li><a href="${pageContext.request.contextPath}/readers_add.jsp" target="main">添加借阅者</a></li>
                            <li><a href="${pageContext.request.contextPath}/readers/findAllreaders" target="main">借阅者列表</a></li>
                        </ul>
                    <h1 class="type"><a href="javascript:void(0)">图书管理</a></h1>
                        <ul class="RM">
                            <li><a href="${pageContext.request.contextPath}/book_add.jsp" target="main">添加图书</a></li>
                            <li><a href="${pageContext.request.contextPath}/books/findAllbooks" target="main">图书列表</a></li>
                        </ul>
                    <h1 class="type"><a href="javascript:void(0)">常用操作</a></h1>
                        <ul class="RM">
                            <li><a href="${pageContext.request.contextPath}/record/findRentRecord" target="main">图书归还</a></li>
                            <li><a href="${pageContext.request.contextPath}/record/findAllrecords" target="main">查看借阅历史信息</a></li>
                        </ul>
                </div>
            </td>
        </tr>
    </table>
</body>
</html>
