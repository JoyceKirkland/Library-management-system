<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html >
<html >
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/skin.css" />
    <style>
        #content{
            width: 500px;
            height: 400px;
            overflow: scroll;
            margin-top: 10px;
            text-indent: 2em;
            line-height: 24px;
            font-size: 14px;
        }
    </style>
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
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">      图书详情</h3></td>
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
                                                <table width="100%"class="cont">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>编号：</td>
                                                        <td width="20%"><input class="text" type="text" name="bookId"  value="${requestScope.one_book.id}" disabled="disabled"/></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">名称：</td>
                                                        <td width="25%"><input class="text" type="text" name="name" value="${requestScope.one_book.name}" disabled="disabled"/></td>
                                                        
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>类型：</td>
                                                        <td width="20%">
                                                            <input class="text" type="text" name="type" value="${requestScope.one_book.typeId}" disabled="disabled"/>
                                                        </td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>库存量：</td>
                                                        <td width="20%"><input class="text" style="width:50px;" type="number" name="stock" value="${requestScope.one_book.stock}"  disabled="disabled" /></td>
    
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>单价：</td>
                                                        <td width="20%"><input class="text" style="width:100px;" type="text" name="price" value="${requestScope.one_book.price}" disabled="disabled" /></td>
                                                        
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>出版社：</td>
                                                        <td width="20%"><input class="text"  type="text" name="publish" value="${requestScope.one_book.publish}" disabled="disabled"/></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>作者:</td>
                                                        <td width="20%"><input class="text"  type="text" name="author" value="${requestScope.one_book.author}" disabled="disabled"/></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>存放地址:</td>
                                                        <td width="20%"><input class="text"  type="text" name="address" value="${requestScope.one_book.address}"/></td>
                                                        <td></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td colspan="3" >简介：
                                                            <div id="content" >
                                                                ${requestScope.one_book.desc}
                                                            </div>       
                                                          </td>
                                                        <td></td>
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
            </tr>
        </table>
    </body>
</html>