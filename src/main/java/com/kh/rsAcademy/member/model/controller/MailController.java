package com.kh.rsAcademy.member.model.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.rsAcademy.member.model.service.MbService;
import com.kh.rsAcademy.member.model.vo.Member;


@Controller
public class MailController {

	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private MbService mService;
	
	@RequestMapping(value = "mailCheck.jy", method = RequestMethod.GET ,produces = "aplication/json; charset=UTF-8")
	@ResponseBody
    public String sendMailTest(@RequestParam("Email") String to) throws Exception{
        
		Random r = new Random();
		int checkNum = r.nextInt(888888) + 111111;
		
        String subject = "인증코드";
        String content = "인증코드 "+checkNum+"입니다.";
        String from = "kgbi777@naver.com";
        System.out.println(to);
        
        try {
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
            
            mailHelper.setFrom(from);

            mailHelper.setTo(to);
            mailHelper.setSubject(subject);
            mailHelper.setText(content, true);
            
            
            mailSender.send(mail);
            
        } catch(Exception e) {
            e.printStackTrace();
        }
     
        return checkNum+"";
    }
	
	@RequestMapping(value = "mailInjeung.dw", method = RequestMethod.POST)
	   @ResponseBody
	    public String mailFindPwd(HttpServletRequest request, String mbId, String mbEmail,
	            HttpServletResponse response_email) throws IOException{
	        
	        Random r = new Random();
	        int checkNum = r.nextInt(888888) + 111111;
	        
	        
	        String title = "RS 요리학원 비밀번호 찾기 인증 이메일 입니다.";
	        String from = "kgbi777@naver.com";
	        String to = request.getParameter("mbEmail"); //받는 사람의 이메일
	        String content =
	                System.getProperty("line.separator")+
	                System.getProperty("line.separator")+
	                "안녕하세요 RS요리학원을 다시 찾아주셔서 감사합니다"
	                +System.getProperty("line.separator")+
	                System.getProperty("line.separator")+
	                "비밀번호 찾기 인증번호는 " +checkNum+ " 입니다. " 
	                +System.getProperty("line.separator");
	        
	        try {
	            MimeMessage message = mailSender.createMimeMessage();
	            MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

	            messageHelper.setFrom(from);
	            messageHelper.setTo(to);
	            messageHelper.setSubject(title);
	            messageHelper.setText(content); 
	            
	            mailSender.send(message);
	    
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return checkNum+"";
	        
	    }
	   
	   @RequestMapping(value = "mailFindPwd.dw", method = RequestMethod.POST)
	   @ResponseBody
	   public String findPwd(HttpServletResponse response, 
	                     @RequestParam("mbId")String mbId, 
	                        @RequestParam("mbEmail")String mbEmail, 
	                        @RequestParam("hidden1")String hidden1, 
	                        @RequestParam("userCode")String userCode) throws Exception{
	      
	      HashMap<String, Object> list = new HashMap<String, Object>();
	      list.put("mbId", mbId);
	      list.put("mbEmail", mbEmail);
	      
	      Member m = mService.findPwd(list);

	      System.out.println(m);
	      
	   
	      
	        if(m != null) {
	          if(hidden1.equals(userCode)) {
	              return "password : "+m.getMbPwd();
	          }
	      }
	      return "Can not found your password";
	   }
	
	
	
	
	
	
}
