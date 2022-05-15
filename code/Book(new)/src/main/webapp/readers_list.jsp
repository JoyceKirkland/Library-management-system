<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html >
<head>
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">借阅者管理 > 借阅者列表 </h3></td>
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
                        <!-- 列表开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="" method="">
                                                <table width="100%"  class="cont tr_color">
                                                    <tr>
                                                        <th>序号</th>
                                                        <th>借阅者名称</th>
                                                        <th>联系电话</th>
                                                        <th>添加日期</th>
                                                        <th>编号</th>
                                                        <th>操作</th>
                                                    </tr>
                                                    <c:forEach items="${requestScope.find_all_readers}"  var="find_all_readers" >

                                                        <tr align="center" class="d">
                                                            <td>${find_all_readers.id}</td>
                                                            <td>${find_all_readers.name}</td>
                                                            <td>${find_all_readers.tel}</td>
                                                            <td>${find_all_readers.regdate}</td>
                                                            <td>${find_all_readers.idNumber}</td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/readers/changeReadersById?id=${find_all_readers.id}">修改</a>&nbsp;&nbsp;
                                                                <a href="${pageContext.request.contextPath}/readers/deleteReaderById?id=${find_all_readers.id}">删除</a>
                                                            </td>
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
                </td>
            </tr>
        </table>
    </body>
</html>