<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html >
<head>
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">常用功能 > 图书借阅 </h3></td>
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
                        <!-- 会员信息开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                      
                        <!--空行-->
                        <tr>
                            <td height="40" colspan="3">
                            </td>
                        </tr>
                        
                        <!--查询借阅者-->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">

                                <fieldset>
                                    <form action="${pageContext.request.contextPath}/books/rent_Book" >

                                    <legend>查询借阅者</legend>
                                    <table width="100%" border="1" class="cont"  >
                                        <tr>
                                            <td colspan="8">
                                               
                                                请输入:&nbsp;&nbsp;<input class="text" type="text" name="idNumber_find" placeholder="输入借阅者名/借阅者编号" value=""/>

                                                请输入:&nbsp;&nbsp;<input class="text" type="text" name="id" placeholder="输入被借图书编号" value=""/>

                                                <input type="submit" value="确定" style="width: 80px;"/>
                                            </td>
                                         
                                        </tr>

                                       <tr>
                                       </tr>
                                    </table>
                                    </form>
                                </fieldset>

                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <tr><td height="20" colspan="3"></td></tr>
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="" method="post">
                                                <table width="100%"  class="cont tr_color">
                                                    <tr>
                                                        <th>编号</th>
                                                        <th>名称</th>
                                                        <th>类型</th>
                                                        <th>作者</th>
                                                        <th>出版社</th>
                                                        <th>库存</th>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                            <td>${requestScope.rent_one_book.id}</td>
                                                            <td>${requestScope.rent_one_book.name}</td>
                                                            <td>${requestScope.rent_one_book.typeId}</td>
                                                            <td>${requestScope.rent_one_book.author}</td>
                                                            <td>${requestScope.rent_one_book.publish}</td>
                                                            <td>${requestScope.rent_one_book.stock}</td>
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