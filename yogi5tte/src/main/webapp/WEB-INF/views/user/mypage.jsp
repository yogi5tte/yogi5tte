<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/mypage/mypage.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/mypage/mypage.js"></script> 

</head>
<c:if test="${empty header.referer }">
	<script>
		alert('정상적인 접근이 아닙니다')
		location.href = '${cpath}'
	</script>
</c:if>
<body class="pc">

    <div class="wrap">

    <!-- Sub Top -->
    <div class="sub_top_wrap">
        <div class="sub_top bg_kong_2">
            <h2>내정보</h2>
        </div>
    </div>
    <!-- //Sub Top -->
    
    <!-- Content  -->
    <div id="content" class="sub_wrap my_wrap">
        <p class="sub_title">내 정보 관리</p>
    
        <!-- Nav -->
            <nav>
            <ul>
                <li><a class="" href="${cpath }/user/my_reservation">예약 내역</a></li>
                <li><a class="active" href="${cpath }/user">내 정보 관리</a></li>
            </ul>
        </nav>
        <div class="align_rt">
            <div class="mypage">

                <form name="form1" method="post">
                    <!--// 폼전송시 전달되는 data target element -->
                    <section class="top_area">
                        <strong>내 정보 수정</strong>
                        <div class="login_info">
                            <div><img src="../resources/image/내정보아이콘.png" alt=""></div>
                            <p>${login.email }</p>
                        </div>
                        
                        <div class="pw_input">
                            <div class="pw_input__title">
                                <b>닉네임</b>
                                <span class="title__uinfo">${login.nickName }</span>
                            </div>
                            
                            <div class="pw_input__btns-wrap">
                                <button class="btns-wrap__edit-btn" type="button">수정</button>
                                <button class="btns-wrap__submit-btn" type="submit">수정완료</button>
                                <button class="btns-wrap__cancel-btn" type="button">수정취소</button>
                            </div>
                        </div>
                    </section>
                </form>


                <form name="form2" autocomplete="off" method="post" novalidate="novalidate" data-form="uname">
                    <!-- 폼전송시 전달되는 data target element -->
                    <div class="mypageForm__form-inputs-wrap" aria-hidden="true">
                        <input type="text" name="unick" aria-hidden="true" value="파키스탄만병초">
                        <input type="text" name="uname" aria-hidden="true" value="">
                        <input type="tel" name="uphone" aria-hidden="true" value="010****0875">
                    </div>
                    <input type="hidden" name="yeogi_token" value="485f6b5db15264fe900894b6a593faae">
                    <input type="hidden" name="utype" value="1">
    
                    <section class="top_area">
                        <div class="pw_input">
                            <div class="pw_input__title">
                                <b>예약자 이름</b>
                                <span class="title__uinfo"></span>
                            </div>
                            <section class="modifying-section" style="display: none;">
                                <p class="inp_wrap remove form-errors">
                                    <input type="text" id="uname" value="" placeholder="체크인시 필요한 정보입니다." data-input="uname" data-rule-spacechar="true" data-rule-specialchar="true">
                                </p>
                            </section>
                            <div class="pw_input__btns-wrap">
                                <button class="btns-wrap__edit-btn" type="button" style="?android:attr/borderlessButtonStyle">수정</button>
                                <button class="btns-wrap__submit-btn" type="submit">수정완료</button>
                                <button class="btns-wrap__cancel-btn" type="button" style="?android:attr/borderlessButtonStyle">수정취소</button>
                            </div>
                        </div>
                    </section>
                </form>
               </div>
    
            <div class="bot_btn">
                <p>여기어때를 이용하고 싶지 않으신가요?</p>
                 <button type="button"><a href="${cpath }/user/joindrop">회원탈퇴</a></button>
            </div>
        </div>
    </div>
    <!-- //Content  -->
    


<!-- footer -->
    <footer>
        <div class="align">
            <ul class="link">
                <li><a href="#">회사소개</a><span>|</span></li>
                <li><a href="#">이용약관</a><span>|</span></li>
                <li><a href="#">개인정보처리방침</a><span>|</span></li>
                <li><a href="#">소비자 분쟁해결 기준</a><span>|</span></li>
                <li><button type="button">사업자 정보확인</button><span>|</span></li>
                <li><a href="#">요기어때 마케팅센터</a><span>|</span></li>
                <li><a href="#">액티비티 호스트센터</a><span>|</span></li>
                <li><a href="#">HOTEL 요기어때</a><span>|</span></li>
                <li><a href="#">콘텐츠산업진흥법에의한 표시</a></li>
            </ul>
            <p>
                <b>고객행복센터 1670-6250</b>
                <span>오전 9시 - 새벽 3시</span>
            </p>
            <address>
                <span>(주) 요기어때컴퍼니</span>
                       주소 : 서울특별시 강남구 봉은사로 479, 479타워 11층 | 대표이사 : 정명훈 | 사업자등록번호: 742-86-00224<br>
                    통신판매번호 : 2017-서울강남-01779 | 관광사업자 등록번호: 제1026-24호 | 전화번호 : 1670-6250 | 전자우편주소 : help@goodchoice.kr<br>
                <span class="order">(주) 요기어때컴퍼니는 통신판매중개자로서 통신판매의 당사자가 아니며, 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.</span><br>
                Copyright GC COMPANY Corp. All rights reserved.
            </address>
        </div>
    </footer>
    <div class="btn_go_top">상단으로</div>
</div>

<script>
const toTop = document.querySelector('.btn_go_top')

toTop.addEventListener('click', scrollToTop)
window.addEventListener('scroll', scrollHandler)

const btns-wrap__edit-btn = document.queryselector('.btns-wrap__edit-btn')
const modifying_section = document.queryselector('.modifying-section')

btns-wrap__edit-btn.addEventListener('click', (event) => {
   modifying_section.classList.remove('hidden')
})
</script>


</body>
</html>