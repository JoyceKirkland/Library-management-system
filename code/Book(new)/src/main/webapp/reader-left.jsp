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
                <h1 class="type"><a href="javascript:void(0)">图书查询</a></h1>
                <ul class="RM">
                    <li><a href="${pageContext.request.contextPath}/books/readers_findAllbooks" target="main">图书列表</a></li>
                </ul>
                <h1 class="type"><a href="javascript:void(0)">借书情况查询</a></h1>
                <ul class="RM">
                    <li><a href="${pageContext.request.contextPath}/user/findReadersRent" target="main">借阅书籍列表</a></li>
                </ul>
            </div>
        </td>
    </tr>
</table>
</body>
</html>
