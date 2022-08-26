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
                        </div>
                        
                        <div class="pw_input">
                            <div class="pw_input__title">
                                <b>닉네임</b>
                                <span class="title__uinfo">${login.nickName }</span>
                            </div>
                            
                            <div class="pw_input__btns-wrap"></div>
                        </div>
                    </section>
                </form>


                <form name="form2" method="post">
                    <div class="mypageForm__form-inputs-wrap" aria-hidden="true"></div>
                    <section class="top_area">
                        <div class="pw_input">
                            <div class="pw_input__title">
                                <b>이메일</b>
                                <span class="title__uinfo">${login.email }</span>
                            </div>                           
                            <div class="pw_input__btns-wrap"></div>
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
    


<%@ include file="../main/footer.jsp" %>

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