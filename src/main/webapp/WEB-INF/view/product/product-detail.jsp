<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세보기</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
</head>
<body>
	<script>
		$(function() {
			// 총 평점
			var star = $('.reviewstar1 span')
			//var score2 = $("#score").val();
			var score2 = 3.5;
			var score = score2 * 2 // 3.5 =>7개

			$('.reviewstar1').find('span').each(function(i, e) {
				if (i < score) {
					$(this).addClass('on');
				}
			});
			// 리뷰어 평점
			var star = $('.reviewstar2 span')
			var score3 = 2.5;
			var score4 = score3 * 2
			$('.reviewstar2').find('span').each(function(i, e) {
				if (i < score4) {
					$(this).addClass('on');
				}
			});

			// 리뷰 작성 평점 클릭이벤트
			$('.starRev1 span').click(function() {
				$(this).parent().children('span').removeClass('on');
				$(this).addClass('on').prevAll('span').addClass('on');
				return false;
			});

		})
	</script>
	<!-- <section class="sec-product-detail bg0 p-t-0 p-b-0">
	<div class="container">
			<div class="row">
				<div style="width: 100%;height: 700px;position: relative;top: 0;left: 0px;">
				<img src="../images/product-detail/calendar1.jpg" style="position: absolute;width: 100%;height: 700px;object-fit: cover;)"
				width="100%" height="auto">
				</div>
			</div>
	</div>
</section>	 -->
	<div id="kakaoContent" class="cont_item  " role="main">
		<header>
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox"
					style="width: 100%; height: 100vw;">
					<!-- Slide One - Set the background image for this slide in the line below -->
					<div class="carousel-item active"
						style="margin: auto; background-color: #FFF;">
						<div id="test" style="width: 100%; height: auto">
							<img src="../images/product-detail/calendar2.jpg" class="pic"
								style="width: 100%;">
						</div>
					</div>
					<div class="carousel-item"
						style="margin: auto; background-color: #FFF;">
						<div id="test" style="width: 100%; height: auto">
							<img src="../images/product-detail/calendar3.jpg" class="pic"
								style="width: 100%;">
						</div>
					</div>
					<div class="carousel-item"
						style="margin: auto; background-color: #FFF;">
						<div id="test" style="width: 100%; height: auto">
							<img src="../images/product-detail/calendar2.jpg" class="pic"
								style="width: 100%;">
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</header>

		<section class="sec-product-detail bg0 p-t-65 p-b-0">
			<div class="container">
			<div class="row">
				<div class="detail-header__Detail-vk2zi5-0 eoPXCl"
					style="text-align: center; width: 100%; font-family: '맑은 고딕'; color: #000;">
					<h2
						style="font-weight: bolder; font-size: 45px; font-weight: bold;"
						class="detail-header__Title-vk2zi5-1 iREAVG">
						<p>[온라인 전용]2020</p>
						<p>다이어리캘린더 세트_라이언</p>
					</h2>
					<div class="detail-header__PriceWrap-vk2zi5-13 eYsRXP">
						<p class="detail-header__Price-vk2zi5-2 gBmHgl"
							style="font-size: 25px;">
							<span>25,000</span>원
						</p>
					</div>
					<br />
					<div class="starRev2" style="height: 20%; padding-left: 41%;">
						<div class="reviewstar1">
							<span class="starR1">별1_왼</span> <span class="starR2">별1_오</span>
							<span class="starR1">별2_왼</span> <span class="starR2">별2_오</span>
							<span class="starR1">별3_왼</span> <span class="starR2">별3_오</span>
							<span class="starR1">별4_왼</span> <span class="starR2">별4_오</span>
							<span class="starR1">별5_왼</span> <span class="starR2">별5_오</span>
							<!-- <span class="totalCount">(0)</span> -->
						</div>
					</div>
					<button class="detail-header__ShareButton-vk2zi5-4 fpVMnk">공유</button>
					
				</div>
			</div>


				<div class="row p-t-60">
					<div class="detail-contents__Contents-a2e1v2-0 oVMuJ">
						<h3 class="get-content__IxTitle-sc-4qizrl-1 gRjHnj">MY DAILY
							DIARY 2020</h3>

						<div class="get-content__IxDescription-sc-4qizrl-2 iJISv">

							카카오프렌즈와 함께하는<br> 즐거운 매일매일을 위한<br> 2020다이어리&amp;캘린더 세트!<br>
							다이어리, 캘린더, 3색볼펜이<br> 한 세트로 여러분의 한 해를 책임져줄게요.
						</div>

						<br /> <img class="get-content__Img-sc-4qizrl-0 gQkHn"
							src="http://t1.daumcdn.net/friends/prod/editor/abbc2cbf-ccff-45b1-83d1-6af8794e91d7.jpg">

						<hr class="get-content__IxSpace-sc-4qizrl-3 hyFLdY">

						<div class="get-content__IxDescription-sc-4qizrl-2 iJISv">
							라이언 세트에는<br> 라이언 블루커버 다이어리와 미니캘린더,<br> 라이언 3색볼펜으로 구성되어
							있어요.
						</div>
						<hr />


					</div>
				</div>

				<div class="row p-t-0">
					<h3 class="detail-contents__Title-a2e1v2-2 dwXJQx ">세부정보</h3>
					<div class="detail-contents__WrapContentDetail-a2e1v2-4 Joofx ">
						<ul class="get-content-detail__Ul-puczq5-10 kCGBGP">
							<li class="get-content-detail__Li-puczq5-8 exuhom">품명 및
								모델명&nbsp;:&nbsp;22020 다이어리캘린더 세트_라이언 8809681703499</li>
							<li class="get-content-detail__Li-puczq5-8 exuhom">법에 의한 인증,
								허가&nbsp;: 해당없음</li>
							<li class="get-content-detail__Li-puczq5-8 exuhom">제조자&nbsp;:&nbsp;다이어리,캘린더-드림인쇄
								/&nbsp;펜-지혜의샘터</li>
							<li class="get-content-detail__Li-puczq5-8 exuhom">제조국&nbsp;:&nbsp;한국</li>
							<li class="get-content-detail__Li-puczq5-8 exuhom">품질보증 기준 :
								본 제품은 공정거래위원회 고시 소비자 분쟁해결기준에 의거 교환 및 보상을 받으실 수 있습니다.</li>
							<li class="get-content-detail__Li-puczq5-8 exuhom">A/S 책임자와
								전화번호 : 카카오프렌즈 고객센터 1577-6263</li>
						</ul>
					</div>

				</div>

				<hr />
				<div class="row p-t-0">
					<h3 class="detail-contents__Title-a2e1v2-2 dwXJQx ">리뷰 0개</h3>
					<div class="starRev2">
						<div class="reviewstar1">
							<span class="starR1">별1_왼</span> <span class="starR2">별1_오</span>
							<span class="starR1">별2_왼</span> <span class="starR2">별2_오</span>
							<span class="starR1">별3_왼</span> <span class="starR2">별3_오</span>
							<span class="starR1">별4_왼</span> <span class="starR2">별4_오</span>
							<span class="starR1">별5_왼</span> <span class="starR2">별5_오</span>

							<!-- <span id="review" style="font-size: 20px">(3)</span> -->
						</div>
					</div>
					<button class="review__NewReview-yivm8l-1 fQZhjJ"
						style="background-color: #000;">리뷰를 남겨주세요</button>
				</div>
				<hr />

			</div>
		</section>

		<!-- Related Products -->
		<section class="sec-relate-product bg0 p-t-0 p-b-0">
			<div class="container">
				<div class="p-b-45">
					<h3 class="ltext-106 cl5 txt-left"
						style="font-family: '나눔고딕체'; font-weight: bold;">잠깐만,</h3>
					<h3 class="ltext-106 cl5 txt-left"
						style="font-family: '나눔고딕체'; font-weight: bold;">이 상품은 어때요?</h3>
				</div>

				<!-- Slide2 -->
				<div class="wrap-slick2">
					<div class="slick2">
						<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="../images/product-01.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											Esprit Ruffle Shirt </a> <span class="stext-105 cl3">
											$16.64 </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="../images/product-02.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											Herschel supply </a> <span class="stext-105 cl3"> $35.31 </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="../images/product-03.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											Only Check Trouser </a> <span class="stext-105 cl3">
											$25.50 </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="../images/product-04.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											Classic Trench Coat </a> <span class="stext-105 cl3">
											$75.00 </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</section>
		<hr />
		<section class="sec-relate-product bg0 p-t-0 p-b-0">
			<div class="container">
				<div class="p-b-45">
					<h3 class="ltext-106 cl5 txt-left"
						style="font-family: '나눔고딕체'; font-weight: bold;">최근 본 상품이</h3>
					<h3 class="ltext-106 cl5 txt-left"
						style="font-family: '나눔고딕체'; font-weight: bold;">요기 있네</h3>
				</div>

				<!-- Slide2 -->
				<div class="wrap-slick2">
					<div class="slick2">
						<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="../images/product-01.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											Esprit Ruffle Shirt </a> <span class="stext-105 cl3">
											$16.64 </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="../images/product-02.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											Herschel supply </a> <span class="stext-105 cl3"> $35.31 </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="../images/product-03.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											Only Check Trouser </a> <span class="stext-105 cl3">
											$25.50 </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-pic hov-img0">
									<img src="../images/product-04.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											Classic Trench Coat </a> <span class="stext-105 cl3">
											$75.00 </span>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</section>

		<div class="bottom-bar__BottomWrap-sc-11z5au4-1 hZwLyu">
			<div class="no-option__Wrap-z0m2t2-1 jUxlri">
				<div class="sc-htpNat KtFsv quantity__Wrap-sc-1gmaz1h-0 iOmWyG">
					<button type="button"
						class="quantity__ButtonDec-sc-1gmaz1h-3 ghClOy quantity__Button-sc-1gmaz1h-1 bYohjK"></button>
					<input type="number" class="quantity__Text-sc-1gmaz1h-2 kFuewO"
						value="1">
					<button type="button"
						class="quantity__ButtonInc-sc-1gmaz1h-4 eUcjHH quantity__Button-sc-1gmaz1h-1 bYohjK"></button>
				</div>
				<div class="no-option__Price-z0m2t2-0 hCwYWR">
					<span class="no-option__Label-z0m2t2-2 kMgbXi">총 상품금액</span><span>4,000</span>원
				</div>
			</div>
			<div class="bottom-bar__Wrap-sc-11z5au4-0 bottom-bar__Wrap-sc-11z5au4-0 eyQXYE">
				<form action="/kr/order/directsheet" method="post"
					style="display: none;">
					<input type="hidden" name="_csrf"
						value="1a606840-0298-4c90-8405-3b37be047c9e"><input
						type="hidden" name="_csrf_header" value="X-CSRF-TOKEN"><input
						type="hidden" name="displayGoodsId" value="6450"><input
						type="hidden" name="prEas" value=""><input type="hidden"
						name="bsSeq" id=""><input type="hidden" name="ctSeq"
						value="80"><input type="hidden" name="displayGoodsIds"
						value="6450"><input type="hidden"
						name="productList[0].prCode" value="8809681705615"><input
						type="hidden" name="productList[0].ctSeq" value="80"><input
						type="hidden" name="productList[0].prEa" value="1"><input
						type="hidden" name="prCode" value="8809681705615"><input
						type="hidden" name="prCodes" value="8809681705615"><input
						type="hidden" name="prEa" value="1"><input type="hidden"
						name="isGiftBag" value="false">
				</form>
				<button type="button"
					class="direct-purchase__Purchase-sc-1jgpcp-0 iipgZi">바로구매</button>
				<button type="button" class="sc-bwzfXH hnazCY button-oulv2u-0 qSzXk"
					image="cart">장바구니 담기</button>
			</div>
		</div>
	</div>


	<div class="wrap-modal2 js-modal2 p-b-20 bUaVHd">
		<div class="overlay-modal2 js-hide-modal2"></div>

		<div class="container" style="border-radius: 5px;">
			<div class="bg0 p-t-60 p-b-0 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal2">
					<img src="../images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class=""
						style="width: 100%; padding-left: 10%; padding-right: 10%;">
						<div class="">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14"
								style="text-align: center; font-weight: bold;">
								카카오프렌즈 회원구매 혜택<br>
							</h4>
							<h4 class="mtext-105 cl2 js-name-detail p-b-14"
								style="text-align: center">
								신규 가입시 1,000포인트 즉시 지급!<br> 회원 구매시 3% 적립!
							</h4>
							<div style="text-align: center">
								<img
									src="http://t1.kakaocdn.net/friends/new_store/bg_benefit2.png"
									class="check-member-popup__TambourineRyan-sc-1mlxq2j-4 gNwgdH">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bg0">
				<table
					style="width: 100%; margin: auto; border-top: 1px solid #d8d8d8;">
					<tr>
						<td class="p-t-20 p-b-20"
							style="text-align: center; font-size: 20px; border-right: 1px solid #d8d8d8; width: 50%;">
							<a href="../order/directsheet.store" style="color: black;">비회원
								구매</a>
						</td>
						<td class="p-t-20 p-b-20"
							style="text-align: center; font-size: 20px;"><strong><a
								href="../order/directsheet.store" style="color: black;">간편
									회원 구매</a></strong></td>
					</tr>
				</table>
			</div>
		</div>
	</div>


</body>
</html>