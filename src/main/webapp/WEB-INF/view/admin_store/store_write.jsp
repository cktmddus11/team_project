<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[관리자]매장 안내 등록</title>
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
<form:form modelAttribute="storeinfo" action="store_write.store" name="f"
 enctype="multipart/form-data" method="post">
	<div class="store_write_header" id="my_b_b">[관리자] 매장 안내 등록</div>
	<div class="store_write_body">
		<div class="store_write_edit">
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">매장 이름</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input class="storename" name="storename" id="my_ll_b" placeholder="매장 이름을 입력하세요" >
						 <font color="red"><form:errors path="storename" /></font>
						
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">매장 사진</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="file" class="storename" id="my_ll_b"
						placeholder="사진을 첨부하세요" name="picfile">
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">전화 번호</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename" id="my_ll_b"
						placeholder="전화 번호를 입력하세요" name="storetel">
						<font color="red"><form:errors path="storetel" /></font>
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">영업 시간</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename" id="my_ll_b"
						placeholder="영업시간을 입력하세요" name="storetime">
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">매장 주소</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename" id="my_ll_b"
						placeholder="매장 주소를 입력하세요" name="storeadd">
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">구글 지도 URL</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<textarea class="storename" id="my_ll_b"
						placeholder="구글 지도 URL를 입력하세요" name="mapurl"></textarea>
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">구글 지도 iframe</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<textarea class="storename" id="my_ll_b" name="mapiframe"
						placeholder="구글 지도에서 공유로 지도퍼가기를 하여 HTML을 복사해서 입력하세요"></textarea>
				</div>
			</div> 
		</div>
	</div>
	<div class="store_write_footer">
	<div class="btn_block">
	<button class="btn_cancel" id="my_bb_b" onclick="javascript:history.back()">취소</button>
	<input type="submit" class="btn_save" id="my_bb_b" value="등록">
	</div>
	</div>
	</form:form>
</body>
</html>