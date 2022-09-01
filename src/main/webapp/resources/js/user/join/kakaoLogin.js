'use strict';



function kakaoLogin(event) {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  let ob = {}
        	  console.log(response)
        	  
        	  console.log(response.properties.nickname)
              console.log(response.kakao_account.email)
              
              
              
              ob = {
        		  nickName : `${response.properties.nickname}`,
        		  email : `${response.kakao_account.email}`        		  
        	  }

        	  
        	  
        	  console.log(ob)
        	  
	          let url = cpath + '/user/kakaoLogin'
	          
	          const opt = {
	      			method:'POST',
	      			body: JSON.stringify(ob),
	      			headers: {
	      				'Content-Type' : 'application/json; charset=utf-8'
	      			}
	      	}
	      	fetch(url,opt)
	      	.then(resp=>resp.text())
      	    .then(json => {
        if(json == 0){
        	alert('회원가입페이지로 이동')
        	location.href = cpath + '/user/kakaoJoin'
        	  
        	
        	}
        else{
        	alert('로그인성공')
    		location.replace(cpath)
        	}
      	    })
	          
	          
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }

function kakaoLogout(event) {
	Kakao.init(event)
	Kakao.isInitialized()

	if(!Kakao.Auth.getAccessToken()) {
		return;
	}
	
	Kakao.Auth.logout(function() {
		
	})
}  

