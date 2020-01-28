<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 정보 확인</title>
<style type="text/css">
input[type=text1] {
	width: 100%;
	box-sizing: border-box;
	border: 1px solid gold;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	padding: 5px 5px 5px 5px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}

textarea {
	width: 100%;
	box-sizing: border-box;
	border: 1px solid gold;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	padding: 5px 5px 5px 5px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}

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

#my_bb_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: white;
	font-size: 25px;
}

.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}

@media ( min-width : 769px) {
	.aaa {
		padding: 0px;
		border-bottom: none;
	}
}

.aaa {
	flex: 1 1 0%;
}

@media ( min-width : 769px) {
	.bbb {
		padding: 0px 50px;
	}
}

.bbb {
	flex: 1 1 0%
}

@media ( min-width : 769px) {
	.ccc {
		margin-bottom: 14px;
	}
}

.ccc {
	display: flex;
}

.ccc-1 {
	width: 150px;
	height: 16px;
	font-size: 20px;
	letter-spacing: -0.19px;
	margin-top: 14px;
}

.ccc-2 {
	flex: 1 1 0%;
}

@media ( min-width : 769px) {
	.ddd {
		margin-bottom: 14px;
	}
}

.ddd {
	display: flex;
}

.eee {
	width: 100px;
	height: 16px;
	font-size: 13px;
	letter-spacing: -0.19px;
	margin-top: 14px;
}

.fff {
	display: flex;
	padding-top: 30px;
}

.ggg {
	flex: 1 1 0%;
}

.hhh {
	position: relative;
	display: block;
	width: 100%;
	margin-bottom: 8px;
	line-height: 35px;
}

.iii {
	position: relative;
	font-size: 16px;
	-webkit-appearance: none;
	width: calc(100% - 32px);
	text-align: left;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(227, 229, 232);
	border-image: initial;
	outline: none;
	padding: 10px 15px;
	background: none;
	border-radius: 4px !important;
}
</style>
</head>
<body>
	<div class="product-register">
		<span id="my_b_b">[관리자] 정보 수정</span>
	</div>
	<div class="fff">
		<div class="aaa">
			<div class="ccc">
				<span class="ccc-1">프로필 사진</span>
				<div class="ccc-2">
					<img src="../images/product/category_rion_off.png"
						style="padding-top: 1vw; width : 10vw; height : 10vw;" alt="프로필">
				</div>
			</div>
		</div>

		<div class="bbb">
			<div class="ddd">
				<span class="ccc-1">아이디</span>
				<div class="ggg">
					<div class="hhh" style="padding-top : 0.5vw;">
						<span id="my_ll_b">hyp3221</span>
					</div>
				</div>
			</div>
			<div class="ddd">
				<span class="ccc-1">이름</span>
				<div class="ggg">
					<div class="hhh" style="padding-top : 0.5vw;">
						<span id="my_ll_b">박하영</span>
					</div>
				</div>
			</div>
			<div class="ddd">
				<span class="ccc-1">성별</span>
				<div class="ggg">
					<div class="hhh" style="padding-top : 0.5vw;">
						<span id="my_ll_b">여</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="product-button">
		<button id="my_bb_b" class="c-button b" type="button"
			onclick="location.href='../admin/product-list.store'">취소</button>
		<button id="my_bb_w" class="p-button b" type="button"
			onclick="location.href='../admin/product-list.store'">수정</button>
	</div>

</body>
</html>