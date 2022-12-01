<%@ page language="java" contentType="text/html; ; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="icon"
        href="https://zjs.zmdcdn.me/zmp3-desktop/releases/v1.7.29/static/media/icon_zing_mp3_60.f6b51045.svg" />
    <title>ZingMP3 | Search</title>
    <style><%@include file="/WEB-INF/resources/pages/profile_page/styles.css"%></style>
    <style><%@include file="/WEB-INF/resources/pages/research_page/styles.css"%></style>
</head>
<body>
<div class="container">
		<jsp:include page="../../components/left_menu/index.jsp"></jsp:include>
        <!-- end left menu -->
        <div class="research-page">
            <jsp:include page="../../components/header/index.jsp"></jsp:include>
            <div class="research-page__content">
                <div id="tabs" class="research-page__favorite-song--header">
                    <ul class="button-tabs">
                        <h3>Kết Quả Tìm Kiếm</h3>
                        <li><a href="#tabs-1">TẤT CẢ</a></li>
                        <li><a href="#tabs-2">CA SĨ</a></li>
                        <li><a href="#tabs-3">BÀI HÁT</a></li>
                        <li><a href="#tabs-4">ALBUM</a></li>
                    </ul>
                    <div id="tabs-1">
                        <div class="research-page__favorite-song--podcast">
                            <div class="research-page__artist">
                                <h2>Ca sĩ</h2>
                                <div class="research-page__artist--col">
	                                <c:forEach items="${singers}" var="singer">
					                    <div class="profile-page__lib--card">
					                        <div class="profile-page__lib--cover">
					                            <div class="profile-page__lib--img">
					                                <img src="${singer.imageUrl }"
					                                    alt="" />
					                            </div>
					                            <button><i class="fas fa-random"></i></button>
					                        </div>
					                        <a href="#">
					                            <h4>${singer.name }</h4>
					                        </a>
					                    </div>
									</c:forEach>
                             	</div>
                            </div>
                            <div class="research-page__trending">
                                <div class="research-page__trending--button">
                                    <div class="research-page__trending--cover">
                                        <h2>Bài Hát</h2>
                                    </div>
                                    <div class="research-page__trending--all">
                                        Tất cả
                                        <i class="fa fa-chevron-right" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="research-page__trending--content">
                                    <c:forEach items="${songs}" var="song">    
                                        <div class="research-page__favorite-song--item">
                                            <div class="research-page__favorite-song--template">
                                                <div class="research-page__favorite-song--song">
                                                    <div class="research-page__favorite-song--img">
                                                        <img src="${song.imageUrl }" alt="${song.name }" />
                                                        <div class="research-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="research-page__favorite-song--title">
                                                        <span>${song.name}</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="research-page__favorite-song--time-out">
                                                <span>02:23</span>
                                                <div class="research-page__favorite-song--time-out-backdrop">
                                                    <button>
                                                        <i class="fa-solid fa-photo-film"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-solid fa-microphone"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa-regular fa-heart"></i>
                                                    </button>
                                                    <button>
                                                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
									</c:forEach>
                                </div>
                            </div>
                            <div class="research-page__playlist">
                                <h2>Playlist/Album</h2>
                                <div class="research-page__playlist--row">
	                                <c:forEach items="${albums}" var="album">
	                                    <a href="${pageContext.request.contextPath}/album/${album.id}" class="research-page__playlist--card">
	                                        <div class="research-page__playlist--cover">
	                                            <div class="research-page__playlist--img">
	                                                <img src="${album.imageUrl }" alt="" />
	                                            </div>
	                                            <div class="research-page__playlist--cover-backdrop">
	                                                <button>
	                                                    <i class="fa-regular fa-heart"></i>
	                                                </button>
	                                                <button>
	                                                    <i class="fa-regular fa-circle-play"></i>
	                                                </button>
	                                                <button>
	                                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
	                                                </button>
	                                            </div>
	                                        </div>
	                                        <h4>${album.name}</h4>
	                                    </a>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tabs-2">
                        <div class="research-page__artist">
                                <div class="research-page__artist--col">
	                                <c:forEach items="${singers}" var="singer">
					                    <div class="profile-page__lib--card">
					                        <div class="profile-page__lib--cover">
					                            <div class="profile-page__lib--img">
					                                <img src="${singer.imageUrl }"
					                                    alt="" />
					                            </div>
					                            <button><i class="fas fa-random"></i></button>
					                        </div>
					                        <a href="#">
					                            <h4>${singer.name }</h4>
					                        </a>
					                    </div>
									</c:forEach>
                             	</div>
                            </div>
                    </div>
                    <div id="tabs-3">
						<div class="research-page__trending--content">
                                <c:forEach items="${songs}" var="song">    
                                    <div class="research-page__favorite-song--item">
                                        <div class="research-page__favorite-song--template">
                                            <div class="research-page__favorite-song--song">
                                                <div class="research-page__favorite-song--img">
                                                    <img src="${song.imageUrl }" alt="${song.name }" />
                                                    <div class="research-page__favorite-song--cover">
                                                        <i class="fa-solid fa-play"></i>
                                                    </div>
                                                </div>
                                                <div class="research-page__favorite-song--title">
                                                    <span>${song.name}</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="research-page__favorite-song--time-out">
                                            <span>02:23</span>
                                            <div class="research-page__favorite-song--time-out-backdrop">
                                                <button>
                                                    <i class="fa-solid fa-photo-film"></i>
                                                </button>
                                                <button>
                                                    <i class="fa-solid fa-microphone"></i>
                                                </button>
                                                <button>
                                                    <i class="fa-regular fa-heart"></i>
                                                </button>
                                                <button>
                                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
								</c:forEach>
                            </div>
                    </div>
                    <div id="tabs-4">
                        <div class="research-page__playlist">
                            <div class="research-page__playlist--row">
                             <c:forEach items="${albums}" var="album">
                                 <a href="${pageContext.request.contextPath}/album/${album.id}" class="research-page__playlist--card">
                                     <div class="research-page__playlist--cover">
                                         <div class="research-page__playlist--img">
                                             <img src="${album.imageUrl }" alt="" />
                                         </div>
                                         <div class="research-page__playlist--cover-backdrop">
                                             <button>
                                                 <i class="fa-regular fa-heart"></i>
                                             </button>
                                             <button>
                                                 <i class="fa-regular fa-circle-play"></i>
                                             </button>
                                             <button>
                                                 <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                             </button>
                                         </div>
                                     </div>
                                     <h4>${album.name}</h4>
                                 </a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    <script src="../../components/header/accountPopUp.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
   	 	<%@include file="/WEB-INF/resources/components/header/accountPopUp.js"%>
        $(function () {
            $('#tabs').tabs();
        });
        $(function () {
            $('#tabsChild').tabs();
        });
    </script>
</body>
</html>