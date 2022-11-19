<%@ page language="java" contentType="text/html; ; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header">
   <div class="header--left">
       <i class="fa fa-arrow-left"></i>
       <i class="fa fa-arrow-right" aria-hidden="true"></i>
       <div class="header--search">
           <i class="fa fa-search" aria-hidden="true"></i>
           <input type="text" spellcheck="false" placeholder="Tìm kiếm bài hát, nghệ sĩ, lời bài hát..." />
       </div>
   </div>
   <div class="header--right">
       <button>
           <i class="fa fa-adjust" aria-hidden="true"></i>
       </button>
       <button>
           <i class="fa fa-diamond" aria-hidden="true"></i>
       </button>
       <button>
           <i class="fa fa-upload" aria-hidden="true"></i></button><button>
           <i class="fa fa-cog" aria-hidden="true"></i>
       </button>
       <div class="header--avatar" id="header--avatar" onclick="toggleMenu()"></div>

       <div class="header--popup" id="header--popup">       	   
       	   <c:choose>
			   <c:when test="${email}">
				   	<div class="header--popup--vip">
		               <a href="${pageContext.request.contextPath}/auth/login" class="header--popup--row">
		                   <i class="fa-solid fa-right-to-bracket"></i>
		                   <p>Đăng nhập</p>
		               </a>
		               <a href="${pageContext.request.contextPath}/auth/logup" class="header--popup--row">
		                   <i class="fa-sharp fa-solid fa-user-plus"></i>
		                   <p>Đăng ký</p>
		               </a>
		           </div>
			   </c:when>
			   <c:otherwise>
			   		<a href="${pageContext.request.contextPath}/profile/" class="header--popup--row">
		               <i class="fa-solid fa-user"></i>
		               <p>Cá nhân</p>
		           </a>
				   <a href="${pageContext.request.contextPath}/auth/logout" class="header--popup--row">
		               <i class="fa-solid fa-right-from-bracket"></i>
		               <p>Đăng xuất</p>
		           </a>
			   </c:otherwise>
			</c:choose>
       </div>
       <div onclick="toggleMenu()" class="header--backdrop" id="header--backdrop"></div>
    </div>
</div>