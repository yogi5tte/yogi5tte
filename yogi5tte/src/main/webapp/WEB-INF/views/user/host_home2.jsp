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
<link rel="stylesheet" href="${cpath }/resources/stylecss/user/host/host_home.css">
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
                           <a href="${cpath }/user/host_home">숙소관리<span class="">&nbsp;</span></a>
                       </li>
                       <li>
                           <a href="${cpath }/user/host_home2">예약관리<span class="">&nbsp;</span></a>
                       </li>
                   </ul>
               </nav>
               <div class="user-area">
                  <span class="user-affiliate"> </span>                                     
               </div>
           </div>
        </div>
	</header>

	
	
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
                        <th>이용시간</th>
                        <td class="bd_r_none">
                            <div class="form-layer mb_24">
                                <span class="form-title">체크인 <br>가능시간</span>
                                <span class="form-body">
                                    <div class="select-style middle-size">
                                        <select name="checkin">
                                            <option value="13">오후 01:00</option>
                                            <option value="14">오후 02:00</option>
                                            <option value="15">오후 03:00</option>
                                            <option value="16">오후 04:00</option>
                                            <option value="17">오후 05:00</option>
                                            <option value="18">오후 06:00</option>
                                            <option value="19">오후 07:00</option>
                                            <option value="20">오후 08:00</option>
                                        </select>
                                    </div>
                                </span>
                            </div>
                            <div class="form-layer">
                                <span class="form-title">체크아웃 <br>완료시간</span>
                                <span class="form-body">
                                    <div class="select-style middle-size">
                                        <select name="checkout">
                                            <option value="10">오전 10:00</option>
                                            <option value="11">오전 11:00</option>
                                            <option value="12">오후 12:00</option>
                                            <option value="13">오후 01:00</option>
                                            <option value="14">오후 02:00</option>
                                            <option value="15">오후 03:00</option>
                                            <option value="16">오후 04:00</option>
                                            <option value="17">오후 05:00</option>
                                        </select>
                                    </div>
                                </span>
                            </div>
                         </td>
                    </tr>
                    <tr class="host-intro">
                        <th>사장님 한마디<br>(호스트 소개)</th>
                        <td colspan="2">
                              <div class="form-layer">
                                <textarea class="form-control textarea-layer" rows="6" name="r_comment" placeholder="사장님의 특이 경력 혹은 사장님만의 재밌는 이야기가 있다면 게스트들에 소개해주세요."></textarea>
                                <span id="remain-r_comment" class="remain-cnt float-right">(<span id="count">5</span>/<span id="max">1000</span>)</span>
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