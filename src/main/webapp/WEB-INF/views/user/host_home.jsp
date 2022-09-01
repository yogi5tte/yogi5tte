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
<script> const cpath = '${cpath}'</script>
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
		                    <a href="${cpath }/logout"><span class="nav-text">로그아웃</span></a>
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
                       <li>
                           <a href="${cpath }/user/host_home2">리뷰<span class="">&nbsp;</span></a>
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
				       <th>업종</th>
				       <td>
				           <div class="form-layer label-layer mb_24">
				               <label for="Y"><input id="Y" type="radio" name="account_type" value="2" checked=""> 모텔</label>
				               <label for="N"><input id="N" type="radio" name="account_type" value="1"> 호텔</label>
				               <label for="N"><input id="N" type="radio" name="account_type" value="1"> 펜션</label>
				           </div>
				       </td>
				   </tr>
                    <tr>
                        <th>사업자 등록 정보</th>
                        <td>
                            <div class="form-layer mb_08">
                                <span class="form-title">업체명</span>
                                <span class="form-body">
                                    <input class="form-control normal-size" type="text" name="name" placeholder="업체 상호명을 입력하세요.">
                                </span>
                            </div>
                            <div class="form-layer mb_24">
                                <span class="form-title">업체 주소</span>
                                <span class="form-body">
                                    <div class="select-style middle-size">
                                        <select id="region" name="checkin">
                                            <option value="0">서울</option>
                                            <option value="1">부산</option>
                                        </select>
                                    </div>
                                    <div class="select-style middle-size">
                                        <select id="city" name="checkin">
                                            <option value="0">강남/역삼/삼성/논현</option>
                                            <option value="1">서초/신사/방배</option>
                                            <option value="2">잠실/방이</option>
                                            <option value="3">잠실새내/신천</option>
                                            <option value="4">영등포/여의도</option>
                                            <option value="5">구로/금천/오류/신도림</option>
                                            <option value="6">강서/화곡/까치산역/목동</option>
                                            <option value="7">천호/길동/둔촌</option>
                                            <option value="8">서울대/신림/사당/동작</option>
                                            <option value="9">종로/대학로</option>
                                            <option value="10">해운대/재송</option>
                                            <option value="11">송정/기장/정관</option>
                                            <option value="12">서면/초읍/양정/부산시민공원/범천</option>
                                            <option value="13">남포동/부산역/송도/영도/범일동</option>
                                            <option value="14">광안리/수영/민락</option>
                                            <option value="15">경성대/대연/용호/문현</option>
                                            <option value="16">동래/온천장/부산대/구서/사직</option>
                                            <option value="17">연산/토곡</option>
                                            <option value="18">사상(공항경전철)/학장/엄궁</option>
                                            <option value="19">강서/하단/사하/명지/신호/다대포</option>
                                        </select>
                                    </div>
                                </span>
                            </div>
                            
                            
                            
                            <div class="notification-item notification-item-wrap form-inline hidden">
                                    <div class="form-layer mb_24">
                                        <span class="form-title">방이름</span>
                                        <span class="form-body">
                                            <input class="form-control small-size" type="text" placeholder="방 이름" style="width:108px">
                                        </span>
                                     </div>
                                     <div class="form-layer mb_24">
                                        <span class="form-title">가격</span>
                                        <span class="form-body">
                                            <input class="form-control small-size" type="text" placeholder="주중가격" style="width:108px">
                                            <input class="form-control small-size" type="text" placeholder="주말가격" style="width:108px">
                                        </span>
                                     </div>
                                     <div class="form-layer mb_24">
                                        <span class="form-title">인원</span>
                                        <span class="form-body">
                                            <select name="checkin">
	                                            <option value="13">1명</option>
	                                            <option value="14">2명</option>
	                                            <option value="14">3명</option>
	                                            <option value="14">4명</option>
	                                            <option value="14">5명</option>
                                        	</select>
                                        </span>
                                     </div>
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



<script>
	
	const form = document.forms[0]
	
	function submitHandler(event) {
		event.preventDefault()
		
		const ob = {}
		const formData = new FormData(event.target)
		for(let key of formData.keys()){
			ob[key] = formData.get(key)
		}
		
		const url = cpath + '/user/host_home'
		const opt = {
				method: 'POST',
				body: JSON.stringfy(ob),
				headers: {
					'ContentType' : 'application/json; charset=utf-8'
				}
			}
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => alert(text))
	}
	
	
	form.addEventListener('submit', submitHandler)
	
</script>


</body>
</html>