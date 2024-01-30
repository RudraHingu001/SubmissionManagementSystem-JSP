<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<% 
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try{
        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Jitesh@123");

        PreparedStatement ps = con.prepareStatement("SELECT * FROM `user` WHERE `email` = ? AND `password` = ?");
            
        ps.setString(1, email);
            
        ps.setString(2, password);
            
        ResultSet result = ps.executeQuery();

        if(result.next()){

            if(result.getInt(1) == 1){

                session.setAttribute("id",result.getInt(1));

                response.sendRedirect("http://localhost:8080/project/index_admin.jsp");

            }else{

                session.setAttribute("id",result.getInt(1));

                response.sendRedirect("http://localhost:8080/project/");
            }

        }else{
            response.sendRedirect("http://localhost:8080/project/other/login.jsp");
        }

    }catch(Exception e){
        e.printStackTrace();
    
    }
%>