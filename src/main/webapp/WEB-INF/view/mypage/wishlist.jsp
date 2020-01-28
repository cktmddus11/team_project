<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오프렌즈 - 찜 리스트</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
<script type="text/javascript">
	/* function allchkbox(allchk) {
		$("input[name=itemchks]").prop("checked", allchk.checked)
		if($(allchk).hasClass("check")=== true){
			$(allchk).removeClass("check")
			return;
		}
		$(allchk).addClass("check")
	} */
	$(function(){
		$(".cont_product.wishlist_detail").hide() // 찜없을때 나오는거 숨기기
		$("input[name=allchk]").prop("checked",true)
		$("input[name=itemchks]").prop("checked", true) // 체크박스는 기본값이 false로 되어있어서 true로 바꿔줌 선택되어있는 상태
		
		// db로 하자
		/* $(".header__DeleteCountLabel-sc-1o98df4-7").text($(".basket-item__Wrap-sc-1bhrte-0").length+"개 선택"); */
		
		// 체크박스 한개 눌렀을 때 고치기 !!!!!!!
		$("input[name=itemchks]").click(function(){
			if(!$(this).prop("checked")==true) { // 체크를 없앨거면
				$(this).siblings('label').removeClass("dejnuF") // 누른거 형제 노드인  label태그의 class만 변경
				$(this).siblings('label').addClass("jDnUiM") // 체크안되는 걸로 바꿈
				$(this).prop("checked", false)
				return;
			}
			// 체크를 하려면
			$(this).siblings('label').attr("class", "check-box__CheckBoxChecker-sc-1qo7hxm-1 dejnuF") // 체크되는 걸로바꿈
			$(this).prop("checked", true)
			alert($(this).siblings('input:hidden[name=itemnum]').val())
		})
		// 한 행씩 li지우기
		$(".basket-item__RemoveButton-sc-1bhrte-7").click(function(){
			$(this).parents("li").remove();
			
		})
		// 전체 삭제 누르면
		$(".header__DeleteButton-sc-1o98df4-8").click(function(){
			$(".basket__Wrap-atp5vu-0").remove();
			$(".cont_product.wishlist_detail").show();
			
		})
		
	})
	function allchkbox(allchk){
		if(!$("input:checkbox[name=allchk]").prop("checked")) { // true가 아니면 -> 체크를 없애면
			$(".check-box__CheckBoxChecker-sc-1qo7hxm-1").removeClass("dejnuF")
			$(".check-box__CheckBoxChecker-sc-1qo7hxm-1").addClass("jDnUiM") // -> 체크 표시 없애는 버튼으로 변경
			$("input[name=itemchks]").prop("checked", false) // 다시 false로 바꿔줌
			$("input[name=allchk]").prop("checked", false)
			return;
		}
		// 체크 안된 상태에서 누르면
		$(".check-box__CheckBoxChecker-sc-1qo7hxm-1").attr("class", "check-box__CheckBoxChecker-sc-1qo7hxm-1 dejnuF")
		$("input[name=itemchks]").prop("checked", true)
	}

	/* 	function oneselect(){ */
	

		

</script>
	<div id="mArticle">
		<div class="cont_product wishlist_detail">
			<div class="header_block">
				<strong class="title">찜</strong>
			</div>
			<p class="desc_nodata">찜한 상품이 존재하지 않습니다.</p>
		</div>
		<div class="basket__Wrap-atp5vu-0 fWUvvW">
			<div class="header__HeaderWrapper-sc-1o98df4-0 jbYkPZ">
				<div class="header__Title-sc-1o98df4-1 brYRBX"
					style="height: 150px;">찜</div>
				<div class="header__FilterBlock-sc-1o98df4-2 crsOxf">
					<div class="header__CheckAllWrap-sc-1o98df4-3 bxBtII">
						<input class="check-box__CheckBox-sc-1qo7hxm-0 izsgpp"
							type="checkbox" id="check-all-box" checked="" name="allchk" onchange="allchkbox(this)">
							<label class="check-box__CheckBoxChecker-sc-1qo7hxm-1 dejnuF"
							for="check-all-box"></label>
							
							<span class="header__Label-sc-1o98df4-4 gTQHQA">전체</span><span
							class="header__Label-sc-1o98df4-4 gTQHQA">&nbsp;</span><span
							class="header__TotalCount-sc-1o98df4-5 gDxQLB header__Label-sc-1o98df4-4 gTQHQA">1</span>
					</div>
					<div class="header__DeleteWrap-sc-1o98df4-6 lcYsvd">
						<span
							class="header__DeleteCountLabel-sc-1o98df4-7 hSptdO header__Label-sc-1o98df4-4 gTQHQA">1개
							선택</span>
						<button type="button"
							class="header__DeleteButton-sc-1o98df4-8 bnHBoH"></button>
					</div>
				</div>
			</div>
			<div class="sc-ifAKCX dklsCx content__Wrap-swv083-0 hqDoMI">
				<div class="basket-detail__Wrap-bl6f4a-0 ijMzAk">
					<ul class="basket-detail__HeaderList-bl6f4a-1 eZplGq">
						<li
							class="sc-bdVaJa dDDEDN basket-detail__ListItem-bl6f4a-2 hMFYYJ"
							style="width: 287px;">상품명</li>


						<li class="sc-bxivhb qvpR basket-detail__ListItem-bl6f4a-2 hMFYYJ"
							style="width: 207px;">상품금액</li>
					</ul>
					<ul>
						<li class="basket-item__Wrap-sc-1bhrte-0 evybcA">
						<input class="check-box__CheckBox-sc-1qo7hxm-0 izsgpp" type="checkbox"
							id="checkbox-12047162"  name="itemchks" checked="">
							<label class="check-box__CheckBoxChecker-sc-1qo7hxm-1 dejnuF"
							for="checkbox-12047162"></label>
							<input type="hidden" name="itemnum" value="1">
							<div class="basket-item__ImageWrap-sc-1bhrte-2 euYbXx">
								<a class="link_thumb basket-item__ImageLink-sc-1bhrte-1 guGymS"
									href="../item/product-detail.store"><span
									class="thumbnail__ThumbnailWrap-sc-1ev0rt3-0 bfspSz"
									itemtype="basket"><span
										class="img__Wrap-tev7mj-0 hmRzec"><img
											class="img__Image-tev7mj-1 elMFjf"
											src="https://t1.daumcdn.net/friends/prod/product/20191220154324590_8809681705073_8809681705073_AW_00.jpg?type=thumb&amp;opt=R255x255@2xa"
											alt="상품 이미지"></span></span></a>
							</div>
							<div class="basket-item__ItemInfoWrap-sc-1bhrte-3 fDGlIr">
								<div class="basket-item__Div-sc-1bhrte-4 gNIdPH">
									<div class="basket-item__ItemTitleArea-sc-1bhrte-5 BTcrB">
										<div class="basket-item__ItemTitle-sc-1bhrte-6 bnlBze">치즈
											에어팟케이스 라이언</div>
										<button class="basket-item__RemoveButton-sc-1bhrte-7 bHdxYH"></button>
									</div>
									<div class="basket-item__ItemPriceArea-sc-1bhrte-8 dVWwMq">
										<span>19,000</span>원
									</div>

								</div>
							</div>
							</li>
							<li class="basket-item__Wrap-sc-1bhrte-0 evybcA">
						<input class="check-box__CheckBox-sc-1qo7hxm-0 izsgpp" type="checkbox"
							id="checkbox-12047162"  name="itemchks" checked="">
							<label class="check-box__CheckBoxChecker-sc-1qo7hxm-1 dejnuF"
							for="checkbox-12047162"></label>
							<input type="hidden" name="itemnum" value="2">
							<div class="basket-item__ImageWrap-sc-1bhrte-2 euYbXx">
								<a class="link_thumb basket-item__ImageLink-sc-1bhrte-1 guGymS"
									href="../item/product-detail.store"><span
									class="thumbnail__ThumbnailWrap-sc-1ev0rt3-0 bfspSz"
									itemtype="basket"><span
										class="img__Wrap-tev7mj-0 hmRzec"><img
											class="img__Image-tev7mj-1 elMFjf"
											src="https://t1.daumcdn.net/friends/prod/product/20191220154324590_8809681705073_8809681705073_AW_00.jpg?type=thumb&amp;opt=R255x255@2xa"
											alt="상품 이미지"></span></span></a>
							</div>
							<div class="basket-item__ItemInfoWrap-sc-1bhrte-3 fDGlIr">
								<div class="basket-item__Div-sc-1bhrte-4 gNIdPH">
									<div class="basket-item__ItemTitleArea-sc-1bhrte-5 BTcrB">
										<div class="basket-item__ItemTitle-sc-1bhrte-6 bnlBze">치즈
											에어팟케이스 라이언2</div>
										<button class="basket-item__RemoveButton-sc-1bhrte-7 bHdxYH"></button>
									</div>
									<div class="basket-item__ItemPriceArea-sc-1bhrte-8 dVWwMq">
										<span>19,000</span>원
									</div>

								</div>
							</div>
							</li>
					</ul>

				</div>
			</div>
			
		</div>
	</div>
</body>
</html>