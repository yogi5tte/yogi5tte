'use strict';


function checkPassword1(event) {
  let pw = document.getElementById('new_pw').value;
  let sc = ["!","@","#","$","%"];
  let check_SC = 0;
  
  for(let i=0;i<sc.length;i++){
      if(pw.indexOf(sc[i]) != -1){
          check_SC = 1;
      }
  }
  
  if(pw.length < 6 || pw.length>16){
      document.getElementById('check1').innerHTML='비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.';
      document.getElementById('check1').style.color='red';
      document.getElementById('check1').classList.add('impo')
      new_pw.value = "";
      new_pw.focus();
      return false;
      
   
  }
  if(check_SC == 0){
          document.getElementById('check1').innerHTML='특수문자가 들어가 있지 않습니다.';
          document.getElementById('check1').style.color='red';
          document.getElementById('check1').classList.add('impo')
          document.getElementById('new_pw').value='';
          new_pw.value = "";
          new_pw.focus();
          return false;
      }
  if(check_SC == 1){
	  document.getElementById('check1').innerHTML='사용가능합니다.';
      document.getElementById('check1').style.color='blue';
      document.getElementById('check1').classList.remove('impo')
      return true;
  }
     
}

function checkPassword2(event) {
	 if(document.getElementById('new_pw').value !='' && document.getElementById('new_pw_re').value!=''){
         if(document.getElementById('new_pw').value==document.getElementById('new_pw_re').value){
             document.getElementById('check2').innerHTML='비밀번호가 일치합니다.'
             document.getElementById('check2').style.color='blue';
             document.getElementById('check2').classList.remove('impo')
             return true;
         }
         else{
             document.getElementById('check2').innerHTML='비밀번호가 일치하지 않습니다.';
             document.getElementById('check2').classList.add('impo')
             document.getElementById('check2').style.color='red';
             return false;
         }
     }
	
	
}

function checkId(event){
	let gcuseremail = document.getElementById('gcuseremail').value;
	let rollBackCheck = document.getElementsByClassName('emailCheckBox').selectedIndex;
	

	if(gcuseremail >= 'ㄱ' && gcuseremail <= 'ㅎ'){
		document.getElementById('checkId').innerHTML='한글은 사용할 수 없습니다.';
    	document.getElementById('checkId').style.color='red';
    	document.getElementById('checkId').classList.add('impo')
        document.getElementById('gcuseremail').value='';
    	return false;
	}
	if(gcuseremail.includes('.com') == false && gcuseremail.includes('.net') == false){
		document.getElementById('checkId').innerHTML='메일형식이 아닙니다.';
    	document.getElementById('checkId').style.color='red';
    	document.getElementById('checkId').classList.add('impo')
        document.getElementById('gcuseremail').value='';
    	return false;
		
	}
	
    if(gcuseremail == ''){
    	document.getElementById('checkId').innerHTML='잘못된 아이디 입력입니다.';
    	document.getElementById('checkId').style.color='red';
    	document.getElementById('checkId').classList.add('impo')
        document.getElementById('gcuseremail').value='';
    	return false;
    	
    }
  

	console.log('gcuseremail : ' + gcuseremail)

	let url = cpath + '/user/join3/' + gcuseremail 
	console.log('url : ' + url)
	fetch(url)
	.then(resp => resp.json())
	.then(json=> {
		 console.log(json)
		 if(json == false){
			  console.log('false')
	          document.getElementById('checkId').innerHTML='사용중인아이디입니다.';
	          document.getElementById('checkId').style.color='red';
	          document.getElementById('checkId').value='';
	          document.getElementById('gcuseremail').value='';
	          document.getElementById('checkId').classList.add('impo')
	          return false;
	      }
		 if(json == '-1'){
			 document.getElementById('checkId').innerHTML='아이디 형식에 문제가 있습니다.';
	          document.getElementById('checkId').style.color='red';
	          document.getElementById('checkId').value='';
	          document.getElementById('gcuseremail').value='';
	          document.getElementById('checkId').classList.add('impo')
	          return false;
			 
			 
		 }
		 
	   if(json == true){
//		  console.log('true')
		  document.getElementById('checkId').innerHTML='사용가능합니다.';
	      document.getElementById('checkId').style.color='blue';
	      document.getElementById('checkId').classList.remove('impo')
	      return true;
	  }
	   
	  
	  
	})
		
}

function checkingNick(event){
	let unick = document.getElementById('unick').value;
	  let sc = ["!","@","#","$","%"];
	  let check_SC = 1;
	  
	  for(let i=0;i<unick.length;i++){
	      for(let j=0;j<sc.length;j++){
	    	  console.log('unick[i] : ' + unick[i] )
	    	  console.log('sc[j] : ' + sc[j] )
	    	  if(unick[i] == sc[j]){
	    		  check_SC = 0;
	    		  console.log('check_SC : ' + check_SC )
	    		  if(check_SC == 0){
	    	          document.getElementById('nickCheck').innerHTML='특수문자가 들어가 있습니다.';
	    	          document.getElementById('nickCheck').style.color='red';
	    	          document.getElementById('nickCheck').value='';
	    	          document.getElementById('nickCheck').classList.add('impo')
	    	          return false;
	    	      }
	    		
	    	  	  }
	    	
		
	      }
	  }
	  
	  if(unick.length < 0 || unick.length>16){
	      document.getElementById('nickCheck').innerHTML='글자수는 1개 이상, 16글자 이하만 이용 가능합니다.';
	      document.getElementById('nickCheck').style.color='red';
	      document.getElementById('nickCheck').classList.add('impo')
	      unick.value = "";
	      unick.focus();
	      unick = false;
	      return false;
	      
	   
	  }
	
	  if(check_SC == 1){
		  let url = cpath + '/user/join3/'+ unick
			console.log('url : ' + url)
			const opt = {
			method: 'POST',
			data:unick,   
			dataType:'html'

		  }
			
			fetch(url,opt)
			.then(resp => resp.json())
			.then(json=> {
//				console.log(json)
				 if(json == false){
//					  console.log('false')
			          document.getElementById('nickCheck').innerHTML='사용중인닉네임입니다.';
			          document.getElementById('nickCheck').style.color='red';
			          document.getElementById('nickCheck').classList.add('impo')
			          document.getElementById('nickCheck').value='';
			          document.getElementById('unick').value= '';
			          return false;
			      }
			   if(json == true){
//				  console.log('true')
				  document.getElementById('nickCheck').innerHTML='사용가능합니다.';
				  document.getElementById('nickCheck').classList.remove('impo')
			      document.getElementById('nickCheck').style.color='blue';
			      return true;
			  }
			   
			  
			  
			})
		  
	  }
	  

	
}

function allCheck(event){
	
	const gcuseremail =  document.getElementById('checkId')
	const new_pw =  document.getElementById('check1')
	const new_pw_re =  document.getElementById('check2')
	const unick =  document.getElementById('nickCheck')
	const joinBtn = document.getElementById('joinBtn')
	
	let allflag = ''
		
	if(gcuseremail.classList.contains('impo') || new_pw.classList.contains('impo') || new_pw_re.classList.contains('impo') || unick.classList.contains('impo')) {
		allflag = false
	}
	else {
		allflag = true
	}
		
	if(allflag == false){
		event.preventDefault()

		
	}
	else{
		alert('성공')
	}
	
	

}





 

