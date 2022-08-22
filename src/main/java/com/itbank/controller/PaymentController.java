package com.itbank.controller;




import java.io.IOException;

import java.util.Locale;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;


import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;




@Controller
@RequestMapping("/")
public class PaymentController {
	
	 private IamportClient iamportClient;
	
	 //생성자를 통해 Rest API / Rest API secret 입력
	 public PaymentController() {
		 String apiKey = "1078805824161077";
		 String apiSecret = "gbbvMujkPRGQBTEXdVWfPL7mNPiTO63VQBcb2qrpsfnaspipd2KYdnSxzEEqUrkqyQgEKigwAJCARppz";
		 this.iamportClient = new IamportClient(apiKey, apiSecret);
	 }
	 
	  //프론트에서 넘겨 받은 PG사 결과값을 통해 iamport token 발행
	  @ResponseBody
	  @PostMapping(value="rsvn/reservation/verifyIamport/{imp_uid}")
	  public IamportResponse<Payment> paymentByImpUid(
			 Locale locale,
			 Model model,
			 HttpSession httpSession,
			 @PathVariable(value="imp_uid") String imp_uid) throws IamportResponseException, IOException{
		  return iamportClient.paymentByImpUid(imp_uid);
	  }
	 
	  
	
}
