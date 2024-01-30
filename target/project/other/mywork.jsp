<% 
    if(session.getAttribute("id") == null){
        
        response.sendRedirect("http://localhost:8080/project/other/login.jsp");
    
    }

%>
<%@ include file="header.jsp" %>

<div class="container">
    <form method="post" action="DB/mywork.jsp" enctype="multipart/form-data">
    <div class="form-group">
        <label for="exampleFormControlInput1">Select File</label>
        <input type="file" class="form-control" name="file">
    </div>
    <div class="form-group">
        <input class="btn btn-primary" type="submit" class="form-control">
    </div>
    </form>
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">File</th>
                <th scope="col">Submitted DateTime</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
        <%@page import="java.sql.DriverManager,java.sql.Connection,java.sql.Statement,java.sql.ResultSet"%>
            <% 
                    
                try{

                    Class.forName("com.mysql.jdbc.Driver");
                    
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Jitesh@123");

                    Statement stmt = con.createStatement();
                          
                    ResultSet rs = stmt.executeQuery("select * from work");
                              
                    while(true){
                              
                        if(rs.next()){

                            out.println("<tr>");
                            out.println("<td><embed src='img/"+rs.getString("file")+"' width='300' height='200'></td>"); 
                            out.println("<td>"+rs.getTime("timestamp")+"</td>");
                            if(rs.getString("action").isEmpty()){
                                out.println("<td>Pending</td>"); 
                            }else{
                                out.println("<td>"+rs.getString("action")+"</td>");  
                            }
                            out.println("</tr>");

                        }else {

                            return;
                        }
                    }
                }catch(Exception e){
                        
                    out.println(e);
                    
                }

            %>
        <tbody>
    </table>
</div>

<%@ include file="footer.jsp" %>