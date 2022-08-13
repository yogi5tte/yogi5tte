<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/host_home.css">
<script src="${cpath }/resources/js/host_home.js"></script> 

</head>
<body id="main">
	<header id="host_header">
		<div class="nav nav-init">
		    <div class="wrapper">
		        <div class="nav-left-layer">
		            <h1><a class="" href="${cpath }" title="요기어때">요기어때</a></h1>
		        </div>
		        <div class="nav-right-layer">
		            <div class="menu-section" id="mypage">
		                <div class="menu-section-layer">
		                    <span class="nav-text">마이페이지</span>
		                </div>
		            </div>
		            <div class="nav-vertical"></div>
		            <div class="menu-section" id="logout">
		                <div class="menu-section-layer ml_20">
		                    <span class="nav-text">로그아웃</span>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<div class="wrapper">
           <div class="header">
               <nav>
                   <ul>
                       <li>
                           <a href="javascript:void(0)">숙소관리<span class="">&nbsp;</span></a>
                       </li>
                       <li>
                           <a href="javascript:void(0)">예약관리<span class="">&nbsp;</span></a>
                       </li>
                   </ul>
               </nav>
               <div class="user-area">
                  <span class="user-affiliate"> </span>                                     
               </div>
           </div>
        </div>
	</header>
	
	
	
	<table class="table table-bordered">
		<tr>
	       <th>업종</th>
	       <td>
	           <div class="form-layer label-layer mb_24">
	               <label for="Y"><input id="Y" type="radio" name="account_type" value="2" checked=""> 모텔</label>
	               <label for="N"><input id="N" type="radio" name="account_type" value="1"> 호텔</label>
	               <label for="N"><input id="N" type="radio" name="account_type" value="1"> 펜션</label>
	           </div>
	       </td>
	   </tr>
	</table>
	
	
	
	
	<div class="list-layer">
        <form class="form-horizontal" id="my-form" method="post" name="my">
            <table class="table table-bordered">
				<colgroup>
				<col width="136px">
				<col width="778px">
				</colgroup>
                <thead></thead>
                <tbody>
                    <tr>
                        <th>사업자 등록 정보</th>
                        <td>
                            <div class="form-layer mb_08">
                                <span class="form-title">업체명</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" name="corporate" placeholder="업체 상호명을 입력하세요." value="">
                                </span>
                            </div>
                            <div class="form-layer mb_24">
                                <span class="form-title">업체 주소</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" name="address2" placeholder="업체 주소를 입력하세요." value="">
                                </span>
                            </div>
                            
                            <div class="form-layer mb_24">
                                <span class="form-title">편의시설</span>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="6" name="b_type[]">무인텔</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="16" name="b_type[]">거울룸</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="13" name="b_type[]">야외테라스</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="14" name="b_type[]">안마의자</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="1" name="b_type[]">복층룸</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="5" name="b_type[]">트윈베드</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="2" name="b_type[]">사우나 찜질방</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="12" name="b_type[]">커플PC</label>
                                <label class="checkbox-inline icon-label"><input type="checkbox" value="15" name="b_type[]" checked="checked">기타</label>
                            </div>
 
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="submit-layer">
               <button class="btn btn-yeogi btn-submit" type="submit">저장 후 다음 단계</button>
            </div>
        </form>
    </div>

</body>
</html>