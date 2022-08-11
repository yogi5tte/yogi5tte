<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기오때</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/user/join/join.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/user/join/join.js"></script> 

</head>
<body class="pc">


    <div class="layer_fix pop_login pop_mem_reserve">
        <section>
            <div class="fix_title">
                <strong>요기어때 약관 동의</strong>
            </div>
    
            <div class="terms_agree">
                <p class="all_check">
                    <label><input type="checkbox" id="checkAll" class="inp_chk_02 chk_default">전체 동의</label>
                </p>
                <p>
                    <input type="checkbox" id="terms" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
                    <a href="">이용약관 동의</a> <span>(필수)</span>
                </p>
                <p>
                    <input type="checkbox" id="teenager" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
                    <a href="">만 14세 이상 확인 </a><span> (필수)</span>
                </p>
                <p>
                    <input type="checkbox" id="privacy" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
                    <a href="">개인정보 수집 및 이용 동의 </a><span> (필수)</span>
                </p>
                <p>
                    <input type="checkbox" id="privacy_auxiliary_policy" value="N" class="inp_chk_02 chk_default terms_checkbox">
                    <a href="">개인정보 수집 및 이용 동의</a> (선택)
                </p>
                <p>
                    <input type="checkbox" id="marketing" value="N" class="inp_chk_02 chk_default terms_checkbox">
                    <a href="">마케팅 알림 수신동의</a> (선택)
                </p>
                <p>
                    <input type="checkbox" id="location" value="N" class="inp_chk_02 chk_default terms_checkbox">
                    <a href="">위치기반 서비스 이용약관 동의</a> (선택)
                </p>
    
                <button class="btn_link" id="terms_agree_btn" ><span>다음</span></button>
            </div>
        </section>
    </div>

    <script>
        // 첫번째 체크박스
        const checkAll = document.getElementById('checkAll')
        checkAll.addEventListener('change', checkHandler)
        
        // 하위 체크박스 요소들을 chkAll 변수로 불러와서
        const chkAll = document.querySelectorAll('.terms_checkbox')
        // chkAll 각 요소들을 btn이라고 할때 btn이 'change' event가 일어나면 chkHandler를 작동해라
        chkAll.forEach(btn => btn.addEventListener('change', chkHandler))

        const nextbtn = document.querySelector('.btn_link')
        nextbtn.addEventListener('click', btnHandler)
        
    </script>



</body>
</html>