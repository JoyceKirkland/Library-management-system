<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
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
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">借阅者管理 > 修改借阅者信息 </h3></td>
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
                                            <form action="${pageContext.request.contextPath}/readers/updateReader" method="post">
                                                <table width="100%" class="cont">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="10%">用户编号：</td>
                                                        <td width="20%"><input class="text" type="text" name="id" value="${requestScope.change_one_reader.id}" readonly/></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="10%">用户名：</td>
                                                        <td width="20%"><input class="text" type="text" name="name" value="${requestScope.change_one_reader.name}" required/></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>电话号码</td>
                                                        <td>
                                                           <input class="text" type="text" name="tel" value="${requestScope.change_one_reader.tel}" required />
                                                        </td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>编号（身份证号）</td>
                                                        <td>
                                                           <input class="text" type="text" name="idNumber" value="${requestScope.change_one_reader.idNumber}" readonly />
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