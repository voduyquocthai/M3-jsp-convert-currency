<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/7/21
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Converter</title>
</head>
<body>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));

    float vnd = rate * usd;
    request.setAttribute("vnd", vnd);
    request.setAttribute("rate", rate);
    request.setAttribute("usd", usd);
%>
<h1>Rate: <fmt:formatNumber type="number" maxFractionDigits = "3" value="${rate}" /></h1>
<h1>USD: <fmt:formatNumber type="number" maxFractionDigits = "3" value="${usd}" /></h1>

<h1>VND: <fmt:formatNumber type="number" maxFractionDigits = "3" value="${vnd}" /></h1>
<c:set var = "balance" value = "120000.2309" />
</body>
</html>
