<%@ page language="java" contentType="text/html; ; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                            <img src="https://photo-resize-zmp3.zmdcdn.me/w600_r1x1_webp/cover/8/b/1/8/8b18b6584e756ef372787193e2bc19e3.jpg"
                                alt="" />
                        </div>
                        <div class="album-page__content--cover-backdrop">
                            <button><i class="fas fa-play"></i></button>
                        </div>
                    </div>
                    <div class="album-page__content--wire">
                        <div class="album-page__content--title">
                            <h4>Do You Right (EP)</h4>
                            <span><a href="">Evy</a> * <span>14/10/2022</span></span>
                            <span>1 người yêu thích</span>

                        </div>
                        <div class="album-page__content--wire-2">
                            <button class="album-page__content--playAll">
                                <i class="fas fa-play"></i> PHÁT TẤT CẢ
                            </button>
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
                                <span>BÀI HÁT</span>
                            </div>
                            <div class="album-page__content--time">
                                THỜI GIAN
                            </div>
                        </div>
                        <div class="album-page__content--element">
                            <div class="album-page__content--card">
                                <div class="album-page__content--item">
                                    <div class="album-page__content--item--fakeDiv">
                                        <div class="album-page__content--item-number"> <span>1</span>
                                            <div class="album-page__content--item-number--backdrop">
                                                <input type="checkbox" name="" value="">
                                            </div>
                                        </div>
                                        <div class="album-page__content--item-song">
                                            <div class="album-page__content--item-song--img">
                                                <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/2/2/e/6/22e64f95064e3a06f0f15091cacad02c.jpg"
                                                    alt="">
                                                <div class="album-page__content--item-song--img--cover">
                                                    <i class="fa-solid fa-play"></i>
                                                </div>
                                            </div>
                                            <div class="album-page__content--item-song--title">
                                                <span>Stay (Prod. DAUL)</span>
                                                <span><a href="">Evy</a></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="album-page__content--item-timeOut">
                                        <span>02:23</span>
                                        <div class="album-page__content--item-timeOut--backdrop">
                                            <button><i class="fa-regular fa-heart"></i></button>
                                            <button>
                                                <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="album-page__content--card">
                                <div class="album-page__content--item">
                                    <div class="album-page__content--item--fakeDiv">
                                        <div class="album-page__content--item-number"><span>2</span>
                                            <div class="album-page__content--item-number--backdrop">
                                                <input type="checkbox" name="" value="">
                                            </div>
                                        </div>

                                        <div class="album-page__content--item-song">
                                            <div class="album-page__content--item-song--img">
                                                <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/2/2/e/6/22e64f95064e3a06f0f15091cacad02c.jpg"
                                                    alt="">
                                                <div class="album-page__content--item-song--img--cover">
                                                    <i class="fa-solid fa-play"></i>
                                                </div>
                                            </div>
                                            <div class="album-page__content--item-song--title">
                                                <span>Do You Right</span>
                                                <span><a href="">Evy</a> , <a href="">Negav</a></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="album-page__content--item-timeOut"><span>02:23</span>
                                        <div class="album-page__content--item-timeOut--backdrop">
                                            <button><i class="fa-regular fa-heart"></i></button>
                                            <button>
                                                <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="album-page__content--card">
                                <div class="album-page__content--item">
                                    <div class="album-page__content--item--fakeDiv">
                                        <div class="album-page__content--item-number"><span>3</span>
                                            <div class="album-page__content--item-number--backdrop">
                                                <input type="checkbox" name="" value="">
                                            </div>
                                        </div>
                                        <div class="album-page__content--item-song">
                                            <div class="album-page__content--item-song--img">
                                                <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/2/2/e/6/22e64f95064e3a06f0f15091cacad02c.jpg"
                                                    alt="">
                                                <div class="album-page__content--item-song--img--cover">
                                                    <i class="fa-solid fa-play"></i>
                                                </div>
                                            </div>
                                            <div class="album-page__content--item-song--title">
                                                <span>Stuck</span>
                                                <span><a href="">Evy</a></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="album-page__content--item-timeOut"><span>02:23</span>
                                        <div class="album-page__content--item-timeOut--backdrop">
                                            <button><i class="fa-regular fa-heart"></i></button>
                                            <button>
                                                <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <div class="album-page__content--footer">
                            2 bài hát <i class="fa-solid fa-circle"></i> 5 phút
                        </div>
                    </div>
                    <div class="album-page__content--extend">
                        <h4>Có Thể Bạn Quan Tâm</h4>
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
                                            <span>Thói Quen</span>
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
                <h2>Evy Xuất Hiện Trong</h2>
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
                            <h4>Những Bài Hát Hay Nhất Của Evy</h4>
                        </a>
                        <span> <a href="">Evy</a> </span>
                    </div>

                </div>
            </div>
            <div class="album-page__singer2">
                <h2>Negav Xuất Hiện Trong</h2>
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
                            <h4>Những Bài Hát Hay Nhất Của Negav</h4>
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
                            <h4>Bảo Bình Nghe Gì?</h4>
                        </a>
                        <span> <a href="">Black Eyed Peas</a>, <a href="">Negav</a>, <a href="">Cá</a> </span>
                    </div>
                </div>
            </div>
            <div class="album-page__new">
                <div class="album-page__new--cover">
                    <h2>R&B Việt</h2>
                    <div class="album-page__new--all">
                        Tất cả
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
                            <h4>Một Chút Thôi (Single)</h4>
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
                            <h4>Ngày Anh Hạnh Phúc Nhất (Single)</h4>
                        </a>
                        <span>
                            <a href="">Lý Tuấn Kiệt</a>
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
                            <h4>Như Cánh Lục Bình</h4>
                        </a>
                        <span>
                            <a href="">Dương Hồng Loan</a>
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
                            <h4>Gửi Người Em Hà Tĩnh (Single)</h4>
                        </a>
                        <span>
                            <a href="">Thái Học</a>
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
                            <h4>Say Em Từ Lâu (Single)</h4>
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
                            <h4>Ngày Anh Hạnh Phúc Nhất (Single)</h4>
                        </a>
                        <span>
                            <a href="">Lý Tuấn Kiệt</a>
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
                            <h4>Nói Yêu Thương Chỉ Là Thừa (Single)</h4>
                        </a>
                        <span>
                            <a href="">Dee Trần</a>
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
                            <h4>Không Gì Có Thể Thay Thế Em (Live Version) (Single)</h4>
                        </a>
                        <span>
                            <a href="">Khải Đăng</a>
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
                            <h4>Ngày Mai Ta Xa (Single)</h4>
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
                        <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/cover/7/9/7/3/797341cb82655834e312b7fcdcbcdedc.jpg"
                            alt="">
                    </div>
                    <div class="album-page__left--title">
                        <span>Stay (Prod. DAUL)</span>
                        <span><a href="">Evy</a></span>
                    </div>

                    <button><i class="far fa-heart"></i></button>
                    <button><i class="fa fa-ellipsis-h" aria-hidden="true"></i></button>
                </div>
                <div class="album-page__center">
                    <div class="album-page__center--control">
                        <button><i class="fas fa-random"></i></button>
                        <button><i class="fas fa-step-backward"></i></button>
                        <button><i class="fas fa-play"></i></button>
                        <button><i class="fas fa-step-forward"></i></button>
                        <button><i class="fas fa-repeat"></i></button>
                    </div>
                    <div class="album-page__center--play">
                        <span>00:00</span>
                        <div class="album-page__center--line"></div>
                        <span>02:41</span>
                    </div>
                </div>
                <div class="album-page__right">
                    <button><i class="fa-solid fa-compact-disc"></i></button>
                    <button><i class="fa-solid fa-microphone"></i></button>
                    <button><i class="fa-solid fa-display"></i></button>
                    <button><i class="fa-solid fa-volume-high"></i></button>
                    <div class="album-page__right--line"></div>
                    <button><i class="fa-solid fa-sliders"></i></button>
                </div>
            </div>
        </div>
        </div>
            
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script><%@include file="/WEB-INF/resources/components/header/accountPopUp.js"%></script>
</body>

</html>