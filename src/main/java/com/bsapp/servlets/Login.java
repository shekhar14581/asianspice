package com.bsapp.servlets;

import ServletPackage.User;
import ServletPackage.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
        try{
            String username=request.getParameter("username");
             String pass=request.getParameter("password");
        String submitType=request.getParameter("submit");
         UserDao udao= new UserDao();
        User us= udao.getCustomer(username, pass);
          
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
                User u=new User();
		String customername=request.getParameter("username");
		String password=request.getParameter("password");
		//String submitType=request.getParameter("submit");
		System.out.println("before setting ----");
               
	        u.setPassword(password);
		u.setCustomername(customername);
		ud.insertUser(u);
                System.out.println("after setting");    
                request.setAttribute("message"," User Inserted Successfully click here");
                 request.getRequestDispatcher("indexwebproject.jsp").forward(request, response);
              
          }
            }
              catch (Exception e){
                   request.getRequestDispatcher("indexwebproject.jsp").forward(request, response);
            e.printStackTrace();
        }
          
                   //request.getRequestDispatcher("signIn.html").forward(request, response);
//                request.getRequestDispatcher("index.html").forward(request, response);
    }
        catch (Exception e){
            e.printStackTrace();
        }
         //request.getRequestDispatcher("indexwebproject.jsp").forward(request, response);
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
