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


function allCheck(event){
   
   const new_pw =  document.getElementById('check1')
   const new_pw_re =  document.getElementById('check2')
   const joinBtn = document.getElementById('joinBtn')
   
   let allflag = ''
      
   if( new_pw.classList.contains('impo') || new_pw_re.classList.contains('impo') ) {
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