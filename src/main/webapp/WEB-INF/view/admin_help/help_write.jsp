<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]고객센터 관리-작성</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<style type="text/css">
.table {
	display: table;
}

.tr {
	display: table-row;
}

.th, .td {
	display: table-cell;
}

.th {
	font-weight: bold;
	text-align: center;
}
/* 김정은 20.01.14 */
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
</style>
<script>
$(function(){
	var a = ${param.select eq 'notice'}
	if(a){
		$("#select2").hide()
		$("#faq-content").hide()
	}else{
		$("#faq-content").show()
		$("#notice-content").hide()
	}
})
</script>
</head>
<body>
	<div class="product-register">
		<span class="product_register_div1">[관리자]고객센터 <c:if test="${param.select eq 'faq'}">FAQ </c:if>
	<c:if test="${param.select eq 'notice'}">공지사항 </c:if>글작성</span>
	</div>
	<div class="product-name">
		<span class="p-name">작성항목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name"
					value="${param.select eq 'notice'?'공지사항':'FAQ'}" readonly error="0"
					align="left" padding="15" name="itemname">
			</div>
		</div>
	</div>
	<div class="product-name" id="select2">
		<span class="p-name">항목선택</span>
		<div class="input-name">
			<form name="search">
				<select class="select-box" style='color: #555;padding-left: 10px;' name="category2"
					onchange="">
					<option value="1">전체</option>
					<option value="2">배송</option>
					<option value="3">교환/반품/환불</option>
					<option value="4">기타</option>
					<option value="5">상품</option>
					<option value="6">주문결제</option>
				</select>
			</form>
		</div>
	</div>
	<%-- <form:form modelAttribute="item" action="item-write.store"
		enctype="multipart/form-data" name="f"> --%>
	<input type="hidden" name="categoryone" value="">
	<input type="hidden" name="categorytwo" value="">
	<div class="product-name">
		<span class="p-name">제목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name" placeholder="제목을 입력하세요" error="0"
					align="left" padding="15" name="itemname" value="">
			</div>
		</div>
	</div>
	<div class="product-name">
		<span class="p-name">비밀번호</span>
		<div class="input-name">
			<div class="input-text-name">
				<input type="password" class="i-t-name" placeholder="비밀번호" error="0"
					align="left" padding="15" name="pass" value="">
			</div>
		</div>
	</div>
	<div class="product-name">
		<span class="p-name"  id="my_ll_b">상품사진</span>
			<div class="input-name">
				<input type="file" class="i-t-name" id="my_ll_b"
				placeholder="사진을 첨부하세요" name="file1" value="">
			</div>
	</div>
	<div class="product-name" id="faq-content">
		<span class="p-name">내용</span>
		<div class="input-name">
			<div class="input-text-name">
				<textarea class="detail-content" placeholder="내용" height="177"
					name="content1"></textarea>
			</div>
		</div>
	</div>
	<div class="product-name" id="notice-content">
		<span class="p-name">내용</span>
		<div class="input-name">
			<div class="input-text-name">
				<textarea id="content" rows="15" cols="80" name="content2">
					<%-- <form:textarea path="content" rows="15" cols="80" /> --%>
					</textarea>
				<script>
					CKEDITOR.replace("content", {
						filebrowserImageUploadUrl : "imgupload.store"
					});
				</script>
			</div>
		</div>
	</div>

	<div class="product-button">
			<button class="c-button b" type="button"
			onclick="javascript:history.back(-1)">이전으로 돌아가기</button>
				<c:if test="${param.select eq 'notice'}">
		<button class="p-button b" type="button"
			onclick="location.href='notice_list.store'">등록하기</button>
			</c:if>
				<c:if test="${param.select eq 'faq'}">
				<button class="p-button b" type="button"
			onclick="location.href='faq_list.store'">등록하기</button>
				</c:if>
	</div>
	<%-- </form:form> --%>
</body>
</html>