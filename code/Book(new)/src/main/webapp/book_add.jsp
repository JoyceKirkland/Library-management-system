<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html >
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/skin.css" />
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
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">图书管理 > 添加图书</h3></td>
                                    </tr>
                                    <tr>
<%--                                    <a href="${pageContext.request.contextPath}/index.jsp" target="main" style="letter-spacing:1px;">--%>
<%--                                        点击返回管理界面--%>
<%--                                    </a>--%>
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
                        <!-- 添加产品开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="${pageContext.request.contextPath}/books/addBook" method="post">
                                                <table width="100%"class="cont">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">名称：</td>
                                                        <td width="25%"><input class="text" type="text" name="name" value="" required/></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>类型：</td>
                                                        <td width="20%">
                                                            <select id="book_type"  name="typeId">
                                                                <option value="0">---请选择---</option>
                                                                <option value="童书">童书</option>
                                                                <option value="小说">小说</option>
                                                                <option value="科技">科技</option>
                                                                <option value="社科">社科</option>
                                                                <option value="文艺">文艺</option>
                                                                <option value="漫画">漫画</option>
                                                                <option value="人文社科">人文社科</option>
                                                                <option value="经管">经管</option>
                                                                <option value="杂志">杂志</option>
                                                              
                                                            </select>
                                                        </td>
                                                       
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>库存量：</td>
                                                        <td width="20%"><input class="text" style="width:50px;" type="number" name="stock" value="100"  required/></td>
                                                        
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>单价：</td>
                                                        <td width="20%"><input class="text" style="width:100px;" type="text" name="price" required /></td>
                                                        
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>出版社：</td>
                                                        <td width="20%"><input class="text"  type="text" name="publish" required/></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>作者:</td>
                                                        <td width="20%"><input class="text"  type="text" name="author" required/></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>存放地址:</td>
                                                        <td width="20%"><input class="text"  type="text" name="address"/></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>简介：</td>
                                                        <td colspan="2"><textarea cols="150" rows="20" name="desc"></textarea></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td></td>
                                                        <td colspan="3"><input class="btn" type="submit" value="提交" /></td>
                                 
                                                    </tr>
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 添加产品结束 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </body>
</html>