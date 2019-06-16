<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-03
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>List Product</title>
</head>
<body>
<style>
    table{
        border: 1px solid deepskyblue;
        background-image: linear-gradient(bottom,lightskyblue,lightblue);
        text-align: center;
        align-self: center;

    }
    td{
        background-image: linear-gradient(bottom,lightskyblue,lightblue);
        width: 100px;
        border: 1px solid deepskyblue;
        background-color: lightskyblue;
        text-align: center;
    }
</style>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>price</td>
        <td>edit</td>
        <td>delete</td>
    </tr>
    <s:iterator value="products" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.price}</td>
            <td><a href="editProduct?product.id=${p.id}">edit</a> </td>
            <td><a href="deleteProduct?product.id=${p.id}">delete</a> </td>
        </tr>
    </s:iterator>
</table>
<form action="addProduct" method="post">
    <table>
        <tr>
            <td>name</td>
            <td>price</td>
        </tr>
        <tr>
            <td>
                <input type="text" name="product.name" value=""/>
            </td>
            <td>
                <input type="number" name="product.price" value=""/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="add">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
