<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오프렌즈 - 찜 리스트</title>
<!-- <link rel="stylesheet" type="text/css" href="../css/idx_cyj.css"> -->
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
<script type="text/javascript">
$(document).ready(function() {
	$("input:checkbox").on('click', function() {
		if (!$(this).prop('checked')) {
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
<script type="text/javascript">
/*    function allchkbox(obj) {
      $("[name=itemchks]").prop("checked", false);
      
   } */
/* 
   function oneCheckFunc(obj) {
      var allObj = $("[name=allchk]");
      var objName = $(obj).attr("name");

      if ($(obj).prop("checked")) {
         checkBoxLength = $("[name=" + objName + "]").length;
         checkedLength = $("[name=" + objName + "]:checked").length;

         if (checkBoxLength == checkedLength) {
            allObj.prop("checked", true);
         } else {
            allObj.prop("checked", false);
         }
      } else {
         allObj.prop("checked", false);
      }
   }

   $(function() {
      $("[name=allchk]").click(function() {
    	  allchkbox(this);
      });
      $("[name=itemchks]").each(function() {
         $(this).click(function() {
            oneCheckFunc($(this));
         });
      });
   }); */
</script>
	<div id="mArticle">
		<!-- <div class="cont_product wishlist_detail">
			<div class="header_block">
				<strong class="title">찜</strong>
			</div>
			<p class="desc_nodata">찜한 상품이 존재하지 않습니다.</p>
		</div> -->
		<div class="basket__Wrap-atp5vu-0 fWUvvW">
			<div class="header__HeaderWrapper-sc-1o98df4-0 jbYkPZ">
				<div class="header__Title-sc-1o98df4-1 brYRBX"
					style="height: 150px;">찜</div>
				
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
						<li class="basket-item__Wrap-sc-1bhrte-0 evybcA"><div class="wish_check wish_btn"><input
							class="check-box__CheckBox-sc-1qo7hxm-0 izsgpp" type="checkbox"
							id="checkbox1" name="itemchks"> 
							<label class="check-box__CheckBoxChecker-sc-1qo7hxm-1 dejnuF"
							for="checkbox1"></label> <input type="hidden" name="itemnum"
							value="1"></div>
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
										
									</div>
									<div class="basket-item__ItemPriceArea-sc-1bhrte-8 dVWwMq">
										<span>19,000</span>원
									</div>

								</div>
							</div></li>
						<li class="basket-item__Wrap-sc-1bhrte-0 evybcA"><div class="wish_check wish_btn"><input
							class="check-box__CheckBox-sc-1qo7hxm-0 izsgpp" type="checkbox"
							id="checkbox2" name="itemchks"> <label
							class="check-box__CheckBoxChecker-sc-1qo7hxm-1 dejnuF"
							for="checkbox2"></label> </div><input type="hidden" name="itemnum"
							value="2">
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
										
									</div>
									<div class="basket-item__ItemPriceArea-sc-1bhrte-8 dVWwMq">
										<span>19,000</span>원
									</div>

								</div>
							</div></li>
					</ul>

				</div>
			</div>

		</div>
	</div>
</body>
</html>