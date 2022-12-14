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
    <title>ZingMP3 | Album</title>
    <style><%@include file="/WEB-INF/resources/pages/album_page/styles.css"%></style>
</head>

<body>
    <div class="container">
        <jsp:include page="../../components/left_menu/index.jsp"></jsp:include>
        <!-- end left menu -->
        <div class="album-page">
            <jsp:include page="../../components/header/index.jsp"></jsp:include>
            <div class="album-page__content">
                <div class="album-page__content--left">
                    <div class="album-page__content--cover">
                        <div class="album-page__content--img">
                            <img src="${album.imageUrl }"
                                alt="" />
                        </div>
                        <div class="album-page__content--cover-backdrop">
                            <button><i class="fas fa-play"></i></button>
                        </div>
                    </div>
                    <div class="album-page__content--wire">
                        <div class="album-page__content--title">
                            <h4><c:out value="${album.name}"></c:out></h4>
                            <span><c:out value="${album.description }"/></span>
                        </div>
                        <div class="album-page__content--wire-2">
                            <div class="album-page__content--icon">
                                <button><i class="far fa-heart"></i></button>
                                <button><i class="fa fa-ellipsis-h" aria-hidden="true"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="album-page__content--right">
                    <div class="album-page__content--song">
                        <div class="album-page__content--header">
                            <div class="album-page__content--name">
                                <button><i class="fa-solid fa-arrow-down-up-across-line"></i></button>
                                <span>B??I H??T</span>
                            </div>
                            <div class="album-page__content--time">
                                TH???I GIAN
                            </div>
                        </div>
                        <div class="album-page__content--element">
                            <c:forEach items="${album.songs}" var="song" varStatus="myIndex">
	                            <div class="album-page__content--card" songImageUrl="${song.imageUrl }" id="${song.source}" songName="${song.name}" songType="${song.type}">
	                                <div class="album-page__content--item">
	                                    <div class="album-page__content--item--fakeDiv">
	                                        <div class="album-page__content--item-number">
				                            	<span>${myIndex.index + 1}</span>
	                                        </div>
	                                        <div class="album-page__content--item-song">
	                                            <div class="album-page__content--item-song--img">
	                                                <img src="${song.imageUrl}"
	                                                    alt="">
	                                                <div class="album-page__content--item-song--img--cover">
	                                                    <i class="fa-solid fa-play"></i>
	                                                </div>
	                                            </div>
	                                            <div class="album-page__content--item-song--title">
	                                                <span>${song.name}</span>
	                                                <span>${song.type}</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="album-page__content--item-timeOut">
	                                        <span></span>
	                                        <div class="album-page__content--item-timeOut--backdrop">
	                                            <a href="${pageContext.request.contextPath}/profile/favorite-song/?userEmail=${email}&songId=${song.id}">
	                                            	<i class="fa-regular fa-heart"></i>
	                                            </a>
	                                            <button>
	                                                <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
	                                            </button>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
							</c:forEach>
                        </div>
                        <div class="album-page__content--footer">
                            2 b??i h??t <i class="fa-solid fa-circle"></i> 5 ph??t
                        </div>
                    </div>
                    <div class="album-page__content--extend">
                        <h4>C?? Th??? B???n Quan T??m</h4>
                        <div class="album-page__content--extend--card">
                            <div class="album-page__content--extend--item">
                                <div class="album-page__content--extend--item--fakeDiv">
                                    <div class="album-page__content--extend--item-number"><i
                                            class="fa-solid fa-music"></i></div>
                                    <div class="album-page__content--extend--item-song">
                                        <div class="album-page__content--extend--item-song--img">
                                            <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/cover/7/9/7/3/797341cb82655834e312b7fcdcbcdedc.jpg"
                                                alt="">
                                            <div class="album-page__content--extend--item-song--img--cover">
                                                <i class="fa-solid fa-play"></i>
                                            </div>
                                        </div>
                                        <div class="album-page__content--extend--item-song--title">
                                            <span>Stay (Prod. DAUL)</span>
                                            <span><a href="">Evy</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="album-page__content--extend--item-timeOut"><span>02:23</span>
                                    <div class="album-page__content--extend--item-timeOut--backdrop">
                                        <button><i class="fa-solid fa-microphone"></i></button>
                                        <button><i class="fa-regular fa-heart"></i></button>
                                        <button>
                                            <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="album-page__content--extend--card">
                            <div class="album-page__content--extend--item">
                                <div class="album-page__content--extend--item--fakeDiv">
                                    <div class="album-page__content--extend--item-number"><i
                                            class="fa-solid fa-music"></i></div>
                                    <div class="album-page__content--extend--item-song">
                                        <div class="album-page__content--extend--item-song--img">
                                            <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/a/7/0/9/a709bc3ffaf7b62e6c633c7b193ee9bd.jpg"
                                                alt="">
                                            <div class="album-page__content--extend--item-song--img--cover">
                                                <i class="fa-solid fa-play"></i>
                                            </div>
                                        </div>
                                        <div class="album-page__content--extend--item-song--title">
                                            <span>Baby With You</span>
                                            <span><a href="">Evy</a> , <a href="">Wren Evans</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="album-page__content--extend--item-timeOut"><span>02:23</span>
                                    <div class="album-page__content--extend--item-timeOut--backdrop">
                                        <button><i class="fa-solid fa-microphone"></i></button>
                                        <button><i class="fa-regular fa-heart"></i></button>
                                        <button>
                                            <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="album-page__content--extend--card">
                            <div class="album-page__content--extend--item">
                                <div class="album-page__content--extend--item--fakeDiv">
                                    <div class="album-page__content--extend--item-number"><i
                                            class="fa-solid fa-music"></i></div>
                                    <div class="album-page__content--extend--item-song">
                                        <div class="album-page__content--extend--item-song--img">
                                            <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/a/7/0/9/a709bc3ffaf7b62e6c633c7b193ee9bd.jpg"
                                                alt="">
                                            <div class="album-page__content--extend--item-song--img--cover">
                                                <i class="fa-solid fa-play"></i>
                                            </div>
                                        </div>
                                        <div class="album-page__content--extend--item-song--title">
                                            <span>Th??i Quen</span>
                                            <span><a href="">Evy</a> , <a href="">Wren Evans</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="album-page__content--extend--item-timeOut"><span>02:23</span>
                                    <div class="album-page__content--extend--item-timeOut--backdrop">
                                        <button><i class="fa-solid fa-microphone"></i></button>
                                        <button><i class="fa-regular fa-heart"></i></button>
                                        <button>
                                            <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="album-page__content--extend--card">
                            <div class="album-page__content--extend--item">
                                <div class="album-page__content--extend--item--fakeDiv">
                                    <div class="album-page__content--extend--item-number"><i
                                            class="fa-solid fa-music"></i></div>
                                    <div class="album-page__content--extend--item-song">
                                        <div class="album-page__content--extend--item-song--img">
                                            <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/8/8/8/f/888fb3ed42da9d550697edb93a6f7326.jpg"
                                                alt="">
                                            <div class="album-page__content--extend--item-song--img--cover">
                                                <i class="fa-solid fa-play"></i>
                                            </div>
                                        </div>
                                        <div class="album-page__content--extend--item-song--title">
                                            <span>The Blame (Radio Edit)</span>
                                            <span><a href="">Evy</a> , <a href="">MOKA</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="album-page__content--extend--item-timeOut"><span>02:23</span>
                                    <div class="album-page__content--extend--item-timeOut--backdrop">
                                        <button><i class="fa-solid fa-microphone"></i></button>
                                        <button><i class="fa-regular fa-heart"></i></button>
                                        <button>
                                            <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="album-page__singer1">
                <h2>Evy Xu???t Hi???n Trong</h2>
                <div class="album-page__singer1--row">
                    <div class="album-page__singer1--card">
                        <div class="album-page__singer1--cover">
                            <div class="album-page__singer1--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/avatars/c/0/f/1/c0f16579f4583961bc06e1ee1a565305.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__singer1--cover-backdrop">
                                <button><i class="fas fa-random"></i></button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Evy</h4>
                        </a>

                    </div>
                    <div class="album-page__singer1--card">
                        <div class="album-page__singer1--cover">
                            <div class="album-page__singer1--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/avatars/2/e/c/b/2ecb509672a56e047db2cc74728d6976.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__singer1--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Nh???ng B??i H??t Hay Nh???t C???a Evy</h4>
                        </a>
                        <span> <a href="">Evy</a> </span>
                    </div>

                </div>
            </div>
            <div class="album-page__singer2">
                <h2>Negav Xu???t Hi???n Trong</h2>
                <div class="album-page__singer2--row">
                    <div class="album-page__singer2--card">
                        <div class="album-page__singer2--cover">
                            <div class="album-page__singer2--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/avatars/3/7/1/9/371916889fcad000f3c7e9dd9ad2e389.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__singer2--cover-backdrop">
                                <button><i class="fas fa-random"></i></button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Negav</h4>
                        </a>

                    </div>
                    <div class="album-page__singer2--card">
                        <div class="album-page__singer2--cover">
                            <div class="album-page__singer2--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/avatars/9/c/1/6/9c16125599b8a9509131afe080d7a4d1.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__singer2--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Nh???ng B??i H??t Hay Nh???t C???a Negav</h4>
                        </a>
                        <span> <a href="">Negav</a></span>
                    </div>
                    <div class="album-page__singer2--card">
                        <div class="album-page__singer2--cover">
                            <div class="album-page__singer2--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/2/a/7/0/2a70eddb8cfa5d7c043eab7846003934.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__singer2--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>B???o B??nh Nghe G???</h4>
                        </a>
                        <span> <a href="">Black Eyed Peas</a>, <a href="">Negav</a>, <a href="">C??</a> </span>
                    </div>
                </div>
            </div>
            <div class="album-page__new">
                <div class="album-page__new--cover">
                    <h2>R&B Vi???t</h2>
                    <div class="album-page__new--all">
                        T???t c???
                        <i class="fa fa-chevron-right" aria-hidden="true"></i>
                    </div>
                </div>
                <div class="album-page__new--row">
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/2/d/f/9/2df9160352308dd28caedb80406b678d.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Miss Showbiz (Single)</h4>
                        </a>
                        <span>
                            <a href="">Chi Pu</a>
                        </span>
                    </div>
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/c/4/9/c/c49c2bbbe1b64a82c64bcc3db56c0ef4.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>M???t Ch??t Th??i (Single)</h4>
                        </a>
                        <span> <a href="">B Ray</a>, <a href="">Helia</a> </span>
                    </div>
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/1/a/7/6/1a76cf19f63b9392989880afdcaeae61.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Ng??y Anh H???nh Ph??c Nh???t (Single)</h4>
                        </a>
                        <span>
                            <a href="">L?? Tu???n Ki???t</a>
                        </span>
                    </div>
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/a/4/8/9/a489fc7420010b10eda6fa4d616fcfe3.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Nh?? C??nh L???c B??nh</h4>
                        </a>
                        <span>
                            <a href="">D????ng H???ng Loan</a>
                        </span>
                    </div>
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/f/9/2/f/f92f47b6cf874af388e2c2831ed3c945.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>G???i Ng?????i Em H?? T??nh (Single)</h4>
                        </a>
                        <span>
                            <a href="">Th??i H???c</a>
                        </span>
                    </div>
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/0/8/4/c/084c733329dd8765f8cf06b55d2adf4d.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Say Em T??? L??u (Single)</h4>
                        </a>
                        <span>
                            <a href="">AyT</a>
                        </span>
                    </div>
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/1/a/7/6/1a76cf19f63b9392989880afdcaeae61.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Ng??y Anh H???nh Ph??c Nh???t (Single)</h4>
                        </a>
                        <span>
                            <a href="">L?? Tu???n Ki???t</a>
                        </span>
                    </div>
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/1/c/f/f/1cff87b474fa4339f07f131a51ec42f7.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>N??i Y??u Th????ng Ch??? L?? Th???a (Single)</h4>
                        </a>
                        <span>
                            <a href="">Dee Tr???n</a>
                    </div>
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/2/0/2/f/202f1551da9c10a37cb203b56a7a9749.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Kh??ng G?? C?? Th??? Thay Th??? Em (Live Version) (Single)</h4>
                        </a>
                        <span>
                            <a href="">Kh???i ????ng</a>
                        </span>
                    </div>
                    <div class="album-page__new--card">
                        <div class="album-page__new--cover">
                            <div class="album-page__new--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/3/c/2/8/3c28db4c603165cf34631a9ff041c472.jpg"
                                    alt="" />
                            </div>
                            <div class="album-page__new--cover-backdrop">
                                <button><i class="fa-regular fa-heart"></i></button>
                                <button><i class="fa-regular fa-circle-play"></i></button>
                                <button>
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <a href="#">
                            <h4>Ng??y Mai Ta Xa (Single)</h4>
                        </a>
                        <span>
                            <a href="">MGD</a>, <a href="">$eth</a>
                        </span>
                    </div>
                </div>
            </div>
            <div class="album-page__playSong">
                <div class="album-page__left">
                    <div class="album-page__left--img">
                        <img src="${album.imageUrl }" alt="" id="album-page__current-song-img">
                    </div>
                    <div class="album-page__left--title">
                        <span id="album-page__song-name"></span>
                        <br/>
                        <span id="album-page__song-type"></span>
                    </div>
                </div>
                <div class="album-page__center">
                    <div class="album-page__center--control">
                        <button id="random"><i class="fas fa-random"></i></button>
                        <button id="play-prev"><i class="fas fa-step-backward"></i></button>
                        <button id="play-pause"><i class="fas fa-play"></i></button>
                        <button id="play-next"><i class="fas fa-step-forward"></i></button>
                        <button id="loop"><i class="fas fa-repeat"></i></button>
                    </div>
                    <div class="album-page__center--play">
                        <span id="current-time">00:00</span>
                        <input id="progress" class="progress" type="range" value="0" step="1" min="0" max="100">
                        <span id="end-time">00:00</span>
                    </div>
                    <audio id="audio-player" src=""></audio>
                </div>
                <div class="album-page__right">
                    <button><i class="fa-solid fa-compact-disc"></i></button>
                    <button><i class="fa-solid fa-microphone"></i></button>
                    <button><i class="fa-solid fa-display"></i></button>
                    <button id="mute-audio"><i class="fa-solid fa-volume-high"></i></button>
                    <div>
                    	<input type="range" id="audio-volume" min="0" max="100" value="100"/>
                    </div>
                    <button><i class="fa-solid fa-sliders"></i></button>
                </div>
            </div>
        </div>
     </div>
            
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script>
    $(document).ready(function(){
    	<%@include file="/WEB-INF/resources/components/header/accountPopUp.js"%>
	 	var audio = new Audio();
	 	var audioDuration;
    	const audioPlayer = document.querySelector("#audio-player");
    	const inputProgress = document.querySelector("#progress");
    	const currentTime = document.querySelector("#current-time");
    	var isPlaying = audio.currentTime > 0 && !audio.paused && !audio.ended && audio.readyState > audio.HAVE_CURRENT_DATA;
    	var isLoop = false;
    	var isRandom = false;
    	var currentVolume = 1;
	 	
    	$('.album-page__content--card').each(function(index) {
    		$(this).click(function() {
    			$('.album-page__playSong').css('display', 'flex');
    			
    			audioPlayer.pause();
       		 	audioPlayer.src = $(this).attr('id');

       		 	audioPlayer.addEventListener('loadedmetadata', () => {
        		  	audioDuration = audioPlayer.duration;
        		  	
        		  	var minutes = "0" + Math.floor(audioDuration / 60);
        		  	var seconds = "0" +  Math.floor(audioDuration - minutes * 60);
        		  	var dur = minutes.substr(-2) + ":" + seconds.substr(-2);
           		  	$('#end-time').html(dur);
       		 	})
       		 	
       		 	audioPlayer.play();
       		 	
       		  	$('#play-pause').html("<i class='fa-solid fa-pause'></i>");
       		  	$('#album-page__song-name').html($(this).attr('songName'));
       		  	$('#album-page__song-type').html($(this).attr('songType'));
       		  	$('#album-page__current-song-img').attr("src", $(this).attr("songImageUrl"));
       		  	$('.album-page__content--cover').css("border-radius", "50%").css("animation", "rotation 20s infinite linear");
       		})
    	});

    	$('#play-pause').click(function() {
    		if (audioPlayer.paused) {
    			audioPlayer.play();
       		  	$('#play-pause').html("<i class='fa-solid fa-pause'></i>");
       		  	$('.album-page__content--cover').css("border-radius", "50%").css("animation", "rotation 20s infinite linear");
    		} else {
    			audioPlayer.pause();
       		  	$('#play-pause').html("<i class='fas fa-play'></i>");
       		  	$('.album-page__content--cover').css("border-radius", "5px").css("animation", "");
    		}
    	})
    	
    	audioPlayer.addEventListener("loadedmetadata", () => {
	    	audioPlayer.addEventListener("timeupdate", (e) => {
	        	const currentTime = e.target.currentTime;
		        const progressPercent = Math.floor(
		           (currentTime / audioDuration) * 100
		        );
		        document.querySelector("#progress").value = progressPercent;
	
		        // update playing song current time
		        let currentMin = Math.floor(currentTime / 60);
		        let currentSec = Math.floor(currentTime % 60);
		        currentMin = currentMin < 10 ? "0" + currentMin : currentMin;
		        currentSec = currentSec < 10 ? "0" + currentSec : currentSec;
		        const timeS = currentMin + ":" + currentSec;
		        document.querySelector("#current-time").innerText = timeS;
	      	});
    	});
    	
    	document.querySelector("#progress").onchange = (e) => {
            const seekTime = audioDuration / 100 * e.target.value;
			document.querySelector("#audio-player").currentTime = seekTime;
        }
    	
    	function changeSong(DOM) {
        	audioPlayer.pause();
   		 	audioPlayer.src = DOM.attr('id');

   		 	audioPlayer.addEventListener('loadedmetadata', () => {
    		  	audioDuration = audioPlayer.duration;
    		  	
    		  	var minutes = "0" + Math.floor(audioDuration / 60);
    		  	var seconds = "0" +  Math.floor(audioDuration - minutes * 60);
    		  	var dur = minutes.substr(-2) + ":" + seconds.substr(-2);
       		  	$('#end-time').html(dur);
   		 	})
   		 
   		 	audioPlayer.play();
   		  	$('#album-page__song-name').html(DOM.attr('songName'));
   		  	$('#album-page__song-type').html(DOM.attr('songType'));
    	}
    	
    	$('#play-next').click(function() {
    		$('.album-page__content--card').each(function(index) {
        		if ($(this).attr('id') == $("#audio-player").attr('src')) {
               		console.log("next");
        			if ($(this).is(':last-child')) {
        				changeSong($('.album-page__content--card:first-child'));
        				return;
        			}
               		changeSong($(this).next());
               		return false;
        		}
        	});
    	})
    	
    	$('#play-prev').click(function() {
    		$('.album-page__content--card').each(function(index) {
        		if ($(this).attr('id') == $("#audio-player").attr('src')) {
        			console.log(index);
        			if ($(this).is(':first-child')) {
        				console.log($('.album-page__content--card').last());
        				changeSong($('.album-page__content--card').last());
        				return;
        			}
               		console.log("prev");
               		changeSong($(this).prev());
               		return false;
        		}
        	});
    	})
    	
    	// T??nh n??ng loop v?? random
    	$('#random').toggle(function () {
		    $("#random").addClass("active");
		    isRandom = true;
		}, function () {
		    $("#random").removeClass("active");
		    isRandom = false;
		});
    	
    	$('#loop').toggle(function () {
		    $("#loop").addClass("active");
		    isLoop = true;
		}, function () {
		    $("#loop").removeClass("active");
		    isLoop = false;
		});

        // X??? l?? next audio khi end audio        
        $('#audio-player').on('ended', function() {
        	console.log("end audio");
        	if (isRandom) {
        		var newIndex = Math.floor(Math.random() * $('.album-page__content--card').length);
        		
        		do {
        			newIndex = Math.floor(Math.random() * $('.album-page__content--card').length);
        		} while ($('.album-page__content--card:nth-child(' + newIndex + ")").attr("id") == audioPlayer.src) {
            		changeSong($('.album-page__content--card:nth-child(' + newIndex + ")"));
        		}
        	}
        	
            if(isLoop) {
            	audioPlayer.pause();
            	audioPlayer.currentTime = 0;
            	audioPlayer.play();
            	return;
            }

        	  $('#play-next').click();
       	});
        
        // t??ng gi???m ??m l?????ng b??i h??t
        $('#audio-volume').on('change', function(e) {
        	const volume = parseInt(e.target.value) / 100;
        	currentVolume = volume;
        	audioPlayer.volume = volume;
        	
        	if (volume === 0) {
        		$('#mute-audio').html("<i class='fa-solid fa-volume-xmark'></i>");
        	} else {
        		$('#mute-audio').html("<i class='fa-solid fa-volume-high'></i>");
        	}
        })
        
        $('#mute-audio').toggle(function() {
    		$('#mute-audio').html("<i class='fa-solid fa-volume-xmark'></i>");
        	audioPlayer.volume = 0;
        	$('#audio-volume').val(0);
        }, function() {
        	console.log("currentVolume", currentVolume);
    		$('#mute-audio').html("<i class='fa-solid fa-volume-high'></i>");
        	audioPlayer.volume = currentVolume;
        	$('#audio-volume').val(currentVolume * 100);
        })
        
    });
    </script>
</body>

</html>