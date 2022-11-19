<%@ page language="java" contentType="text/html; ; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="icon"
        href="https://zjs.zmdcdn.me/zmp3-desktop/releases/v1.7.29/static/media/icon_zing_mp3_60.f6b51045.svg" />
    <title>Zingmp3 | Đăng nhập</title>
    <style><%@include file="/WEB-INF/resources/pages/auth_page/styles.css"%></style>
</head>

<body>
    <div class="login-page">
        <form:form class="login-page__form" method="POST" action="${pageContext.request.contextPath}/auth/sign-in" modelAttribute="user">
            <img src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/backgrounds/logo-dark.svg" alt="zingmp3" />
            <c:if test="${errorMsg != null}">
			  <div class="login-page__alert">
			  	<span>${errorMsg}</span>
			  </div>
		  	</c:if>
            <form:input type="text" placeholder="Nhập email" path="email" />
            <form:input type="password" placeholder="Nhập mật khẩu" path="password" />
            <button type="submit">Đăng nhập</button>
        </form:form>
        <div class="login-page__redirect">
            <p>Bạn chưa có tài khoản?</p>
            <a href="${pageContext.request.contextPath}/auth/logup">
                <button>Đăng ký ngay</button>
            </a>
        </div>
    </div>
</body>

</html>