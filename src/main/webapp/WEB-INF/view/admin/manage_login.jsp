<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
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
</style>
</head>
<body>
	<div class="product-register">
		<span id="my_b_b">[관리자] 로그인</span>
	</div>
	<div class="store_write_body">
		<div class="store_write_edit">
			<div class="store_write_input">
				<div class="input_img" style="text-align: center;">
					<div>
						<img src="../images/de949ff9b7fa2bbe3201629de359c597.gif"
							width="300" height="300">
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">아이디</span>
				<div class="input-name">
					<div class="input-text-name">
						<input class="i-t-name" id="my_ll_b" placeholder="아이디 입력"
							error="0" align="left" padding="15" name="m_name" value="">
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">비밀번호</span>
				<div class="input-name">
					<div class="input-text-name">
						<input type="password" class="i-t-name" id="my_ll_b"
							placeholder="비밀번호 입력" error="0" align="left" padding="15"
							name="pass" value="">
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="product-button">
		<button id="my_bb_b" class="c-button b" type="button"
			onclick="location.href='../admin/manager_write.store'">회원가입</button>
		<button id="my_bb_w" class="p-button b" type="button"
			onclick="location.href='../admin/product-list.store'">로그인하기</button>
	</div>
</body>
</html>