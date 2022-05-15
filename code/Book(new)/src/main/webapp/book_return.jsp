<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 中间部分开始 -->
            <tr>
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">常用功能 > 图书归还 </h3></td>
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
                            <td height="20" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <!--空行-->
                        <tr>
                            <td height="20" colspan="3">
                            </td>
                        </tr>
                        
                       <!--详细信息-->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="" method="">
                                                <table width="100%"  class="cont tr_color">
                                                    <tr>
                                                        <th>借阅者编号</th>
                                                        <th>书籍名</th>
                                                        <th>借阅时间</th>
                                                        <th>应还时间</th>
                                                        <th>状态</th>
                                                        <th>操作</th>
                                                    </tr>
                                                    <c:forEach items="${requestScope.rent_records}"  var="rent_records" >

                                                    <tr align="center" class="d">
                                                        <td>${rent_records.reader_idNumber}</td>
                                                        <td>${rent_records.bookName}</td>
                                                        <td>${rent_records.rentDate}</td>
                                                        <td>${rent_records.backDate}</td>
                                                        <td>${rent_records.state}</td>
                                                        <td><a href="${pageContext.request.contextPath}/record/return_Book?reader_idNumber=${rent_records.reader_idNumber}&bookName=${rent_records.bookName}">归还</a>&nbsp;&nbsp;
                                                            <a href="${pageContext.request.contextPath}/record/renew_Book?reader_idNumber=${rent_records.reader_idNumber}&bookName=${rent_records.bookName}">续借</a></td>
                                                    </tr>
                                                    </c:forEach>
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

        </table>
    </body>
</html>