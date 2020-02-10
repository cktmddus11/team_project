<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]고객센터 관리-글 상세보기</title>
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
</head>
<body>
	<script>
	$(function(){
		var a = ${param.select eq 'notice'}
		if(a){
			$("#select2").hide()
		}
	})
</script>
	<div class="product-register">
		<span class="product_register_div1">[관리자]고객센터 <c:if
				test="${param.select eq 'faq'}">FAQ </c:if> <c:if
				test="${param.select eq 'notice'}">공지사항 </c:if>글 상세보기
		</span>
	</div>
	<%-- <form:form modelAttribute="item" action="item-write.store"
		enctype="multipart/form-data" name="f"> --%>
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
		<span class="p-name">항목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name" error="0" align="left" padding="15"
					name="itemname" value="기타" readonly>
			</div>
		</div>
	</div>
	<div class="product-name">
		<span class="p-name">제목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name" error="0" align="left" padding="15"
					name="itemname" readonly value="카카오톡에서 캐시 삭제는 어떻게 하나요?">
			</div>
		</div>
	</div>

	<div class="product-name" id="faq-content">
		<span class="p-name">내용</span>
		<div class="input-name">
			<div class="input-text-name">
				<textarea class="detail-content" readonly>
카카오톡 더보기에서 캐시 삭제가 필요한 경우, 아래와 같이
실행해주세요.
1. 카카오톡 더보기에서 오른쪽 상단의 '설정' 아이콘 클릭
2. 설정 화면에서 '기타' 클릭 
3. 저장공간 관리 - '저장된 캐시 데이터 삭제' 클릭 *캐시 삭제 시,
카톡 대화 내용이 삭제되는 경우가 있으니 유의하시기 바랍니다.
				</textarea>
			</div>
		</div>
	</div>
	<div class="product-name">
		<span class="p-name">첨부파일</span>
		<div class="input-name">
			<a class="i-t-name" href="#" download>apple.jpg</a>
		</div>
	</div>
	<div class="product-button">
		<button class="c-button b" type="button"
			onclick="javascript:history.back(-1)">이전으로 돌아가기</button>
		<c:if test="${param.select eq 'notice'}">
			<button class="p-button b" type="button"
				onclick="location.href='help_update.store?select=notice'">수정하기</button>
			<button class="p-button b" type="button"
				onclick="location.href='help_delete.store?select=notice'">삭제하기</button>
		</c:if>
		<c:if test="${param.select eq 'faq'}">
			<button class="p-button b" type="button"
				onclick="location.href='help_update.store?select=faq'">수정하기</button>
			<button class="p-button b" type="button"
				onclick="location.href='help_delete.store?select=faq'">삭제하기</button>
		</c:if>

	</div>
	<%-- </form:form> --%>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]고객센터 관리-글 상세보기</title>
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
</head>
<body>
	<script>
	$(function(){
		var a = ${help.boardcode ==1}
		if(a){
			$("#select2").hide()
		}
	})
</script>
	<div class="product-register">
		<span class="product_register_div1">[관리자]고객센터 <c:if
				test="${help.boardcode==2}">FAQ </c:if> <c:if
				test="${help.boardcode==1}">공지사항 </c:if>글 상세보기
		</span>
	</div>
	<%-- <form:form modelAttribute="item" action="item-write.store"
		enctype="multipart/form-data" name="f"> --%>
	<div class="product-name">
		<span class="p-name">작성항목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name"
					value="${help.boardcode==1?'공지사항':'FAQ'}" readonly error="0"
					align="left" padding="15" name="itemname">
			</div>
		</div>
	</div>
	<div class="product-name" id="select2">
		<span class="p-name">항목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name" error="0" align="left" padding="15"
					name="itemname" value="<c:if test="${help.filter eq '0'}">전체</c:if><c:if test="${help.filter eq '1'}">배송</c:if><c:if test="${help.filter eq '2'}">교환/반품/환불</c:if><c:if test="${help.filter eq '3'}">기타</c:if><c:if test="${help.filter eq '4'}">상품</c:if><c:if test="${help.filter eq '5'}">주문결제</c:if>" readonly>
			</div>
		</div>
	</div>
	<div class="product-name">
		<span class="p-name">제목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name" error="0" align="left" padding="15"
					name="itemname" readonly value="${help.q_subject}">
			</div>
		</div>
	</div>

	<div class="product-name" id="faq-content">
		<span class="p-name">내용</span>
		<div class="input-name">
			<div class="input-text-name">
				<div class="detail-content" style="height : 100%;"> 
					${help.q_content}
				</div>
			</div>
		</div>
	</div>
	<div class="product-name">
		<span class="p-name">첨부파일</span>
		<div class="input-name">
			<c:if test="${!empty help.qnafileurl}">
				<a class="i-t-name" href="../help/img/${help.qnafileurl}">${help.qnafileurl}</a>
			</c:if>
			<c:if test="${empty help.qnafileurl}">
				<input class="i-t-name" error="0" align="left" padding="15"
				 readonly value="첨부파일 없음">
			</c:if>
		</div>
	</div>
	<div class="product-button">
		<button class="c-button b" type="button"
			onclick="javascript:history.back(-1)">이전으로 돌아가기</button>
		<c:if test="${help.boardcode==1}">
			<button class="p-button b" type="button"
				onclick="location.href='help_update.store?select=notice&no=${help.qnano}'">수정하기</button>
			<button class="p-button b" type="button"
				onclick="location.href='help_delete.store?select=notice&no=${help.qnano}'">삭제하기</button>
		</c:if>
		<c:if test="${help.boardcode==2}">
			<button class="p-button b" type="button"
				onclick="location.href='help_update.store?select=faq&no=${help.qnano}'">수정하기</button>
			<button class="p-button b" type="button"
				onclick="location.href='help_delete.store?select=faq&no=${help.qnano}'">삭제하기</button>
		</c:if>

	</div>
	<%-- </form:form> --%>
</body>
>>>>>>> branch 'master' of https://github.com/cktmddus11/team_project.git
</html>