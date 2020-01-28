<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<style type="text/css">
#my_b_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 36px;
}

#my_l_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 16px;
}

#my_bb_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 25px;
}

#my_bb_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: white;
	font-size: 25px;
}

#my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}

#my_ll_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: white;
	font-size: 20px;
}

#my_ll_g {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: graytext;
	font-size: 20px;
}

article {
	display: block;
}
</style>
<script>
	$(document).ready(function() {
		$("input:checkbox").on('click', function() {
			if ($(this).prop('checked')) {
				var listnum = $(this).val();
				$.ajax("" + $(this).val(), {
					success : function(data) {//콜백함수
						/* alert("나의 리스트에 저장하였습니다.") */
					},
					error : function(e) {
						/* alert("나의 리스트에 저장하는 것에 실패하였습니다.") */
					}
				})
				$(this).parent().removeClass("wish_btn")
				$(this).parent().addClass("wish_btn").addClass("on")
			} else {
				var listnum = $(this).val();
				$.ajax("" + $(this).val(), {
					success : function(data) {//콜백함수
						/* alert("나의 리스트에서 삭제하였습니다.") */
					},
					error : function(e) {
						/* alert("나의 리스트에 삭제하는 것에 실패하였습니다.") */
					}
				})
				$(this).parent().removeClass("wish_btn").removeClass("on")
				$(this).parent().addClass("wish_btn")
			}

		});
	});
</script>
</head>
<body>
	<div class="content" id="content_main">
		<div>
			<div class="content_body">
				<!-- 전체에서의 select box 부분 -->
				<ul></ul>
				<div style="overflow-x: hidden;">
					<div class="main_block_list" style="">
						<div class="new_block" aria-hidden="false" data-swipeable="true"
							style="width: 100%; flex-shrink: 0; overflow: auto hidden;">

							<article class="main_section_item">
								<p class="main_section_item_p" itemtype="new">오늘 업데이트 했어요</p>
								<h3 class="main_section_item_h3" itemtype="new">새로나온 친구들</h3>
								<!-- 아이템 목록 -->
								<ul class="main_section_item_ul" itemtype="new">
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="new_item1" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="new_item1"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="new_item2" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="new_item2"> </label>
											</div>
										</div>
									</li>
								</ul>
							</article>
						</div>
						<div class="wish_block" aria-hidden="false" data-swipeable="true"
							style="width: 100%; flex-shrink: 0; overflow: auto hidden;">

							<article class="main_section_item">
								<p class="main_section_item_p" itemtype="new">오늘 업데이트 했어요</p>
								<h3 class="main_section_item_h3" itemtype="new">인기있는 친구들</h3>
								<!-- 아이템 목록 -->
								<ul class="main_section_item_ul" itemtype="new">
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="wish_itme1" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="wish_itme1"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="wish_item2" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="wish_item2"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="wish_item3" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="wish_item3"> </label>
											</div>
										</div>
									</li>
								</ul>
							</article>
						</div>
						<div class="all_block" aria-hidden="false" data-swipeable="true"
							style="width: 100%; flex-shrink: 0; overflow: auto hidden;">

							<article class="main_section_item">
								<p class="main_section_item_p" itemtype="new">오늘 업데이트 했어요</p>
								<h3 class="main_section_item_h3" itemtype="new">모두의 친구들</h3>
								<!-- 아이템 목록 -->
								<ul class="main_section_item_ul" itemtype="new">
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="all_item1" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item1"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="all_item2" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item2"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="all_item3" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item3"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="all_item4" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item4"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="all_item5" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item5"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="all_item6" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item6"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="all_item7" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item7"> </label>
											</div>
										</div>
									</li>
									<li class="main_section_item_li" itemtype="new">
										<div>
											<a style="display: block;" href="item/product-detail.store">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/20200102183712810_8809681703895_AW_00.jpg"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">롱바디필로우_후드라이언(핑크)</strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>19,000</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="all_item8" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item8"> </label>
											</div>
										</div>
									</li>
								</ul>
							</article>
						</div>
					</div>
				</div>
			</div>
		</div
	</div>
</body>
</html>