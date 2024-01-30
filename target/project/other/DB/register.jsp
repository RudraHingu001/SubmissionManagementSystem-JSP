<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<% 
    String name = request.getParameter("name");

    String email = request.getParameter("email");

    String password = request.getParameter("password");

    try{

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Jitesh@123");

        PreparedStatement s = con.prepareStatement("insert into user(name,email,password) values(?,?,?)");

        s.setString(1,name);

        s.setString(2,email);

        s.setString(3,password);

        s.executeUpdate();

    }catch(Exception e){

        e.printStackTrace();
    
    }finally{

        response.sendRedirect("http://localhost:8080/project/other/login.jsp");
    }
%>