<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<% 

    try{

        String root = getServletContext().getRealPath("other/img");

        MultipartRequest mr = new MultipartRequest(request,root);

        Enumeration files = mr.getFileNames();

        String name = String.valueOf(files.nextElement());

        String fileName = mr.getFilesystemName(name);

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Jitesh@123");

        PreparedStatement ps = con.prepareStatement("INSERT INTO work(u_id,file) VALUES(?,?)");

        Integer i = (Integer) session.getAttribute("id");

        ps.setInt(1,i);   
        
        ps.setString(2, fileName);

        ps.executeUpdate();

        response.sendRedirect("../mywork.jsp");

    }catch(Exception e){

        e.printStackTrace();
    
    }
%>