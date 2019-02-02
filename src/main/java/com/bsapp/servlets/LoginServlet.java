/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.servlets;

import ServletPackage.UserDao;
import com.bsapp.manager.UserManager;
import com.bsapp.model.User;
import com.bsapp.utils.IConstants;
import com.bsapp.utils.StringUtils;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BEmerson
 */
public class LoginServlet extends HttpServlet implements IConstants {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, AddressException, MessagingException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (StringUtils.isStringEmpty(email) || StringUtils.isStringEmpty(password)) {

            RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
            rd.forward(request, response);

        }  else {

            UserManager uMgr = new UserManager();
            System.out.println("ghjjj "+uMgr);
            User user = uMgr.loginUser(email, password);
            if (user == null) {

                
         String  d_email = "sharmasam14581@gmail.com",
            d_uname = "sharmasam14581@gmail.com",
            d_password = "118221739",
            d_host = "smtp.gmail.com",
            d_port  = "465",
            m_to = email,
            //m_subject = "Indoors Readable File: " + params[0].getName(),
            m_text = "This message is from Indoor Positioning App. Required file(s) are attached.";
    Properties props = new Properties();
    props.put("mail.smtp.user", d_email);
    props.put("mail.smtp.host", d_host);
    props.put("mail.smtp.port", d_port);
    props.put("mail.smtp.starttls.enable","true");
    props.put("mail.smtp.debug", "true");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.socketFactory.port", d_port);
    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    props.put("mail.smtp.socketFactory.fallback", "false");

   // SMTPAuthenticator auth = new SMTPAuthenticator();
    Session session = Session.getInstance(props, new Authenticator() {});
    session.setDebug(true);

    MimeMessage msg = new MimeMessage(session);
    try {
        msg.setText("Please register first");
        msg.setSubject("Asian Spices Login Failure");
        msg.setFrom(new InternetAddress(d_email));
        msg.addRecipient(Message.RecipientType.TO, new InternetAddress(m_to));

Transport transport = session.getTransport("smtps");
            transport.connect(d_host, Integer.valueOf(d_port), d_uname, d_password);
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();

        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
                rd.forward(request, response);
   } 
                
            
            else {
                 System.out.println("else ----");
                request.getSession(true).setAttribute(IConstants.SESSION_KEY_USER, user);
                if (user.getUserType().equals(IConstants.USER_TYPE_ADMIN)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/admin1.jsp");
                    rd.forward(request, response);
                } else if (user.getUserType().equals(IConstants.USER_TYPE_GENERAL_USER)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/mainpage.html");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.html");
                    rd.forward(request, response);
                }
                
            }
        }
   
           
        

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
           



     try{
            String username=request.getParameter("username");
             String pass=request.getParameter("password");
        String submitType=request.getParameter("submit");
         UserDao udao= new UserDao();
        ServletPackage.User us= udao.getCustomer(username, pass);
          
            System.out.println("my object"+us);
            try{
            if(us.getCustomername().equalsIgnoreCase("admin"))
            {
               request.getRequestDispatcher("index.jsp").forward(request, response); 
            }
            else if(us.getCustomername()!=null){
                System.out.println("request coming here again");
	        request.getRequestDispatcher("index.html").forward(request, response);
                }
          else{
              System.out.println(" req-----------come here");
              UserDao ud =new UserDao();
                ServletPackage.User u=new ServletPackage.User();
		String customername=request.getParameter("username");
		String password=request.getParameter("password");
		//String submitType=request.getParameter("submit");
		System.out.println("before setting ----");
               
	        u.setPassword(password);
		u.setCustomername(customername);
		ud.insertUser(u);
                processRequest(request, response);
                System.out.println("after setting");    
                request.setAttribute("message"," User Inserted Successfully click here");
                 request.getRequestDispatcher("indexwebproject.jsp").forward(request, response);
              
          }
            }
              catch (Exception e){
                   request.getRequestDispatcher("indexwebproject.jsp").forward(request, response);
                    UserDao ud =new UserDao();
                ServletPackage.User u=new ServletPackage.User();
		String customername=request.getParameter("username");
		String password=request.getParameter("password");
		//String submitType=request.getParameter("submit");
		System.out.println("before setting ----");
               
	        u.setPassword(password);
		u.setCustomername(customername);
		ud.insertUser(u);
                System.out.println("after setting");    
                request.setAttribute("message"," User Inserted Successfully click here");
                 request.getRequestDispatcher("register.jsp").forward(request, response);
            e.printStackTrace();
        }
          
                   //request.getRequestDispatcher("signIn.html").forward(request, response);
//                request.getRequestDispatcher("index.html").forward(request, response);
    }
        catch (Exception e){
            e.printStackTrace();
        }




    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (MessagingException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
