<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="article" items="${articles}">
<p class="card-text">${article.articleId}<br>${article.postName}
<br>${article.articleSubject}<br>${article.articleContent}<br>${article.postTime}</p>
</c:forEach>

</body>
</html>