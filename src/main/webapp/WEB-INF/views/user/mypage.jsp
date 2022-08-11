<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="join.jsp" %> --%>
<%@ include file="../main/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기오때</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/mypage/mypage.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/mypage/mypage.js"></script> 

</head>
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


                <form name="form1" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="unick">
                    <!-- 폼전송시 전달되는 data target element -->
                    <div class="mypageForm__form-inputs-wrap" aria-hidden="true">
                        <input type="text" name="unick" id="test1" aria-hidden="true" value="파키스탄만병초">
                        <input type="text" name="uname" aria-hidden="true" value="">
                        <input type="tel" name="uphone" aria-hidden="true" value="010****0875">
                    </div>
    
                    <input type="hidden" name="yeogi_token" value="485f6b5db15264fe900894b6a593faae">
                    <input type="hidden" id="utype" name="utype" value="1">
                    <input type="hidden" name="utype" value="1">
                    <!--// 폼전송시 전달되는 data target element -->
                    <section class="top_area">
                        <strong>내 정보 수정</strong>
                        <div class="login_info">
                            <div><img src="https://image.goodchoice.kr/profile/ico/ico_21.png" alt=""></div>
                            <p>vlvkdksgo@naver.com</p>
                        </div>
    
                        <div class="pw_input">
                            <div class="pw_input__title">
                                <b>닉네임</b>
                                <span class="title__uinfo">파키스탄만병초</span>
                            </div>
                            <section class="modifying-section hidden">
                                <p class="inp_wrap remove form-errors">
                                    <input type="text" value="파키스탄만병초" placeholder="체크인시 필요한 정보입니다." data-input="unick" data-msg-required="닉네임을 입력하세요." data-rule-minlength="2" data-rule-maxlength="14" data-rule-spacechar="true" data-rule-specialchar="true">
                                </p>
                            </section>
                            <div class="pw_input__btns-wrap">
                                <button class="btns-wrap__edit-btn" type="button">수정</button>
                                <button class="btns-wrap__submit-btn" type="submit">수정완료</button>
                                <button class="btns-wrap__cancel-btn" type="button">수정취소</button>
                            </div>
                        </div>
                    </section>
                </form>





                <form name="form2" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="uname">
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

    



                <form name="form3" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="uphone">
                    <section>
                        <!-- 폼전송시 전달되는 data target element -->
                        <div class="mypageForm__form-inputs-wrap" aria-hidden="true">
                            <input type="text" name="unick" aria-hidden="true" value="파키스탄만병초">
                            <input type="text" name="uname" aria-hidden="true" value="">
                            <input type="tel" name="uphone" aria-hidden="true" value="010****0875">
                        </div>
                        <input type="hidden" name="yeogi_token" value="485f6b5db15264fe900894b6a593faae">
                        <input type="hidden" name="utype" value="1">
                        <div class="pw_input phone_confirm">
                            <div class="pw_input__title">
                                <b>휴대폰 번호</b>
                                <span class="title__uinfo">010****0875</span>
                                <div class="safety_txt">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</div>
                            </div>
                            <div class="modifying-section" style="display: none;">
                                <div id="sendCode">
                                    <section>
                                        <div class="inp_wrap remove form-errors">
                                            <input type="tel" id="phone_number" value="" placeholder="체크인시 필요한 정보입니다." maxlength="13" data-input="uphone" data-msg-required="휴대폰 번호를 인증받으세요." data-rule-phonenumber="true">
                                            <button type="button" class="btn_checked">확인</button>
                                        </div>
                                        <button type="button" class="btn_send btn_confirm">인증번호 전송</button> <!-- 활성화 클래스 'active' -->
                                    </section>
                                </div>
                                <div id="verificationCode" style="display: none;">
                                    <b>인증 번호</b>
                                    <section>
                                        <div class="inp_wrap remove">
                                            <input type="tel" id="digit" minlength="4" maxlength="4">
                                            <span class="timer">&nbsp;</span>
                                        </div>
                                        <button type="button" class="btn_ok btn_confirm" data-verification-type="call" data-verification-next="mypageVerify">확인</button>
                                    </section>
                                </div>
                                <input type="hidden" id="phone_certification_point" value="MYPAGE" style="display: none;">
                            </div>
                            <div class="pw_input__btns-wrap">
                                <button class="btns-wrap__edit-btn " type="button">수정</button>
                                <button class="btns-wrap__submit-btn" type="submit">수정완료</button>
                                <button class="btns-wrap__cancel-btn" type="button">수정취소</button>
                            </div>
                        </div>
                    </section>
                </form>
                <!-- <button class="btn_submit disabled btn_one" type="submit">저장</button>-->
    
                                <p class="bot_link"><a href="https://www.goodchoice.kr/my/mypagePwChange">비밀번호 변경</a> &gt;</p>
                        </div>
    
            <div class="bot_btn">
                <p>여기어때를 이용하고 싶지 않으신가요?</p>
                                <button type="button"><a href="${cpath }/joindrop">회원탈퇴</a></button>
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