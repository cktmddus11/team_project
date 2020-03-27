<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장 안내</title>
<style type="text/css">
#boldfont_black {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	width: 100%;
	font-size: 36px;
}

#lightfont_black {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 300;
	color: black;
	width: 100%;
	font-size: 15px;
}

div.left {
	width: 50%;
	float: left;
	box-sizing: border-box;
}

div.right {
	width: 45%;
	margin-top: 4%;
	height: 210px;
	float: right;
	box-sizing: border-box;
}

a.noul:hover {
	text-decoration: none;
}

a.noul {
	text-decoration: underline;
}

#my-iframe {
	margin: 0 auto;
}

#my-iframe {
	display: block;
	border: none;
	height: 100%;
	width: 100%;
}
</style>
</head>
<body>
	<c:forEach var="store" items="${storelist }" end="2">
		<div class="row">

			<!-- Blog Entries Column -->
			<div class="col-md-12">
				<div class="card mb-4" style="width: 100%">
					<img class="card-img-top"
						src="${path }/images/storeinfo_store/${store.storepic}"
						alt="Card image cap">
					<div class="card-body" style="width: 100%;">
						<div class="left">
							<br>
							<h2 class="card-title" id="boldfont_black">${store.storename }</h2>
							<br>
							<h3 class="card-text" id="lightfont_black"
								style="margin-bottom: 16px;">
								<img src="${path }/images/icons/ico_phone.png"
									style="height: 27px; width: 27px;">&nbsp;
								${store.storetel}
							</h3>
							<h3 class="card-text" id="lightfont_black"
								style="margin-bottom: 16px;">
								<img src="${path }/images/icons/ico_time.png"
									style="height: 27px; width: 27px;">&nbsp;
								${store.storetime}
							</h3>
							<h3 class="card-text" id="lightfont_black"
								style="margin-bottom: 16px;">
								<img src="${path }/images/icons/ico_map.png"
									style="height: 27px; width: 27px;">&nbsp;
								${store.storeadd}
							</h3>
						</div>
						<div class="right">
							<c:set var="url" value="${fn:split(store.mapiframe,'\"')[1]}" />
							<iframe src="${url}" width="495" height="210" style="border: 0;"></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>

	<div class="row">

		<!-- Blog Entries Column -->
		<div class="col-md-12">
			<div style="margin-top: 20%;">
				<button id="boldfont_black" name="btn"
					style="font-size: 20px; width: 10%;">전체</button>
			</div>
			<hr>
			<!--  -->
			<!--  -->
			<!--  -->
			<div class="container" style="">
				<div class="row">
					<c:forEach var="store" items="${storelist }" begin="3">
						<div class="col-lg-4 col-sm-6 portfolio-item"
							style="padding-bottom: 1.5%;">
							<div class="card h-100">
								<a href="#"><img class="card-img-top"
									src="${path }/images/storeinfo_store/${store.storepic}" alt=""></a>
								<div class="card-body">
									<h4 class="card-title" id="boldfont_black"
										style="font-size: 22px;">${store.storename }</h4>
									<p class="card-text" id="lightfont_black"
										style="margin-bottom: 8px; font-size: 14px;">
										<img src="${path }/images/icons/ico_phone.png"
											style="height: 20px; width: 20px;">&nbsp;
										${store.storetel}
									</p>
									<p class="card-text" id="lightfont_black"
										style="margin-bottom: 8px; font-size: 14px;">
										<img src="${path }/images/icons/ico_time.png"
											style="height: 20px; width: 20px;">&nbsp;
										${store.storetime}
									</p>
									<p class="card-text" id="lightfont_black"
										style="margin-bottom: 8px; font-size: 14px;">
										<img src="${path }/images/icons/ico_map.png"
											style="height: 20px; width: 20px;">&nbsp;
										${store.storeadd}
									</p>
									<p class="card-text" id="lightfont_black"
										style="margin-bottom: 8px; font-size: 14px;">
										<a class="noul" href="${store.mapurl }"> 지도 자세히보기 </a>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>