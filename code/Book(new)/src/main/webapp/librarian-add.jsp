<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html >
<head>
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <!-- 中间部分开始 -->
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
                                <td valign="bottom"><h3 style="letter-spacing:1px;">管理员管理 > 添加管理员 </h3></td>
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
                <!-- 添加栏目开始 -->
                <tr>
                    <td width="2%">&nbsp;</td>
                    <td width="96%">
                        <table width="100%">
                            <tr>
                                <td colspan="2">
                                    <form action="${pageContext.request.contextPath}/user/addUser" method="post">
                                        <table width="100%" class="cont">
                                            <tr>
                                                <td width="2%">&nbsp;</td>
                                                <td width="10%">用户名：</td>
                                                <td width="20%"><input class="text" type="text" name="name" required/></td>
                                                <td></td>
                                                <td width="2%">&nbsp;</td>
                                            </tr>

                                            <tr>
                                                <td width="2%">&nbsp;</td>
                                                <td>密码：</td>
                                                <td><input class="text" type="text" name="pwd"  required  /></td>
                                                <td></td>
                                                <td width="2%">&nbsp;</td>
                                            </tr>


                                            <tr>
                                                <td width="2%">&nbsp;</td>
                                                <td>权限：</td>
                                                <td>
                                                    <input  type="radio" name="state" value="系统管理员" checked/>系统管理员&nbsp;&nbsp;
                                                    <input  type="radio" name="state" value="图书管理员" checked/>图书管理员
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
        </td>
    </tr>
</table>
</body>
</html>