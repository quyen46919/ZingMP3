<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" />
    <link rel="icon"
        href="https://zjs.zmdcdn.me/zmp3-desktop/releases/v1.7.29/static/media/icon_zing_mp3_60.f6b51045.svg" />
    <title>ZingMP3 | Admin</title>
    <style><%@include file="/WEB-INF/resources/pages/admin_page/styles.css"%></style>
</head>

<body>
    <div class="container">
        <jsp:include page="../../components/left_menu/index.jsp"></jsp:include>
        <!-- end left menu -->
        <div class="admin-page">
            <jsp:include page="../../components/header/index.jsp"></jsp:include>
            <div class="admin-page__favorite-song">
                <h2>QUẢN TRỊ VIÊN</h2>
                <div id="tabs" class="admin-page__favorite-song--header">
                    <ul class="button-tabs">
                        <li>
                            <a href="#tabs-1" class="admin-page__tab">BÀI HÁT</a>
                        </li>
                        <li><a href="#tabs-2">ALBUM</a></li>
                        <li><a href="#tabs-3">CA SĨ</a></li>
                    </ul>
                    <div id="tabs-1">
                        <div class="admin-page__favorite-song--options">
                            <div id="tabs1" class="admin-page__favorite-song--button">
                                <ul class="button-tabsChild">
                                    <li>
                                        <a href="#tabsChild-1">Đã tạo</a>
                                    </li>
                                    <li>
                                        <a href="#tabsChild-2">Tải bài hát mới</a>
                                    </li>
                                </ul>
                                <div id="tabsChild-1">
                                    <div class="admin-page__favorite-song--table">
                                        <div class="admin-page__favorite-song--col-name">
                                            <h4>BÀI HÁT</h4>
                                            <div class="admin-page__favorite-song--col-name-cover">
                                                <h4>ALBUM</h4>
                                                <h4>THỜI GIAN</h4>
                                            </div>
                                        </div>
                                        <c:forEach items="${songList}" var="song">
	                                        <div class="admin-page__favorite-song--item">
	                                            <div class="admin-page__favorite-song--template">
	                                                <div class="admin-page__favorite-song--number">
	                                                    <span><i class="fa-solid fa-music"></i></span>
	                                                    <div class="admin-page__favorite-song--backdrop">
	                                                        <input type="checkbox" name="" value="" />
	                                                    </div>
	                                                </div>
	                                                <div class="admin-page__favorite-song--song">
	                                                    <div class="admin-page__favorite-song--img">
	                                                        <img src="${song.imageUrl}" alt="${song.name}"/>
	                                                        <div class="admin-page__favorite-song--cover">
	                                                            <i class="fa-solid fa-play"></i>
	                                                        </div>
	                                                    </div>
	                                                    <div class="admin-page__favorite-song--title">
	                                                        <span><c:out value="${song.name}"></c:out></span>
	                                                        <span><a href=""><c:out value="${song.singer.name}"></c:out></a></span>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="admin-page__favorite-song--album">
	                                                <span><a href="#"><c:out value="${song.album.name}"></c:out></a></span>
	                                            </div>
	                                            <div class="admin-page__favorite-song--time-out">
	                                                <button>
	                                                    <i class="fa-solid fa-pen"></i>
	                                                </button>
                                                    <a href="${pageContext.request.contextPath}/admin/delete-song?id=${song.id}">
		                                                <button>
		                                                    	<i class="fa-solid fa-trash"></i>
		                                                </button>
                                                    </a>
	                                            </div>
	                                        </div>
										</c:forEach>
                                    </div>
                                </div>
                                <div id="tabsChild-2">
                                    <div>
                                        <form:form
	                                        action="${pageContext.request.contextPath}/admin/create-song" 
	                                        class="admin-page__form-inputs" 
	                                        method="POST"
	                                        enctype="multipart/form-data"
	                                        modelAttribute="song"
	                                    >
	                                    	<div class="admin-page__input-label">
                                            	<label>Tên bài hát: </label>
                                           	 <form:input type="text" placeholder="Tên bài hát" path="name"/>
	                                    	</div>
                                            <div class="admin-page__input-label">
                                            	<label>Khu vực: </label>
	                                            <form:select path="country" id="song_country">
						                            <form:option value="Việt Nam">Việt Nam</form:option>
						                            <form:option value="Nhật Bản">Nhật Bản</form:option>
						                            <form:option value="Hàn Quốc">Hàn Quốc</form:option>
						                            <form:option value="US-UK">US-UK</form:option>
							                    </form:select>
                                            </div>
                                            <div class="admin-page__input-label">
                                            	<label>Dạng nhạc: </label>
	                                            <form:select path="type" id="song_type">
						                            <form:option value="MV">MV</form:option>
						                            <form:option value="Bài hát">Bài hát</form:option>
						                            <form:option value="Trailer">Trailer</form:option>
							                    </form:select>
                                            </div>
                                            <div class="admin-page__input-label">
                                            	<label>Album: </label>
	                                            <select name="albumId" id="song_album">
						                            <option value=""></option>
							                        <c:forEach items="${albumList}" var="album">
							                            <option value="${album.id}">${album.name}</option>
							                        </c:forEach>
							                    </select>
                                            </div>
                                            <div class="admin-page__input-label">
                                            	<label>Ca sĩ: </label>
	                                            <select name="singerId" id="song_singer">
						                            <option value=""></option>
							                        <c:forEach items="${singerList}" var="singer">
							                            <option value="${singer.id}">${singer.name}</option>
							                        </c:forEach>
							                    </select>
                                            </div>
                                            <div class="admin-page__input-label">
                                            	<label>File ảnh: </label>
                                            	<input type="file" name="imageFile" path="imageFile"/>
                                            </div>
                                            <div class="admin-page__input-label">
                                            	<label>File nhạc: </label>
                                            <input type="file" accept="audio/mp3" name="sourceFile" path="sourceFile"/>
                                            </div>
                                            <button type="submit">
                                                Tạo mới
                                            </button>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tabs-2">
                        <div class="admin-page__favorite-song--options">
                            <div id="tabs2" class="admin-page__favorite-song--button">
                                <ul class="button-tabsChild">
                                    <li>
                                        <a href="#tabsChild-1">Đã tạo</a>
                                    </li>
                                    <li>
                                        <a href="#tabsChild-2">Tạo album mới</a>
                                    </li>
                                </ul>
                                <div id="tabsChild-1">
							  		<%= "<div class='admin-page__album-error'><span>" + request.getParameter("albumErrorMsg") + "<span></div>" %>
                                    <div class="admin-page__favorite-song--table">
                                        <div class="admin-page__favorite-song--col-name">
                                            <h4>TÊN ALBUM</h4>
                                            <div class="admin-page__favorite-song--col-name-cover">
                                                <h4>MÔ TẢ</h4>
                                                <h4>THAO TÁC</h4>
                                            </div>
                                        </div>
                                        <c:forEach items="${albumList}" var="album">
	                                        <div class="admin-page__favorite-song--item">
	                                            <div class="admin-page__favorite-song--template">
	                                                <div class="admin-page__favorite-song--number">
	                                                    <span><i class="fa-solid fa-music"></i></span>
	                                                    <div class="admin-page__favorite-song--backdrop">
	                                                        <input type="checkbox" name="" value="" />
	                                                    </div>
	                                                </div>
	                                                <div class="admin-page__favorite-song--song">
	                                                    <div class="admin-page__favorite-song--img">
	                                                    	<img src="${album.imageUrl}" alt="${album.name}"/>
	                                                        <div class="admin-page__favorite-song--cover">
	                                                            <i class="fa-solid fa-play"></i>
	                                                        </div>
	                                                    </div>
	                                                    <div class="admin-page__favorite-song--title">
	                                                        <span> <c:out value="${album.name}" /></span>
	                                                        <span><a href=""><c:out value="${album.name}" /></a></span>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="admin-page__favorite-song--album">
	                                                <span><c:out value="${album.description}" /></span>
	                                            </div>
	                                            <div class="admin-page__favorite-song--time-out">
	                                                <button>
	                                                    <i class="fa-solid fa-pen"></i>
	                                                </button>
                                                    <a href="${pageContext.request.contextPath}/admin/delete-album?id=${album.id}">
		                                                <button>
		                                                    	<i class="fa-solid fa-trash"></i>
		                                                </button>
                                                    </a>
	                                            </div>
	                                        </div>
										</c:forEach>
                                    </div>
                                </div>
                                <div id="tabsChild-2">
                                    <div>
                                        <form:form
	                                        action="${pageContext.request.contextPath}/admin/create-album" 
	                                        class="admin-page__form-inputs" 
	                                        method="POST"
	                                        enctype="multipart/form-data"
	                                        modelAttribute="album"
	                                    >
                                            <form:input type="text" placeholder="Tên album" path="name"/>
                                            <form:input type="text" placeholder="Mô tả của album" path="description"/>
                                            <input type="file" name="imageFile" path="imageFile"/>
                                            <button type="submit">
                                                Tạo mới
                                            </button>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tabs-3">
                        <div class="admin-page__favorite-song--options">
                            <div id="tabs3" class="admin-page__favorite-song--button">
                                <ul class="button-tabsChild">
                                    <li>
                                        <a href="#tabsChild-1">Đã tạo</a>
                                    </li>
                                    <li>
                                        <a href="#tabsChild-2">Tạo ca sĩ mới</a>
                                    </li>
                                </ul>
                                <div id="tabsChild-1">
                                	<%= "<div class='admin-page__singer-error'><span>" + request.getParameter("singerErrorMsg") + "<span></div>" %>
                                    <div class="admin-page__favorite-song--table">
                                        <div class="admin-page__favorite-song--col-name">
                                            <h4>CA SĨ</h4>
                                            <div class="admin-page__favorite-song--col-name-cover">
                                                <h4>TIỂU SỬ</h4>
                                                <h4>THAO TÁC</h4>
                                            </div>
                                        </div>
                                        <c:forEach items="${singerList}" var="singer">
	                                        <div class="admin-page__favorite-song--item">
	                                            <div class="admin-page__favorite-song--template">
	                                                <div class="admin-page__favorite-song--number">
	                                                    <span><i class="fa-solid fa-music"></i></span>
	                                                    <div class="admin-page__favorite-song--backdrop">
	                                                        <input type="checkbox" name="" value="" />
	                                                    </div>
	                                                </div>
	                                                <div class="admin-page__favorite-song--song">
	                                                    <div class="admin-page__favorite-song--img">
	                                                    	<img src="${singer.imageUrl}" alt="${singer.name}"/>
	                                                        <div class="admin-page__favorite-song--cover">
	                                                            <i class="fa-solid fa-play"></i>
	                                                        </div>
	                                                    </div>
	                                                    <div class="admin-page__favorite-song--title">
	                                                        <span> <c:out value="${singer.name}" /></span>
	                                                        <span><a href=""><c:out value="${singer.name}" /></a></span>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            <div class="admin-page__favorite-song--album">
	                                                <span><c:out value="${singer.story}" /></span>
	                                            </div>
	                                            <div class="admin-page__favorite-song--time-out">
	                                                <button class="update-btn" 
		                                                id="${singer.id }" 
		                                                singerName="${singer.name}" 
		                                                singerStory="${singer.story }"
		                                                singerAvatar="${singer.imageUrl }"
	                                                >
	                                                    <i class="fa-solid fa-pen"></i>
	                                                </button>
                                                    <a href="${pageContext.request.contextPath}/admin/delete-singer?id=${singer.id}">
		                                                <button>
		                                                    	<i class="fa-solid fa-trash"></i>
		                                                </button>
                                                    </a>
	                                            </div>
	                                        </div>
										</c:forEach>
                                    </div>
                                </div>
                                <div id="tabsChild-2">
                                    <div>
                                        <form:form
	                                        action="${pageContext.request.contextPath}/admin/create-singer" 
	                                        class="admin-page__form-inputs" 
	                                        method="POST"
	                                        enctype="multipart/form-data"
	                                        modelAttribute="singer"
	                                    >
                                            <form:input type="text" placeholder="Tên ca sĩ" path="name"/>
                                            <form:input type="text" placeholder="Mô tả của ca sĩ" path="story"/>
                                            <input type="file" name="imageFile" path="imageFile"/>
                                            <button type="submit">
                                                Tạo mới
                                            </button>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<div class="admin-page__modal-box">
		  <div class="modal-content">
		    <span class="close">&times;</span>
		    <p>Cập nhật thông tin ca sĩ</p>
		    <form:form
               action="${pageContext.request.contextPath}/admin/update-singer" 
               class="admin-page__form-inputs" 
               method="POST"
               enctype="multipart/form-data"
               modelAttribute="singer"
           	>
           		<form:input id="update-form-id" type="hidden" placeholder="Tên ca sĩ" path="id"/>
                <form:input id="update-form-name" type="text" placeholder="Tên ca sĩ" path="name"/>
                <form:input id="update-form-story" type="text" placeholder="Mô tả của ca sĩ" path="story"/>
                <input type="file" name="imageFile" path="imageFile"/>
                <button type="submit">
                    Cập nhật
                </button>
            </form:form>
		  </div>
		</div>
    </div>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script><%@include file="/WEB-INF/resources/components/header/accountPopUp.js"%></script>
<script>
	$(function () {
	    $('#tabs, #tabs1, #tabs2, #tabs3').tabs();
	});
   	if ($('.admin-page__album-error span').text() == 'null') {
   		$('.admin-page__album-error').css("display", "none");
   	}
   	if ($('.admin-page__singer-error span').text() == 'null') {
  		$('.admin-page__singer-error').css("display", "none");
  	}
   	$( "#song_country, #song_type, #song_album, #song_singer" ).selectmenu();
   	
   	$(document).ready(function () {
   	  var modal = $('.admin-page__modal-box');
   	  var btn = $('.update-btn');
   	  var span = $('.close');
   	  var updateFormNameInput = $('#update-form-name');
   	  var updateFormStoryInput = $('#update-form-story');
   	  var updateFormIdInput = $('#update-form-id');

   	  btn.each(function(index) {
   		$(this).click(function () {
   	   	    modal.show();
  	   		updateFormIdInput.val($(this).attr("id"))
   	   		updateFormNameInput.val($(this).attr("singerName"))
   	   		updateFormStoryInput.val($(this).attr("singerStory"))
   	  	});

   	  	span.click(function () {
   	    	modal.hide();
   	  	});

   	  });
	  	$(window).on('click', function (e) {
	    	if ($(e.target).is('.modal')) {
	      		modal.hide();
	    	}
	  	});
   	});
</script>

</html>