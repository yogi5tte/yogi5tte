'use strict';



function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  const ob = {}
        	  console.log(response)
        	  
        	  console.log(response.properties.nickname)
              console.log(response.kakao_account.email)
              
              ob = {
        		  nickname : `${response.properties.nickname}`
        	  	  email : `${response.kakao_account.email}`
        	  }
	          const url = cpath + '/user/login'+kakaoLogin
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
  

function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  

