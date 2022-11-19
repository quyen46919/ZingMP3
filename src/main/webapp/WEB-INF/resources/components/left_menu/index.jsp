<%@ page language="java" contentType="text/html; ; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="left-menu">
  <a href="${pageContext.request.contextPath}/" class="left-menu__box--logo"></a>
  <a href="${pageContext.request.contextPath}/profile/" tooltip="Cá nhân">
    <i class="fa-solid fa-list-ol"></i>
    <span>Cá nhân</span>
  </a>
  <c:if test="${role == '1'}">
	  <a href="${pageContext.request.contextPath}/admin/" tooltip="Cá nhân">
	    <i class="fa-sharp fa-solid fa-unlock"></i>
	    <span>Quản trị viên</span>
	  </a>
  </c:if>
  <a href="#" tooltip="Khám phá">
    <i class="fa-solid fa-music"></i>
    <span>Khám phá</span>
  </a>
  <a href="#" tooltip="#zingchart">
    <i class="fa-solid fa-chart-line"></i>
    <span>#zingchart</span>
  </a>
  <a href="#" tooltip="Theo dõi">
    <i class="fa-solid fa-folder-plus"></i>
    <span>Theo dõi</span>
  </a>
  <div class="left-menu__box--divider"></div>
  <a href="#" tooltip="Nhạc mới">
    <i class="fa-solid fa-music"></i>
    <span>Nhạc mới</span>
  </a>
  <a href="#" tooltip="Thể loại">
    <i class="fa-solid fa-table-list"></i>
    <span>Thể loại</span>
  </a>
  <a href="#" tooltip="Top 100">
    <i class="fa-solid fa-ranking-star"></i>
    <span>Top 100</span>
  </a>
  <a href="#" tooltip="MV">
    <i class="fa-solid fa-play"></i>
    <span>MV</span>
  </a>
  <div class="left-menu__box--vip">
    <div>Nghe nhạc không quảng cáo cùng kho nhạc VIP</div>
    <button>NÂNG CẤP VIP</button>
  </div>
</div>