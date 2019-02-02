/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.servlets;

import com.bsapp.dao.UserDAO;
import com.bsapp.model.User;
import com.bsapp.utils.IConstants;
import java.io.IOException;
import java.util.Properties;
import java.util.Vector;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
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
 * @author bemerson
 */
public class UserManagementServlet extends HttpServlet implements IConstants {

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
            throws ServletException, IOException {
 try{
        String action = request.getParameter("action");

        System.out.println("my action"+action);
        if (action.equals("list")) {
            doUserListing(request, response);
        }
        if (action.equals("add")) {
            addNewUser(request, response);
        }
 }
 catch (Exception e){


  RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
        rd.forward(request, response);

    }
    }

    void doUserListing(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDAO userDAO = new UserDAO();
        Vector<User> allUsersVect = userDAO.getAllUsers();

        request.getSession(true).setAttribute(IConstants.SESSION_KEY_ALL_USERS, allUsersVect);

        RequestDispatcher rd = request.getRequestDispatcher("/user-listing.jsp");
        rd.forward(request, response);

    }
    
        void addNewUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        RequestDispatcher rd = request.getRequestDispatcher("/add-user.jsp");
        rd.forward(request, response);

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
        processRequest(request, response);
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
          System.out.println("post ----");
       
                    UserDAO ud =new UserDAO();
                User uc=new User();
		String email=request.getParameter("email");
		String password=request.getParameter("password");	
                String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
                String usertype=request.getParameter("usertype");
		System.out.println("before setting ----");
                
                uc.setEmail(email);
                uc.setPassword(password);
                uc.setFirstName(firstname);
                uc.setLastName(lastname);
                uc.setUserType(usertype);
               
                
		ud.registerUser(uc);
                processRequest(request, response);
                System.out.println("after setting");    
//                request.setAttribute("message"," User Inserted Successfully");




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
        msg.setText("Reistration Successful");
        msg.setSubject("Welcome to asian spices");
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
//        RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
//                rd.forward(request, response);
	        request.getRequestDispatcher("Login.jsp").forward(request, response);
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
