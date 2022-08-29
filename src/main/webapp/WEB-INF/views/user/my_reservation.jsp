<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/mypage/my_reservation.css">

<script src="${cpath }/resources/js/mypage/my_reservation.js"></script> 

</head>
<body class="pc">

<c:if test="${empty header.referer }">
	<script>
		alert('정상적인 접근이 아닙니다')
		location.href = '${cpath}'
	</script>
</c:if>
       
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
                   <li><a href="${cpath }/user/my_reservation/${login.idx}">예약 내역</a></li>
                   <li><a href="${cpath }/user/mypage">내 정보 관리</a></li>
               </ul>
           </nav>
        <div class="align_rt">
           <div class="reserve_list">
              <section>
                 <h3>예약 내역</h3> 
                <ul class="list_wrap">
                <c:forEach var="dto" items="${approveDto }"> 
                <li class="reservation-detail">
                   <div><!----> 
                   <p class="pic">
                   <img src="${cpath }/resources/image/product_img/강남.jpg">
                   </p> 
                   <a href="${cpath }/user/my_reservation_detail" class="product-title">
                   <span class="status">예약확정</span>
                   <strong>${dto.name }/${dto.roomName }</strong> 
                   
                   <span>체크인 : ${dto.check_in }</span>
                   <br>
                   <span>체크아웃 : ${dto.check_out }</span>
                   <b>예약 상세 &gt;</b>
                   </a> <!---->
                   </div>
                </li>
                </c:forEach>
               </ul> <!---->
            </section>
           </div>
        </div>
    </div>
    <!-- //Content  -->
                        
                        
 <%@ include file="../main/footer.jsp" %>                       


<script>

window.addEventListener('scroll', scrollHandler)
</script>


</body>
</html>