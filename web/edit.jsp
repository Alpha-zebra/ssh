<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-04
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<style>
    table {
        border: 1px solid deepskyblue;
        background-image: linear-gradient(bottom, lightskyblue, lightblue);
        text-align: center;
        align-self: center;

    }

    td {
        background-image: linear-gradient(bottom, lightskyblue, lightblue);
        width: 100px;
        border: 1px solid deepskyblue;
        background-color: lightskyblue;
        text-align: center;
    }
</style>
<form action="updateProduct" method="post">
    <table>
        <tr>
            <td>name</td>
            <td>price</td>
        </tr>
        <tr>
            <td>
                <input type="text" name="product.name" value="${product.name}" />
            </td>
            <td>
                <input type="number" name="product.price" value="${product.price}" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="hidden" name="product.id" value="${product.id}">
                <input type="submit" value="submit">
            </td>
        </tr>
    </table>
</form>

</body>
</html>

