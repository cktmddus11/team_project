<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]고객센터 관리 - 삭제</title>
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

.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}
</style>
</head>
<body>
	<div class="store_write_header" id="my_b_b">[관리자]고객센터 관리 - <c:if test="${param.select eq 'faq'}">FAQ </c:if>
	<c:if test="${param.select eq 'notice'}">공지사항 </c:if>삭제</div>
	<div class="store_write_body">
		<div class="store_write_edit">
			<div class="store_write_input">
				<div class="input_img" style="text-align: center;">
				<div>
					<img src="../images/product/jj1XC.gif" width="300" height="300">
				</div>
				<div>
					<span id="my_bb_b">삭제 하시겠습니까?</span>
				</div>
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">비밀번호</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="password" class="storename" id="my_ll_b"
						placeholder="비밀번호를 입력해주세요" name="pass" value="">
				</div>
			</div>
		</div>
	</div>
	<div class="store_write_footer">
		<div class="btn_block">
			<button class="btn_cancel" id="my_bb_b"
				onclick="javascript:history.back()">취소</button>
				<c:if test="${param.select eq 'notice'}">
			<button class="btn_save" id="my_bb_w"
				onclick="location.href='./notice_list.store'">삭제</button>
				</c:if>
				 <c:if test="${param.select eq 'faq'}">
				 <button class="btn_save" id="my_bb_w"
				onclick="location.href='./faq_list.store'">삭제</button>
				</c:if>
		</div>
	</div>
</body>
</html>