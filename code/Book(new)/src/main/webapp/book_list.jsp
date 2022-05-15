<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html >
<html >
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/skin.css" />
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
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">    图书管理 > 书籍列表 </h3></td>
                                    </tr>
                                    <tr>
<%--                                        <a href="${pageContext.request.contextPath}/index.jsp" target="main" style="letter-spacing:1px;">--%>
<%--                                            点击返回管理界面--%>
<%--                                        </a>--%>
                                    </tr>
                                </table>
                            </td>
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>

                        </tr>
                        <!-- 图书列表开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td width="2%">&nbsp;</td>
                                        <td width="96%">

                                                <form action="${pageContext.request.contextPath}/books/fuzzyQuery" >

                                                    <table width="100%" border="0" class="cont"  >
                                                        <tr>
                                                            <td colspan="8">

                                                                查询图书:&nbsp;&nbsp;<input class="text" type="text" name="find" placeholder="输入书名" value=""/>
                                                                <input type="submit" value="确定" style="width: 80px;"/>
                                                                <form action="${pageContext.request.contextPath}/books/findAllbooks" >
                                                                    <input type="submit" value="查看全部图书" style="width: 100px;"/>
                                                                </form>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                        </tr>
                                                    </table>
                                                </form>

                                        </td>
                                        <td width="2%">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                                <table width="100%"  class="cont tr_color">
                                                    <tr>
                                                        <th>编号</th>
                                                        <th>名称</th>
                                                        <th>类型</th>
                                                        <th>作者</th>
                                                        <th>出版社</th>
                                                        <th>库存</th>
                                                        <th>操作</th>
                                                    </tr>

                                                    <c:forEach items="${requestScope.find_fuzzy_book}"  var="find_fuzzy_book" >
                                                        <tr align="center" class="d">
                                                            <td>${find_fuzzy_book.id}</td>
                                                            <td>${find_fuzzy_book.name}</td>
                                                            <td>${find_fuzzy_book.typeId}</td>
                                                            <td>${find_fuzzy_book.author}</td>
                                                            <td>${find_fuzzy_book.publish}</td>
                                                            <td>${find_fuzzy_book.stock}</td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/books/findById?id=${find_fuzzy_book.id}">查看</a>&nbsp;&nbsp;
                                                                <a href="${pageContext.request.contextPath}/books/changeById?id=${find_fuzzy_book.id}">修改</a>&nbsp;&nbsp;
                                                                <a href="${pageContext.request.contextPath}/books/deleteById?id=${find_fuzzy_book.id}">删除</a>
                                                                <a href="${pageContext.request.contextPath}/books/rent_findById?id=${find_fuzzy_book.id}">借阅</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>

                                                        <c:forEach items="${requestScope.books}"  var="books" >
                                                        <tr align="center" class="d">
                                                            <td>${books.id}</td>
                                                            <td>${books.name}</td>
                                                            <td>${books.typeId}</td>
                                                            <td>${books.author}</td>
                                                            <td>${books.publish}</td>
                                                            <td>${books.stock}</td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/books/findById?id=${books.id}">查看</a>&nbsp;&nbsp;
                                                                <a href="${pageContext.request.contextPath}/books/changeById?id=${books.id}">修改</a>&nbsp;&nbsp;
                                                                <a href="${pageContext.request.contextPath}/books/deleteById?id=${books.id}">删除</a>
                                                                <a href="${pageContext.request.contextPath}/books/rent_findById?id=${books.id}">借阅</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>

                                                </table>
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