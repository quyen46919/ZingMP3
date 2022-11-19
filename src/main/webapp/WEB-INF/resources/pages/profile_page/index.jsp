<%@ page language="java" contentType="text/html; ; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="icon"
        href="https://zjs.zmdcdn.me/zmp3-desktop/releases/v1.7.29/static/media/icon_zing_mp3_60.f6b51045.svg" />
    <title>ZingMP3 | Profile</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" />
    <style><%@include file="/WEB-INF/resources/pages/profile_page/styles.css"%></style>
</head>

<body>
    <div class="container">
        <jsp:include page="../../components/left_menu/index.jsp"></jsp:include>
        <!-- end left menu -->
        <div class="profile-page">
            <jsp:include page="../../components/header/index.jsp"></jsp:include>
            <div class="profile-page__lib">
                <div class="profile-page__lib--title">
                    <h2>Thư viện</h2>
                    <button><i class="fa-solid fa-play"></i></button>
                </div>
                <div class="profile-page__lib--row">
                    <div class="profile-page__lib--card">
                        <div class="profile-page__lib--cover">
                            <div class="profile-page__lib--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/avatars/c/0/f/1/c0f16579f4583961bc06e1ee1a565305.jpg"
                                    alt="" />
                            </div>
                            <button><i class="fas fa-random"></i></button>
                        </div>
                        <a href="#">
                            <h4>Evy</h4>
                        </a>
                    </div>
                    <div class="profile-page__lib--card">
                        <div class="profile-page__lib--cover">
                            <div class="profile-page__lib--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/avatars/d/5/d579b585d3c82d1cbe2c16bd257b56cb_1511498028.jpg"
                                    alt="" />
                            </div>
                            <button><i class="fas fa-random"></i></button>
                        </div>
                        <a href="#">
                            <h4>Hoài Lâm</h4>
                        </a>
                    </div>
                    <div class="profile-page__lib--card">
                        <div class="profile-page__lib--cover">
                            <div class="profile-page__lib--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/avatars/5/5/7/8/557866cd0f0c868cb69f4a98a056e435.jpg"
                                    alt="" />
                            </div>
                            <button><i class="fas fa-random"></i></button>
                        </div>
                        <a href="#">
                            <h4>Vương Tuấn Khải</h4>
                        </a>
                    </div>
                    <div class="profile-page__lib--card">
                        <div class="profile-page__lib--cover">
                            <div class="profile-page__lib--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/avatars/7/7/8/d/778d152062edfbe0e4c4abf151858bf0.jpg"
                                    alt="" />
                            </div>
                            <button><i class="fas fa-random"></i></button>
                        </div>
                        <a href="#">
                            <h4>Chạm</h4>
                        </a>
                    </div>
                </div>
            </div>
            <div class="profile-page__playlist">
                <div class="profile-page__playlist--title">
                    <div class="profile-page__playlist--left">
                        <h2>PLAYLIST</h2>
                        <button id="open">
                            <i class="fa-solid fa-plus"></i>
                        </button>
                        <div id="modal" class="profile-page__playlist--popup">
                            <button id="close" class="close-button">
                                &times;
                            </button>
                            <div class="profile-page__playlist--add-playlist">
                                <h3>Tạo playlist mới</h3>
                                <form action="">
                                    <input type="text" spellcheck="false" placeholder="Nhập tên playlist" />
                                </form>
                                <div class="profile-page__playlist--popup-title">
                                    <div class="profile-page__playlist--public">
                                        <h5>Công khai</h5>
                                        <span>Mọi người có thể nhìn thấy
                                            playlist này</span>
                                    </div>
                                    <label class="switch">
                                        <input type="checkbox" checked />
                                        <span class="slider round"></span>
                                    </label>
                                </div>
                                <div class="profile-page__playlist--popup-title">
                                    <div class="profile-page__playlist--public">
                                        <h5>Phát ngẫu nhiên</h5>
                                        <span>Luôn phát ngẫu nhiên tất cả bài
                                            hát</span>
                                    </div>
                                    <label class="switch">
                                        <input type="checkbox" checked />
                                        <span class="slider round"></span>
                                    </label>
                                </div>
                                <button class="add">TẠO MỚI</button>
                            </div>
                        </div>
                        <div id="overlay"></div>
                    </div>

                    <div class="profile-page__playlist--all">
                        Tất cả
                        <i class="fa fa-chevron-right" aria-hidden="true"></i>
                    </div>
                </div>
                <div class="profile-page__playlist--row">
                    <div class="profile-page__playlist--card">
                        <div class="profile-page__playlist--cover">
                            <div class="profile-page__playlist--img">
                                <img src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/f/0/5/c/f05c599832086a0a60f1105db362619f.jpg"
                                    alt="" />
                            </div>
                            <div class="profile-page__playlist--cover-backdrop">
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
                        <h4>Nhạc Trẻ Gây Nghiện</h4>
                        <span>Giai điệu nghe một lần là không thể quên của
                            V-Pop</span>
                    </div>
                </div>
            </div>
            <div class="profile-page__favorite-song">
                <div id="tabs" class="profile-page__favorite-song--header">
                    <ul class="button-tabs">
                        <li><a href="#tabs-1">BÀI HÁT</a></li>
                        <li><a href="#tabs-2">PODCAST</a></li>
                        <li><a href="#tabs-3">ALBUM</a></li>
                        <li><a href="#tabs-4">MV</a></li>
                    </ul>
                    <div id="tabs-1">
                        <div class="profile-page__favorite-song--options">
                            <div id="tabsChild" class="profile-page__favorite-song--button">
                                <ul class="button-tabsChild">
                                    <li>
                                        <a href="#tabsChild-1">Yêu thích</a>
                                    </li>
                                    <li>
                                        <a href="#tabsChild-2">Đã tải lên</a>
                                    </li>
                                </ul>

                                <div id="tabsChild-1">
                                    <div class="profile-page__favorite-song--table">
                                        <div class="profile-page__favorite-song--col-name">
                                            <h4>BÀI HÁT</h4>
                                            <div class="profile-page__favorite-song--col-name-cover">
                                                <h4>ALBUM</h4>
                                                <h4>THỜI GIAN</h4>
                                            </div>
                                        </div>
                                        <div class="profile-page__favorite-song--item">
                                            <div class="profile-page__favorite-song--template">
                                                <div class="profile-page__favorite-song--number">
                                                    <span><i class="fa-solid fa-music"></i></span>
                                                    <div class="profile-page__favorite-song--backdrop">
                                                        <input type="checkbox" name="" value="" />
                                                    </div>
                                                </div>
                                                <div class="profile-page__favorite-song--song">
                                                    <div class="profile-page__favorite-song--img">
                                                        <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/2/2/e/6/22e64f95064e3a06f0f15091cacad02c.jpg"
                                                            alt="" />
                                                        <div class="profile-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="profile-page__favorite-song--title">
                                                        <span>Stay (Prod.
                                                            DAUL)</span>
                                                        <span><a href="">Evy</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="profile-page__favorite-song--album">
                                                <span><a href="">Xuân Hạ Thu Đông,
                                                        rồi lại Xuân - Tập
                                                        3+4</a></span>
                                            </div>
                                            <div class="profile-page__favorite-song--time-out">
                                                <button>
                                                    <i class="fa-solid fa-heart"></i>
                                                </button>
                                                <span>02:23</span>
                                                <div class="profile-page__favorite-song--time-out-backdrop">
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
                                        <div class="profile-page__favorite-song--item">
                                            <div class="profile-page__favorite-song--template">
                                                <div class="profile-page__favorite-song--number">
                                                    <span><i class="fa-solid fa-music"></i></span>
                                                    <div class="profile-page__favorite-song--backdrop">
                                                        <input type="checkbox" name="" value="" />
                                                    </div>
                                                </div>
                                                <div class="profile-page__favorite-song--song">
                                                    <div class="profile-page__favorite-song--img">
                                                        <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/0/5/6/6/056652306efa257560bcf64b30f756a3.jpg"
                                                            alt="" />
                                                        <div class="profile-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="profile-page__favorite-song--title">
                                                        <span>Hôm nay em cưới
                                                            rồi</span>
                                                        <span><a href="">Khải
                                                                Đăng</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="profile-page__favorite-song--album">
                                                <span><a href="">Hôm nay em cưới rồi
                                                        (Single)</a></span>
                                            </div>
                                            <div class="profile-page__favorite-song--time-out">
                                                <button>
                                                    <i class="fa-solid fa-heart"></i>
                                                </button>
                                                <span>02:23</span>
                                                <div class="profile-page__favorite-song--time-out-backdrop">
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
                                        <div class="profile-page__favorite-song--item">
                                            <div class="profile-page__favorite-song--template">
                                                <div class="profile-page__favorite-song--number">
                                                    <span><i class="fa-solid fa-music"></i></span>
                                                    <div class="profile-page__favorite-song--backdrop">
                                                        <input type="checkbox" name="" value="" />
                                                    </div>
                                                </div>
                                                <div class="profile-page__favorite-song--song">
                                                    <div class="profile-page__favorite-song--img">
                                                        <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/0/7/1/4/0714c3f88d82f5c1bd4cbdd779ba1720.jpg"
                                                            alt="" />
                                                        <div class="profile-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="profile-page__favorite-song--title">
                                                        <span>Đánh Mất Em
                                                            (Lofi
                                                            Version)</span>
                                                        <span><a href="">Quang Đăng
                                                                Trần</a>
                                                            <a href="">,Freak D</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="profile-page__favorite-song--album">
                                                <span><a href="">Đánh Mất Em (Lofi
                                                        Version) (Single)</a></span>
                                            </div>
                                            <div class="profile-page__favorite-song--time-out">
                                                <button>
                                                    <i class="fa-solid fa-heart"></i>
                                                </button>
                                                <span>02:23</span>
                                                <div class="profile-page__favorite-song--time-out-backdrop">
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
                                        <div class="profile-page__favorite-song--item">
                                            <div class="profile-page__favorite-song--template">
                                                <div class="profile-page__favorite-song--number">
                                                    <span><i class="fa-solid fa-music"></i></span>
                                                    <div class="profile-page__favorite-song--backdrop">
                                                        <input type="checkbox" name="" value="" />
                                                    </div>
                                                </div>
                                                <div class="profile-page__favorite-song--song">
                                                    <div class="profile-page__favorite-song--img">
                                                        <img src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/3/2/a/3/32a35f4d26ee56366397c09953f6c269.jpg"
                                                            alt="" />
                                                        <div class="profile-page__favorite-song--cover">
                                                            <i class="fa-solid fa-play"></i>
                                                        </div>
                                                    </div>
                                                    <div class="profile-page__favorite-song--title">
                                                        <span>Tất Cả Sẽ Thay
                                                            Anh</span>
                                                        <span><a href="">Tăng
                                                                Phúc</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="profile-page__favorite-song--album">
                                                <span><a href=""></a></span>
                                            </div>
                                            <div class="profile-page__favorite-song--time-out">
                                                <button>
                                                    <i class="fa-solid fa-heart"></i>
                                                </button>
                                                <span>02:23</span>
                                                <div class="profile-page__favorite-song--time-out-backdrop">
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
                                    <div class="profile-page__favorite-song--upload">
                                        <img src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/icons/empty-upload-dark.png"
                                            alt="" />
                                        <h4>
                                            Chưa có bài hát tải lên trong
                                            thư viện cá nhân
                                        </h4>
                                        <button>Tải lên ngay</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tabs-2">
                        <div class="profile-page__favorite-song--podcast">
                            <img src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/icons/episode-empty-1.png"
                                alt="" />
                        </div>
                    </div>
                    <div id="tabs-3">
                        <div class="profile-page__favorite-song--podcast">
                            <img src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/icons/episode-empty-1.png"
                                alt="" />
                        </div>
                    </div>
                    <div id="tabs-4">
                        <div class="profile-page__favorite-song--podcast">
                            <img src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/icons/episode-empty-1.png"
                                alt="" />
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
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
    $(function () {
        $('#tabs').tabs();
    });
    $(function () {
        $('#tabsChild').tabs();
    });
    <%@include file="/WEB-INF/resources/components/header/accountPopUp.js"%>
</script>
<script src="./modal.js"></script>

</html>