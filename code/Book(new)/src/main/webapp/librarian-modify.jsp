<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%request.setCharacterEncoding("UTF-8"); //若要输入中文，必须带有该句，不然会出现乱码 %><!DOCTYPE html>
<html >
<head>
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <!-- 中间部分 -->
    <tr>
        <td valign="top" bgcolor="#F7F8F9">
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <!-- 空白行-->
                <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                <tr>
                    <td colspan="4">
                        <table>

                            <tr>
                                <td valign="bottom"><h3 style="letter-spacing:1px;">管理员管理 > 修改管理员信息 </h3></td>
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
                <!-- 修改 -->
                <tr>
                    <td width="2%">&nbsp;</td>
                    <td width="96%">
                        <table width="100%">
                            <tr>
                                <td colspan="2">
                                    <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
                                        <table width="100%" class="cont">
                                            <tr>
                                                <td width="2%">&nbsp;</td>
                                                <td width="10%">用户编号：</td>
                                                <td width="20%"><input class="text" type="text" name="id" value="${requestScope.change_one_user.id}" readonly/></td>
                                                <td width="2%">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="2%">&nbsp;</td>
                                                <td width="10%">用户名：</td>
                                                <td width="20%"><input class="text" type="text" name="name" value="${requestScope.change_one_user.name}" required/></td>
                                                <td width="2%">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="2%">&nbsp;</td>
                                                <td>密码：</td>
                                                <td>
                                                    <input class="text" type="text" name="pwd" value="${requestScope.change_one_user.pwd}" required />
                                                </td>
                                                <td></td>
                                                <td width="2%">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="2%">&nbsp;</td>
                                                <td>权限：</td>
                                                <td>
                                                    <c:choose>
                                                    <c:when test="${requestScope.change_one_user.state=='系统管理员'}">
                                                        <input  type="radio" name="state" value="系统管理员" checked="true"/>系统管理员&nbsp;&nbsp;
                                                        <input  type="radio" name="state" value="图书管理员" />图书管理员
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input  type="radio" name="state" value="系统管理员" />系统管理员&nbsp;&nbsp;
                                                        <input  type="radio" name="state" value="图书管理员" checked="true"/>图书管理员
                                                    </c:otherwise>
                                                    </c:choose>

                                                </td>
                                                <td></td>
                                                <td width="2%">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td></td>
                                                <td><input class="btn" type="submit" value="提交" /></td>
                                                <td></td>
                                                <td>&nbsp;</td>
                                            </tr>
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