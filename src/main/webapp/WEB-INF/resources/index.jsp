<%@ page language="java" contentType="text/html; ; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="https://zjs.zmdcdn.me/zmp3-desktop/releases/v1.7.29/static/media/icon_zing_mp3_60.f6b51045.svg" />
    <title>ZingMP3 | Homepage</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
      />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
      />
	<style><%@include file="/WEB-INF/resources/pages/home_page/styles.css"%></style>
  </head>
    <body>
    <div class="container">
      <!-- start left menu -->
      <jsp:include page="./components/left_menu/index.jsp"></jsp:include>
      <!-- end left menu -->

      <!-- start main content -->
      <div class="homepage">
        <div class="homepage__content">
          <!-- HEADER -->
          <jsp:include page="./components/header/index.jsp"></jsp:include>
          <!-- END HEADER -->
          <div class="homepage__poster">
            <div class="homepage__poster--item">
              <img
                src="https://photo-zmp3.zmdcdn.me/banner/d/f/b/f/dfbfecf8cf79b702e63add37e7df5b19.jpg"
                alt=""
                />
            </div>
            <div class="homepage__poster--item">
              <img
                src="https://photo-zmp3.zmdcdn.me/banner/f/7/b/f/f7bfacef513ccf187512a442dd028c04.jpg"
                alt=""
                />
            </div>
            <div class="homepage__poster--item">
              <img
                src="https://photo-zmp3.zmdcdn.me/banner/5/a/7/3/5a739433cd9c33316032a694be6acbb5.jpg"
                alt=""
                />
            </div>
            <div class="homepage__poster--item">
              <img
                src="https://photo-zmp3.zmdcdn.me/banner/0/f/0/4/0f04bd3eab235256865afe7ed89a0dfc.jpg"
                alt=""
                />
            </div>
            <div class="homepage__poster--item">
              <img
                src="https://photo-zmp3.zmdcdn.me/banner/5/d/4/3/5d43a52fc39636655370833ab190fbac.jpg"
                alt=""
                />
            </div>
          </div>
          <div class="homepage__trending">
            <h2>Mới Phát Hành</h2>
            <div class="homepage__trending--button">
              <div class="homepage__trending--cover">
                <button><a href="#">Bài hát</a></button>
                <button><a href="#">Album</a></button>
              </div>
              <div class="homepage__trending--all">
                Tất cả
                <i class="fa fa-chevron-right" aria-hidden="true"></i>
              </div>
            </div>
            <div class="homepage__trending--content">
            	<c:forEach items="${songList}" var="song">
	                <div class="homepage__trending--card">
	                  <div class="homepage__trending--cover">
	                    <div class="homepage__trending--img">
	                      <img
	                        src="${song.imageUrl }"
	                        alt=""
	                        />
	                    </div>
	                    <div class="homepage__trending--title">
	                      <h4>${song.name }</h4>
	                      <span>${song.singer.name }</span>
	                      <span>${song.album.name }</span>
	                    </div>
	                  </div>
	                  <div class="homepage__trending--icon">
	                    <i class="fa fa-play" aria-hidden="true"></i>
	                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
	                  </div>
	                </div>
                </c:forEach>
            </div>
          </div>
          <div class="homepage__weekend">
            <h2>Cuối Tuần Thư Thả</h2>
            <div class="homepage__weekend--row">
            <c:forEach items="${albumList}" var="album">
              <a id="link" href="${pageContext.request.contextPath}/album/${album.id}">
                <div class="homepage__weekend--card">
                  <div class="homepage__weekend--cover">
                    <div class="homepage__weekend--img">
                      <img
                        src="${album.imageUrl }"
                        alt="${album.name }"
                        />
                    </div>
                    <div class="homepage__weekend--cover-backdrop">
                      <button><i class="fa-regular fa-heart"></i></button>
                      <button><i class="fa-regular fa-circle-play"></i></button>
                      <button>
                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                      </button>
                    </div>
                  </div>
                  <div class="homepage__weekend--icon"></div>
                  <h4>${album.name }</h4>
                  <span>${album.description }</span>
                </div>
               </a>
             </c:forEach>
            </div>
          </div>
          <div class="homepage__new">
            <h2>Nhạc Mới Mỗi Ngày</h2>
            <div class="homepage__new--row">
              <div class="homepage__new--card">
                <div class="homepage__new--cover">
                  <div class="homepage__new--img">
                    <img
                      src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/2/d/f/9/2df9160352308dd28caedb80406b678d.jpg"
                      alt=""
                      />
                  </div>
                  <div class="homepage__new--cover-backdrop">
                    <button><i class="fa-regular fa-heart"></i></button>
                    <button><i class="fa-regular fa-circle-play"></i></button>
                    <button>
                      <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                    </button>
                  </div>
                </div>
                <a href="#"> <h4>Miss Showbiz (Single)</h4></a>
                <span>
                  <a href="">Chi Pu</a>
                </span>
              </div>
              <div class="homepage__new--card">
                <div class="homepage__new--cover">
                  <div class="homepage__new--img">
                    <img
                      src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/c/4/9/c/c49c2bbbe1b64a82c64bcc3db56c0ef4.jpg"
                      alt=""
                      />
                  </div>
                  <div class="homepage__new--cover-backdrop">
                    <button><i class="fa-regular fa-heart"></i></button>
                    <button><i class="fa-regular fa-circle-play"></i></button>
                    <button>
                      <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                    </button>
                  </div>
                </div>
                <a href="#"> <h4>Một Chút Thôi (Single)</h4></a>
                <span> <a href="">B Ray</a>, <a href="">Helia</a> </span>
              </div>
              <div class="homepage__new--card">
                <div class="homepage__new--cover">
                  <div class="homepage__new--img">
                    <img
                      src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/1/a/7/6/1a76cf19f63b9392989880afdcaeae61.jpg"
                      alt=""
                      />
                  </div>
                  <div class="homepage__new--cover-backdrop">
                    <button><i class="fa-regular fa-heart"></i></button>
                    <button><i class="fa-regular fa-circle-play"></i></button>
                    <button>
                      <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                    </button>
                  </div>
                </div>
                <a href="#"> <h4>Ngày Anh Hạnh Phúc Nhất (Single)</h4></a>
                <span>
                  <a href="">Lý Tuấn Kiệt</a>
                </span>
              </div>
              <div class="homepage__new--card">
                <div class="homepage__new--cover">
                  <div class="homepage__new--img">
                    <img
                      src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/a/4/8/9/a489fc7420010b10eda6fa4d616fcfe3.jpg"
                      alt=""
                      />
                  </div>
                  <div class="homepage__new--cover-backdrop">
                    <button><i class="fa-regular fa-heart"></i></button>
                    <button><i class="fa-regular fa-circle-play"></i></button>
                    <button>
                      <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                    </button>
                  </div>
                </div>
                <a href="#"> <h4>Như Cánh Lục Bình</h4></a>
                <span>
                  <a href="">Dương Hồng Loan</a>
                </span>
              </div>
              <div class="homepage__new--card">
                <div class="homepage__new--cover">
                  <div class="homepage__new--img">
                    <img
                      src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/f/9/2/f/f92f47b6cf874af388e2c2831ed3c945.jpg"
                      alt=""
                      />
                  </div>
                  <div class="homepage__new--cover-backdrop">
                    <button><i class="fa-regular fa-heart"></i></button>
                    <button><i class="fa-regular fa-circle-play"></i></button>
                    <button>
                      <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                    </button>
                  </div>
                </div>
                <a href="#"> <h4>Gửi Người Em Hà Tĩnh (Single)</h4></a>
                <span>
                  <a href="">Thái Học</a>
                </span>
              </div>
              <div class="homepage__new--card">
                <div class="homepage__new--cover">
                  <div class="homepage__new--img">
                    <img
                      src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/0/8/4/c/084c733329dd8765f8cf06b55d2adf4d.jpg"
                      alt=""
                      />
                  </div>
                  <div class="homepage__new--cover-backdrop">
                    <button><i class="fa-regular fa-heart"></i></button>
                    <button><i class="fa-regular fa-circle-play"></i></button>
                    <button>
                      <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                    </button>
                  </div>
                </div>
                <a href="#"> <h4>Say Em Từ Lâu (Single)</h4></a>
                <span>
                  <a href="">AyT</a>
                </span>
              </div>
              <div class="homepage__new--card">
                <div class="homepage__new--cover">
                  <div class="homepage__new--img">
                    <img
                      src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/1/a/7/6/1a76cf19f63b9392989880afdcaeae61.jpg"
                      alt=""
                      />
                  </div>
                  <div class="homepage__new--cover-backdrop">
                    <button><i class="fa-regular fa-heart"></i></button>
                    <button><i class="fa-regular fa-circle-play"></i></button>
                    <button>
                      <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                    </button>
                  </div>
                </div>
                <a href="#"> <h4>Ngày Anh Hạnh Phúc Nhất (Single)</h4></a>
                <span>
                  <a href="">Lý Tuấn Kiệt</a>
                </span>
              </div>
              <div class="homepage__new--card">
                <div class="homepage__new--cover">
                  <div class="homepage__new--img">
                    <img
                      src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/1/c/f/f/1cff87b474fa4339f07f131a51ec42f7.jpg"
                      alt=""
                      />
                  </div>
                  <div class="homepage__new--cover-backdrop">
                    <button><i class="fa-regular fa-heart"></i></button>
                    <button><i class="fa-regular fa-circle-play"></i></button>
                    <button>
                      <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                    </button>
                  </div>
                </div>
                <a href="#"> <h4>Nói Yêu Thương Chỉ Là Thừa (Single)</h4></a>
                <span>
                  <a href="">Dee Trần</a>
                </div>
                <div class="homepage__new--card">
                  <div class="homepage__new--cover">
                    <div class="homepage__new--img">
                      <img
                        src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/2/0/2/f/202f1551da9c10a37cb203b56a7a9749.jpg"
                        alt=""
                        />
                    </div>
                    <div class="homepage__new--cover-backdrop">
                      <button><i class="fa-regular fa-heart"></i></button>
                      <button><i class="fa-regular fa-circle-play"></i></button>
                      <button>
                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                      </button>
                    </div>
                  </div>
                  <a href="#"> <h4>Không Gì Có Thể Thay Thế Em (Live Version)
                      (Single)</h4></a>
                  <span>
                    <a href="">Khải Đăng</a>
                  </span>
                </div>
                <div class="homepage__new--card">
                  <div class="homepage__new--cover">
                    <div class="homepage__new--img">
                      <img
                        src="https://photo-resize-zmp3.zmdcdn.me/w320_r1x1_webp/cover/3/c/2/8/3c28db4c603165cf34631a9ff041c472.jpg"
                        alt=""
                        />
                    </div>
                    <div class="homepage__new--cover-backdrop">
                      <button><i class="fa-regular fa-heart"></i></button>
                      <button><i class="fa-regular fa-circle-play"></i></button>
                      <button>
                        <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                      </button>
                    </div>
                  </div>
                  <a href="#"> <h4>Ngày Mai Ta Xa (Single)</h4></a>
                  <span>
                    <a href="">MGD</a>, <a href="">$eth</a>
                  </span>
                </div>
              </div>
            </div>
            <div class="homepage__chart">
              <div class="homepage__chart--hashtag">
                <a href="#">#zingchart</a>
                <button class="icon">
                  <i class="fa-solid fa-circle-play"></i>
                </button>
              </div>
              <div class="homepage__chart--content">
                <div class="homepage__chart--left">
                  <div class="homepage__chart--col">
                    <div class="homepage__chart--card">
                      <div class="homepage__chart--cover">
                        <span class="number">1</span>
                        <div class="homepage__chart--img">
                          <img
                            src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/2/8/9/2/2892c3530e93895b6605cea040c749e0.jpg"
                            alt=""
                            />
                          <div class="homepage__chart--icon">
                            <i class="fa fa-play" aria-hidden="true"></i>
                          </div>
                        </div>

                        <div class="homepage__chart--title">
                          <h4>Có Chơi Có Chịu</h4>
                          <span>
                            <a href="">Karik</a>, <a href="">OnlyC</a>
                          </span>
                        </div>
                        <span class="per">40%</span>
                      </div>
                    </div>
                    <div class="homepage__chart--card">
                      <div class="homepage__chart--cover">
                        <span class="number">2</span>
                        <div class="homepage__chart--img">
                          <img
                            src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/4/9/6/f/496fa84f1a008e3fa51668545deb33ca.jpg"
                            alt=""
                            />
                          <div class="homepage__chart--icon">
                            <i class="fa fa-play" aria-hidden="true"></i>
                          </div>
                        </div>
                        <div class="homepage__chart--title">
                          <h4>Ân Tình Sang Trang</h4>
                          <span>
                            <a href="">Châu Khải Phong</a>, <a href="">ACV</a>
                          </span>
                        </div>
                        <span class="per">36%</span>
                      </div>
                    </div>
                    <div class="homepage__chart--card">
                      <div class="homepage__chart--cover">
                        <span class="number">3</span>
                        <div class="homepage__chart--img">
                          <img
                            src="https://photo-resize-zmp3.zmdcdn.me/w94_r1x1_webp/cover/b/2/3/5/b23523f74ca4b55e1774fd8a7b468977.jpg"
                            alt=""
                            />
                          <div class="homepage__chart--icon">
                            <i class="fa fa-play" aria-hidden="true"></i>
                          </div>
                        </div>
                        <div class="homepage__chart--title">
                          <h4>Thế Giới Trong Em</h4>
                          <span>
                            <a href="">Hương Ly</a>, <a href="">LY.M</a>
                          </span>
                        </div>
                        <span class="per">43%</span>
                      </div>
                    </div>
                    <button>Xem thêm</button>
                  </div>
                </div>
                <div class="homepage__chart--right">
                  <div class="homepage__chart--right--chart">
                    <canvas id="myChart"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="homepage__zingchart">
              <div class="homepage__zingchart--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v5.2/images/song-vn-2x.jpg"
                  alt=""
                  />
              </div>
              <div class="homepage__zingchart--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v5.2/images/web_song_usuk.jpg"
                  alt=""
                  />
              </div>
              <div class="homepage__zingchart--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v5.2/images/web_song_kpop.jpg"
                  alt=""
                  />
              </div>
            </div>
            <div class="homepage__singer">
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/justatee.png"
                  alt=""
                  />
              </div>
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/duc-phuc.png"
                  alt=""
                  />
              </div>
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/mr-siro.png"
                  alt=""
                  />
              </div>
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/huong-ly.png"
                  alt=""
                  />
              </div>
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/jack.png"
                  alt=""
                  />
              </div>
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/hoa-minzy.png"
                  alt=""
                  />
              </div>
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/karik.png"
                  alt=""
                  />
              </div>
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/onlyc.png"
                  alt=""
                  />
              </div>
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/trinh-thanh-binh.png"
                  alt=""
                  />
              </div>
              <div class="homepage__singer--item">
                <img
                  src="https://zmp3-static.zmdcdn.me/skins/zmp3-v6.1/images/zma-2021/imgs/chi-dan.png"
                  alt=""
                  />
              </div>
            </div>
            <div class="homepage__event">
              <div class="homepage__event--item">
                <div class="homepage__event--img">
                  <img
                    src="https://photo-resize-zmp3.zmdcdn.me/w600_r12x7_webp/event/a/7/c/a/a7ca676d54709ccdebe19f532d9caf7f.jpg"
                    alt=""
                    />
                  <div class="homepage__event--title">
                    <span>phát hành bài hát</span>
                    <h4>
                      Chẳng Thể Nghe Con Tim - Phát Huy T4 Chẳng Thể Nghe Con
                      Tim
                      - Phát Huy T4
                    </h4>
                    <p>20:00 Thứ Bảy, 17 tháng 9</p>
                  </div>
                </div>
                <div class="homepage__event--care">
                  <p>Lượt quan tâm: 265</p>
                  <button>QUAN TÂM</button>
                </div>
              </div>
              <div class="homepage__event--item">
                <div class="homepage__event--img">
                  <img
                    src="https://photo-resize-zmp3.zmdcdn.me/w600_r12x7_webp/cover/b/4/0/2/b4029d4c94eccff5e2769753d6bdd365.jpg"
                    alt=""
                    />
                  <div class="homepage__event--title">
                    <span>talkshow</span>
                    <h4>SEACHAINS rap “cực gắt” tại XONE</h4>
                    <p>20:00 Thứ Bảy, 17 tháng 10</p>
                  </div>
                </div>
                <div class="homepage__event--care">
                  <p>Lượt quan tâm: 259</p>
                  <button>QUAN TÂM</button>
                </div>
              </div>
              <div class="homepage__event--item">
                <div class="homepage__event--img">
                  <img
                    src="https://photo-resize-zmp3.zmdcdn.me/w600_r12x7_webp/event/f/7/9/f/f79f1db343c288ce786da23d5fb32e9e.jpg"
                    alt=""
                    />
                  <div class="homepage__event--title">
                    <span>sinh nhật sao</span>
                    <h4>Sinh Nhật Sao x ERIK</h4>
                    <p>Đang diễn ra</p>
                  </div>
                </div>
                <div class="homepage__event--care">
                  <p>Lượt quan tâm: 125</p>
                  <button>QUAN TÂM</button>
                </div>
              </div>
            </div>
            <div class="homepage__footer">
              <h3>ĐỐI TÁC ÂM NHẠC</h3>
              <div class="homepage__footer--row">
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/universal-1.png"
                    alt=""
                    />
                </div>
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/Kakao-M.png"
                    alt=""
                    />
                </div>
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/yg.png"
                    alt=""
                    />
                </div>
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/monstercat.png"
                    alt=""
                    />
                </div>
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/FUGA.png"
                    alt=""
                    />
                </div>
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/beggers.png"
                    alt=""
                    />
                </div>
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/orcahrd.png"
                    alt=""
                    />
                </div>
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/SM-Entertainment.png"
                    alt=""
                    />
                </div>
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/empire.png"
                    alt=""
                    />
                </div>
                <div class="homepage__footer--item">
                  <img
                    src="https://static-zmp3.zmdcdn.me/skins/zmp3-v6.1/images/partner_logo/sony.png"
                    alt=""
                    />
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end main content -->
      </div>
      <script
        type="text/javascript"
        src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
      <script
        type="text/javascript"
        src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
      <script
        type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
      <script
        src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"
        integrity="sha512-ElRFoEQdI5Ht6kZvyzXhYG9NqjtkmlkfYk0wr6wHxU9JEHakS7UJZNeml5ALk+8IKlU6jDgMabC3vkumRokgJA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
      <script>
      	<%@include file="/WEB-INF/resources/pages/home_page/chart.js"%>
      	<%@include file="/WEB-INF/resources/pages/home_page/poster.js"%>
      	<%@include file="/WEB-INF/resources/pages/home_page/singer.js"%>
      	<%@include file="/WEB-INF/resources/components/header/accountPopUp.js"%>
      </script>
      
  </body>
  </html>
