package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.user.User_nonsocialDTO;
import com.itbank.user.UsercheckDAO;

@Service
public class UserCheckService {

   @Autowired private UsercheckDAO dao;
   
   public String checkId(String newUserID) {
      
	   System.out.println("newUserID : " + newUserID);
	   String result = "";
	   
	   

      if(newUserID.contains("naver")) {
         newUserID += ".com";
         
      }
      else if(newUserID.contains("nate")) {
         
         newUserID += ".com";
      }
      else if(newUserID.contains("gmail")) {
         
         newUserID += ".com";
      }
      else if(newUserID.contains("hanmail")) {
         
         newUserID += ".net";
      }
      System.out.println("newUserID : " + newUserID);
      
      User_nonsocialDTO user = dao.checkId(newUserID); 
      
      System.out.println("user : " + user);
      
      if(user == null) {
    	  System.out.println("user.getEmail() : true");
    	  result ="true";
      }
      
      else if(user.getEmail() == newUserID) {
         System.out.println("user.getEmail() : false");
         result ="false";
      }
      
      return result;
   }

   
   
   public String checkNick(String unick) {
      return dao.checkNick(unick);
   }

   
   
public String checkpNum(String pNum) {
	return dao.checkpNum(pNum);
}
   
   
   
   
}