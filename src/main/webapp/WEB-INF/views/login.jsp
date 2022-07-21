<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
   여기는 login.jsp 입니다. <br>
<!--    
   <c:if test="${not empty pageContext.request.userPrincipal }">
      <p>로그인 한 상태입니다.</p>
   </c:if>
   
   <c:if test="${empty pageContext.request.userPrincipal }">
      <p>로그아웃 한 상태입니다.</p>
   </c:if>
   
   로그인한 아이디 : ${pageContext.request.userPrincipal.name } <br>
-->   
   
   <s:authorize ifAnyGranted="ROLE_USER">
      <p>로그인한 상태입니다. </p>>
   </s:authorize>   
      
   <s:authorize ifNotGranted="ROLE_USER">
      <p>로그아웃한 상태입니다. </p>>
   </s:authorize>   
   
   로그인한 아이디 : <s:authentication property="name"/> < <br>
   
   <a href='<c:url value="j_spring_security_logout" />'>Logout</a>
</body>
</html>