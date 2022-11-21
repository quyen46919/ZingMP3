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
                <h2>QUẢN LÝ - QUẢN TRỊ VIÊN</h2>
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
                                                        <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/2/2/e/6/22e64f95064e3a06f0f15091cacad02c.jpg"
                                                            alt="" />
                                                        <div class="admin-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="admin-page__favorite-song--title">
                                                        <span>Stay (Prod.
                                                            DAUL)</span>
                                                        <span><a href="">Evy</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="admin-page__favorite-song--album">
                                                <span><a href="">Xuân Hạ Thu Đông,
                                                        rồi lại Xuân - Tập
                                                        3+4</a></span>
                                            </div>
                                            <div class="admin-page__favorite-song--time-out">
                                                <button>
                                                    <i class="fa-solid fa-trash"></i>
                                                </button>
                                                <span>02:23</span>
                                                <div class="admin-page__favorite-song--time-out-backdrop">
                                                    <button>
                                                        <i class="fa-solid fa-photo-film"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-microphone"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-heart"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
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
                                                        <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/0/5/6/6/056652306efa257560bcf64b30f756a3.jpg"
                                                            alt="" />
                                                        <div class="admin-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="admin-page__favorite-song--title">
                                                        <span>Hôm nay em cưới
                                                            rồi</span>
                                                        <span><a href="">Khải
                                                                Đăng</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="admin-page__favorite-song--album">
                                                <span><a href="">Hôm nay em cưới rồi
                                                        (Single)</a></span>
                                            </div>
                                            <div class="admin-page__favorite-song--time-out">
                                                <button>
                                                    <i class="fa-solid fa-trash"></i>
                                                </button>
                                                <span>02:23</span>
                                                <div class="admin-page__favorite-song--time-out-backdrop">
                                                    <button>
                                                        <i class="fa-solid fa-photo-film"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-microphone"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-heart"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
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
                                                        <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/0/7/1/4/0714c3f88d82f5c1bd4cbdd779ba1720.jpg"
                                                            alt="" />
                                                        <div class="admin-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="admin-page__favorite-song--title">
                                                        <span>Đánh Mất Em (Lofi Version)</span>
                                                        <span>
	                                                        <a href="">Quang Đăng Trần</a>
	                                                        <a href="">Freak D</a>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="admin-page__favorite-song--album">
                                                <span><a href="">Đánh Mất Em (Lofi
                                                        Version) (Single)</a></span>
                                            </div>
                                            <div class="admin-page__favorite-song--time-out">
                                                <button>
                                                    <i class="fa-solid fa-trash"></i>
                                                </button>
                                                <span>02:23</span>
                                                <div class="admin-page__favorite-song--time-out-backdrop">
                                                    <button>
                                                        <i class="fa-solid fa-photo-film"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-microphone"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-heart"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
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
                                                        <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/3/2/a/3/32a35f4d26ee56366397c09953f6c269.jpg"
                                                            alt="" />
                                                        <div class="admin-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="admin-page__favorite-song--title">
                                                        <span>Tất Cả Sẽ Thay
                                                            Anh</span>
                                                        <span><a href="">Tăng
                                                                Phúc</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="admin-page__favorite-song--album">
                                                <span><a href=""></a></span>
                                            </div>
                                            <div class="admin-page__favorite-song--time-out">
                                                <button>
                                                    <i class="fa-solid fa-trash"></i>
                                                </button>
                                                <span>02:23</span>
                                                <div class="admin-page__favorite-song--time-out-backdrop">
                                                    <button>
                                                        <i class="fa-solid fa-photo-film"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-microphone"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-heart"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="tabsChild-2">
                                    <div>
                                        <form action="" class="admin-page__form-inputs">
                                            <input type="text" placeholder="Tên bài hát" />
                                            <input type="text" placeholder="Tên ca sĩ" />
                                            <input type="file" name="image" />
                                            <button type="submit">
                                                Tạo mới
                                            </button>
                                        </form>
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
							  		<%= "<div class='admin-page__error'><span>" + request.getParameter("albumErrorMsg") + "<span></div>" %>
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
                                    <div class="admin-page__favorite-song--table">
                                        <div class="admin-page__favorite-song--col-name">
                                            <h4>CA SĨ</h4>
                                            <div class="admin-page__favorite-song--col-name-cover">
                                                <h4>MÔ TẢ</h4>
                                                <h4>THAO TÁC</h4>
                                            </div>
                                        </div>
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
                                                        <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/2/2/e/6/22e64f95064e3a06f0f15091cacad02c.jpg"
                                                            alt="" />
                                                        <div class="admin-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="admin-page__favorite-song--title">
                                                        <span>Phan Mạnh Quỳnh</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="admin-page__favorite-song--album">
                                                <span>Lorem ipsum dolor sit,
                                                    amet consectetur
                                                    adipisicing elit. Eaque
                                                    sit laudantium illum ab
                                                    sint incidunt hic magni,
                                                    id accusamus velit
                                                    asperiores quas ullam?
                                                    Beatae, id adipisci
                                                    quibusdam suscipit eius
                                                    veritatis.</span>
                                            </div>
                                            <div class="admin-page__favorite-song--time-out">
                                                <button>
                                                    <i class="fa-solid fa-pen"></i>
                                                </button>
                                                <button>
                                                    <i class="fa-solid fa-trash"></i>
                                                </button>
                                                <div class="admin-page__favorite-song--time-out-backdrop">
                                                    <button>
                                                        <i class="fa-solid fa-photo-film"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-microphone"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-heart"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="tabsChild-2">
                                    <div>
                                        <form action="" class="admin-page__form-inputs">
                                            <input type="text" placeholder="Tên ca sĩ" />
                                            <input type="text" placeholder="Mô tả" />
                                            <input type="file" name="image" />
                                            <button type="submit">
                                                Tạo mới
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
   if ($('.admin-page__error span').text() == 'null') {
   		$('.admin-page__error').css("display", "none");
   }

</script>

</html>