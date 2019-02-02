/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.servlets;
import com.bsapp.dao.UserDAO;
import com.bsapp.model.User;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class SendEmail {
  public static void main(String[] args) {
  final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
  // Get a Properties object
     Properties props = System.getProperties();
     props.setProperty("mail.smtp.host", "smtp.gmail.com");
     props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
     props.setProperty("mail.smtp.socketFactory.fallback", "false");
     props.setProperty("mail.smtp.port", "465");
     props.setProperty("mail.smtp.socketFactory.port", "465");
     props.put("mail.smtp.auth", "true");
     props.put("mail.debug", "true");
     props.put("mail.store.protocol", "pop3");
     props.put("mail.transport.protocol", "smtp");
     final String username = "sharmasam14581@gmail.com";//
     final String password = "118221739";
     try{
     Session session = Session.getDefaultInstance(props, 
                          new Authenticator(){
                             protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(username, password);
                             }});
     
    

   // -- Create a new message --
     Message msg = new MimeMessage(session);

  // -- Set the FROM and TO fields --
     msg.setFrom(new InternetAddress("sharmasam14581@gmail.com"));
     msg.setRecipients(Message.RecipientType.TO, 
                      InternetAddress.parse("shekhar14581@rediffmail.com",false));
     msg.setSubject("java application testing");
     msg.setText("How are you girl ??");
     msg.setSentDate(new Date());
     Transport.send(msg);
     System.out.println("Message sent.");
  }catch (MessagingException e){ System.out.println("Erreur d'envoi, cause: " + e);}
  }
  
  
  
  
  
  
  
      public User Emailuser(String email, String passWord){
        try{
            System.out.println("here---");
        final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
  // Get a Properties object
     Properties props = System.getProperties();
     props.setProperty("mail.smtp.host", "smtp.gmail.com");
     props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
     props.setProperty("mail.smtp.socketFactory.fallback", "false");
     props.setProperty("mail.smtp.port", "465");
     props.setProperty("mail.smtp.socketFactory.port", "465");
     props.put("mail.smtp.auth", "true");
     props.put("mail.debug", "true");
     props.put("mail.store.protocol", "pop3");
     props.put("mail.transport.protocol", "smtp");
     final String username = "sharmasam14581@gmail.com";//
     final String password = "118221739";
     try{
         System.out.println("inside try 1");
     Session session = Session.getDefaultInstance(props, 
                          new Authenticator(){
                             protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(username, password);
                             }});

   // -- Create a new message --
     Message msg = new MimeMessage(session);
//     String s=email;
         System.out.println("now");
  // -- Set the FROM and TO fields --
     msg.setFrom(new InternetAddress("sharmasam14581@gmail.com"));
     msg.setRecipients(Message.RecipientType.TO, 
                      InternetAddress.parse("shekhar14581@rediffmail.com",false));
     msg.setSubject("java application testing");
     msg.setText("How are you girl ??");
     msg.setSentDate(new Date());
     Transport.send(msg);
     System.out.println("Message sent.");
         System.out.println("try2");
  }catch (MessagingException e){ System.out.println("Erreur d'envoi, cause: " + e);}
    }
    catch (Exception e){
       
    }
        return null;
    
}
}