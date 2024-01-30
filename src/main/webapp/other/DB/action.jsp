<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%

    String id = request.getParameter("id");

    String action = request.getParameter("action");

    try{

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Jitesh@123");

        PreparedStatement ps = con.prepareStatement("UPDATE work SET action=? WHERE id= ?");
            
        ps.setString(1, action);
            
        ps.setString(2, id);
            
        ps.executeUpdate();

        response.sendRedirect("http://localhost:8080/project/index_admin.jsp");   

    }catch(Exception e){

        e.printStackTrace();
    
    }
%>