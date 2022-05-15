<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html >
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}./Style/skin.css" />
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <!-- 头部开始 -->
    <tr>
        <td valign="top" bgcolor="#F7F8F9">
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="4">
                        <table>
                            <tr>
                                <td valign="bottom"><h3 style="letter-spacing:1px;">借阅历史记录 </h3></td>
                            </tr>
                            <tr>
                                <%--                                        <a href="${pageContext.request.contextPath}/index.jsp" target="main" style="letter-spacing:1px;">--%>
                                <%--                                            点击返回管理界面--%>
                                <%--                                        </a>--%>
                            </tr>
                        </table>
                    </td>
                </tr>
                <!-- 一条线 -->
                <tr>
                    <td height="40" colspan="4">
                        <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                            <tr><td></td></tr>
                        </table>
                    </td>
                </tr>
                <!-- 产品列表开始 -->
                <tr>
                    <td width="2%">&nbsp;</td>
                    <td width="96%">
                        <table width="100%">
                            <tr>
                                <td colspan="2">
                                    <form action="" method="">
                                        <table width="100%"  class="cont tr_color">
                                            <tr>
                                                <th>书籍名</th>
                                                <th>借阅者编号</th>
                                                <th>借阅时间</th>
                                                <th>应还时间</th>
                                                <th>归还时间</th>
                                                <th>状态</th>

                                            </tr>
                                            <c:forEach items="${requestScope.myself_rents}"  var="myself_rents" >

                                                <tr align="center" class="d">
                                                    <td>${myself_rents.bookName}</td>
                                                    <td>${myself_rents.reader_idNumber}</td>
                                                    <td>${myself_rents.rentDate}</td>
                                                    <td>${myself_rents.backDate}</td>
                                                    <td>${myself_rents.real_back_Date}</td>
                                                    <td>${myself_rents.state}</td>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="2%">&nbsp;</td>
                </tr>
            </table>
</table>
</body>
</html>