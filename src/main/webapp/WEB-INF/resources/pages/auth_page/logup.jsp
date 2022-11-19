<%@ page language="java" contentType="text/html; ; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon"
        href="https://zjs.zmdcdn.me/zmp3-desktop/releases/v1.7.29/static/media/icon_zing_mp3_60.f6b51045.svg" />
    <title>Zingmp3 | Đăng ký</title>
    <style><%@include file="/WEB-INF/resources/pages/auth_page/styles.css"%></style>
</head>

<body>
    <div class="login-page">
        <form:form class="login-page__form" action="${pageContext.request.contextPath}/auth/sign-up" modelAttribute="user" method="POST">
            <img src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/backgrounds/logo-dark.svg" alt="" />
            <c:if test="${errorMsg != null}">
			  <div class="login-page__alert">
			  	<span>${errorMsg}</span>
			  </div>
		  	</c:if>
            <form:input type="email" placeholder="Nhập email" path="email"/>
            <form:input type="password" placeholder="Nhập mật khẩu" path="password"/>
            <button type="submit">Đăng ký</button>
        </form:form>
        <div class="login-page__redirect">
            <p>Bạn đã có tài khoản?</p>
            <a href="${pageContext.request.contextPath}/auth/login">
                <button>Đăng nhập ngay</button>
            </a>
        </div>
    </div>
</body>

</html>