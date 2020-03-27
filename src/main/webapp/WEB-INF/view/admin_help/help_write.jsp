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

.my_ll_r {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: red;
	font-size: 15px;
}
</style>
<script>
$(function(){
	var a = ${help.boardcode ==1}
	if(a){
		$("#select2").hide()
		//$("#faq-content").hide()
	}else{
	//	$("#faq-content").show()
	//	$("#notice-content").hide()
	}
})
</script>
</head>
<body>
	<div class="product-register">
		<span class="product_register_div1" id="my_b_b">[관리자]고객센터 <c:if
				test="${help.boardcode == 2}">FAQ </c:if> <c:if
				test="${help.boardcode == 1}">공지사항 </c:if>글작성
		</span>
	</div>
	<div class="product-name">
		<span class="p-name" id="my_ll_b">작성항목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name" id="my_ll_b"
					value="${help.boardcode == 1?'공지사항':'FAQ'}" readonly error="0"
					align="left" padding="15" name="itemname">
			</div>
		</div>
	</div>
	<script>
		function selectvalue(){
			$("input[name=filter]").val($("select[name=selectvalue]").val())
		}
	</script>
	<div class="product-name" id="select2">
		<span class="p-name" id="my_ll_b">항목선택</span>
		<div class="input-name">
			<select class="select-box" style='color: #555; padding-left: 10px;'
				name="selectvalue" id="my_ll_b" onchange="selectvalue()">
				<option value="0">전체</option>
				<option value="1">배송</option>
				<option value="2">교환/반품/환불</option>
				<option value="3">기타</option>
				<option value="4">상품</option>
				<option value="5">주문결제</option>
			</select>
		</div>
	</div>

	<form:form modelAttribute="help" action="help_write.store"
		enctype="multipart/form-data" name="f">
		<input type="hidden" name="filter" value="${help.filter}">
		<input type="hidden" name="qnano" value="${help.qnano}">
		<input type="hidden" name="boardcode" value="${help.boardcode}">
		<div class="product-name">
			<span class="p-name" id="my_ll_b">제목</span>
			<div class="input-name">
				<div class="input-text-name">
					<form:input path="q_subject" class="i-t-name" placeholder="제목"
						id="my_ll_b" />
					<font color="red"><form:errors path="q_subject" /></font>
				</div>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">비밀번호</span>
			<div class="input-name">
				<div class="input-text-name">
					<input type="password" class="i-t-name" placeholder="비밀번호"
						error="0" align="left" padding="15" name="password" value=""
						id="my_ll_b"> <font color="red"><form:errors
							path="password" /></font>
					<spring:hasBindErrors name="help">
						<font color="red"> <c:forEach
								items="${errors.globalErrors}" var="error">
								<spring:message code="${error.code}" />
							</c:forEach>
						</font>
					</spring:hasBindErrors>
				</div>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">첨부파일</span>
			<div class="input_storename">
				<c:if test="${!empty help.qnafileurl}">
					<div id="file_desc">
						<a href="images/${help.qnafileurl}">${help.qnafileurl}</a> <a
							href="javascript:file_delete()">[첨부파일 삭제]</a>
					</div>
				</c:if>
				<form:hidden path="qnafileurl" />
				<input type="file" class="storename" name="qnafile1" id="my_ll_b">
			</div>
		</div>

		<div class="product-name" id="notice-content">
			<span class="p-name" id="my_ll_b">내용</span>
			<div class="input-name">
				<div class="input-text-name">
					<form:textarea path="q_content" rows="15" cols="80" />

					<script>
					CKEDITOR.replace("q_content", {
						filebrowserImageUploadUrl : "imgupload.store"
					});
				</script>
					<font color="red"><form:errors path="q_content" /></font>

				</div>
			</div>
		</div>


		<div class="product-button">
			<button class="c-button b" type="button"
				onclick="javascript:history.back(-1)">이전으로 돌아가기</button>
			<button class="p-button b" type="button"
				onclick="javascript:document.f.submit()">등록하기</button>
		</div>
	</form:form>
</body>
</html>