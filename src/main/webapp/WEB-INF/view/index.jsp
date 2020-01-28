<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오프렌즈샵</title>

<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="row">
   <div class="col-lg-4 col-sm-6 portfolio-item" style="cursor: pointer;" onclick="location.href='#'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" 
             src="images/home_20200115141636_kr.jpg"
              alt=""></a>
          <div class="card-body">
            <h4 class="card-title" style="font-weight: bold;">
                 전국의 모든 쥐띠들, <br> 올해는 치즈프렌즈인 거 RG?
            </h4>
               경자년을 맞이해 준비한 찍찍, 치즈프렌즈. 쥐띠맘, 쥐띠베이비, 쥐띠어른이들 모두모두 치즈프렌즈 구매 RG?!
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" style="cursor: pointer;" onclick="location.href='#'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" 
             src="https://t1.kakaocdn.net/friends/prod/main_tab/home/home_20191014160945_kr.jpg?type=thumb&opt=R329x247@2xa" alt=""></a>
          <div class="card-body">
            <h4 class="card-title" style="font-weight: bold;">
              [온라인 단독 세트] 어서와, 2020년은 처음이지? 
            </h4>
               누구보다 빠르게 남들과는 다르게 2020년을 준비하고 싶다면? 오직 온라인에서만 만날 수 있는 다이어리와 미니 캘린더 세트가 정답!
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" style="cursor: pointer;" onclick="location.href='#'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" 
             src="https://t1.kakaocdn.net/friends/prod/main_tab/home/home_20191202100749_kr.jpg?type=thumb&opt=R329x247@2xa" alt=""></a>
          <div class="card-body">
            <h4 class="card-title" style="font-weight: bold;">
              [온라인 전용] 존재감 뿜뿜 <br>귀여움도 사이즈도 자이언트
            </h4>
         역대급 존재감 뿜뿜- 귀여움도 사이즈도 자이언트한 우리 이언이 데려갈 준비 되었나요? 
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" style="cursor: pointer;" onclick="location.href='#'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" 
             src="https://t1.kakaocdn.net/friends/prod/main_tab/home/home_20191211195104_kr.jpg?type=thumb&opt=R335x187@2xa" alt=""></a>
          <div class="card-body">
            <h4 class="card-title" style="font-weight: bold;">
                 완벽한 홈파티를 위한 준비
            </h4>
               입에서 불이 나는 화끈 라면과, 레스토랑 필요없는 봉골 라면까지! 홈파티에 필요한 모든 것이 여기있어요. 
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" style="cursor: pointer;" onclick="location.href='#'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" 
             src="https://t1.kakaocdn.net/friends/prod/main_tab/home/home_20191204114115_kr.jpg?type=thumb&opt=R335x187@2xa" alt=""></a>
          <div class="card-body">
            <h4 class="card-title" style="font-weight: bold;">
                 보들보들 포근포근 <br>
                  폼폼프렌즈의 겨울이야기
            </h4>
               리틀프렌즈가 보들보들한 곰돌이, 토끼, 펭귄 코스튬을 입었어요. 품에 쏘옥 안고싶은 폼폼프렌즈랍니다.
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" style="cursor: pointer;" onclick="location.href='#'">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" 
             src="https://t1.kakaocdn.net/friends/prod/main_tab/home/home_20190927121402_kr.jpg?type=thumb&opt=R329x247@2xa" 
             alt=""></a>
          <div class="card-body">
            <h4 class="card-title" style="font-weight: bold;">
                 우리 붕붕이, 좋은거 다해
            </h4>
                  깔끔한 청소는 기본, 귀여움에 향긋함 그리고 편리함까지, 우리 붕붕이한테는 좋은 거 다 해줘야죠? 
          </div>
        </div>
      </div>
    </div>
    	<script>
	function nonmember(){
		$(".dimmed_layer").show()
	}
	</script>
	<div class="dimmed_layer" style="height: 3140px; display: block;">
	<div class="friends_layer order_layer" style="display: block; top: 300px;">
  <div class="inner_layer">
    <div class="layer_head">
      <strong class="tit_order">비회원 주문조회</strong>
    </div>
    <div class="layer_body">
      <form id="nonmemberOrderFrm" method="post">
        <input type="hidden" name="_csrf" value="4d0ee8fd-7a7e-4965-a362-e36b383ee552">
        <input type="hidden" name="_csrf_header" value="X-CSRF-TOKEN">
        <input type="hidden" id="nonMemberName" name="nonMemberName" value="">
        <fieldset>
          <legend class="screen_out">비회원 주문조회 양식</legend>
          <div class="wrap_order">
            <dl class="list_order">
              <dt>
                <label class="lab_order" for="orderNum">주문번호 :</label>
              </dt>
              <dd>
                <input type="text" id="orderNum" name="orderNum" class="inp_order" value="" onkeyup="this.value = this.value.toUpperCase();">
              </dd>
              <dt>
                <label class="lab_order" for="orderName">이름<!-- 디자인상 국문은 필드명 '주문자명'이 되어야 함 --> :</label>
              </dt>
              <dd>
                <input type="text" id="orderName" name="orderName" class="inp_order" value="">
              </dd>
              <!-- 이메일 입력필드 추가 -->
              <dt>
                <label class="lab_order" for="orderMail">이메일 :</label>
              </dt>
              <dd>
                <input type="text" id="orderMail" name="orderMail" class="inp_order" value="">
              </dd>
              <!-- // 이메일 입력필드 추가 -->
            </dl>
            <p class="desc_error" style="display:none"></p> <!-- display:none 주문번호나 이름 입력값 없을 경우 style="display:block" -->
          </div>
          <button type="button" class="btn_check btn_confirm">주문확인</button>
          <button type="button" class="btn_check btn_cancel">취소</button>
        </fieldset>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript">

  $(function() {
 $(".dimmed_layer").hide()  
	  
    $(".order_layer").show();
    //popupCenter();
    $("#kakaoIndex, #kakaoWrap").attr("aria-hidden","true");
    $("#kakaoIndex a, #kakaoWrap a, #kakaoIndex button, #kakaoWrap button").attr("tabindex","-1");
    $(".order_layer").attr("tabindex","0").focus();
    $(".order_layer").removeAttr("tabindex");
    $(".order_layer .btn_cancel").on("click",function(){
      $("#kakaoIndex, #kakaoWrap").removeAttr("aria-hidden");
      $("#kakaoIndex a, #kakaoWrap a, #kakaoIndex button, #kakaoWrap button").removeAttr("tabindex");
      $("body").attr("tabindex","0").focus();
      $("body").removeAttr("tabindex");
      $(".order_layer").hide();
      $(".dimmed_layer").hide();

      // navi(햄버거)는 lock_on을 사용하지 않아서 따로 리셋해줌
      const top = document.body.style.top;
      document.body.style.position = '';
      document.body.style.top = '';
      document.body.style.WebkitOverflowScrolling = '';
      document.body.style.width = '';
      window.scrollTo(0, parseInt(top || '0') * -1);
    });

    $(".order_layer .btn_confirm").on("click",function(){
	
      var od_num = $.trim($("#orderNum").val());
      var od_name = $.trim($("#orderName").val());
      var od_mail = $.trim($("#orderMail").val());
      var pattern = /[\s]/g;
      if(od_num.length == 0) {

        $(".desc_error").html("&ldquo; 주문번호를 입력해 주세요  &rdquo;");
        $(".desc_error").css("display", "block");
        return false;
      }

      if (od_name.length == 0) {
        $(".desc_error").html("&ldquo; 이름을 입력해 주세요 &rdquo;");
        $(".desc_error").css("display", "block");
        return false;
      }

      if (od_mail.length == 0) {
            $(".desc_error").html("&ldquo; 이메일을 입력해 주세요 &rdquo;");
            $(".desc_error").css("display", "block");
            return false;
      }

      if (pattern.test(od_num) == true){
        $(".desc_error").html("&ldquo; 주문번호에 공백이 있습니다. 공백없이 입력해 주세요 &rdquo;");
        $(".desc_error").css("display", "block");
        return false;
      }
      if (!fn_orderCheck()) {
        $(".desc_error").html("&ldquo; 해당 주문내역이 없습니다 &rdquo;");
        $(".desc_error").css("display", "block");
        return false;
      }

     /*  var url = "/"+"kr"+"/order/shippingNonmember";
      $("#nonmemberOrderFrm").attr("action", url);
      $("#nonMemberName").val(encodeURIComponent(od_name));
      $("#orderNum").val(od_num);
        $("#orderMail").val(od_mail);
      $("#nonmemberOrderFrm").submit(); */
    });
  }); 

   function fn_orderCheck(){

   /*  var orderChk = false;
    var url = "/"+"kr"+"/order/shippingNnonmember/orderCheck";

    $.ajax({
      headers: {'X-CSRF-TOKEN': '4d0ee8fd-7a7e-4965-a362-e36b383ee552'},
      url: url,
      type: "POST",
      dataType: "json",
      data: {orderNum:$.trim($("#nonmemberOrderFrm #orderNum").val()), orderName:$.trim($("#nonmemberOrderFrm #orderName").val()), orderMail:$.trim($("#nonmemberOrderFrm #orderMail").val())},
      async:false,
      error: function () {
        alert('처리중 에러가 발생하였습니다.');
        return false;
      },
      success: function (data) {
        orderChk = data;
      }
    });
 */
    return orderChk;

  } 

</script></div>
</body>
</html>