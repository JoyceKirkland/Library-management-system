<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>图书管理系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/skin.css" />
</head>
<body>
<table width="100%" >
    <!-- 主体部分 -->
    <tr height="532">
    <!-- 主体左部分 -->
        <td id="left_cont" valign="top"  width="100%" height="100%">
            <table  >
                <tr>
                    <td width="20%" rowspan="2">
                        <ul>
                            <li><img src="./Images/book.jpg" />&nbsp;<a href="javascript:void(0)"></a>></li>
                        </ul>
                    </td>
                </tr>
            </table>
        </td>
        <!-- 主体右部分 -->
        <td id="right_cont">
            <table height="100%">
                <tr height="30%"><td colspan="3">&nbsp;</td></tr>
                <tr>
                    <td width="30%" rowspan="5">&nbsp;</td>
                    <td valign="top" id="form">
                            <form id="fmLogin" method="post" action="${pageContext.request.contextPath}/user/login">

                                <tr><td colspan="2"><h4 style="letter-spacing:1px;font-size:16px;">图书管理系统</h4></td></tr>
                                <table valign="top" width="50%">
                                <tr><td>用户名：</td><td><input type="text" name="name" required /></td></tr>
                                <tr><td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td><td><input type="password" name="pwd" required/></td></tr>

                                    <tr class="bt"><td>&nbsp;</td>
                                        <td><input type="submit" formaction="${pageContext.request.contextPath}/user/readerLogin" value="读者登录" style="width: 80px;"/>
                                            <input type="submit" value="管理员登录" style="width: 80px;"/>&nbsp;
                                            <br><input type="reset" value="重填" /></td>
                                    </tr>

                                </table>

                            </form>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>