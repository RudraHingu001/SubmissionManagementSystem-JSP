<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Rudra - Online Submission Website</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <link href="http://localhost:8080/project/other/img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="http://localhost:8080/project/other/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="http://localhost:8080/project/other/css/style.css" rel="stylesheet">
</head>
<body>
    <!-- Topbar Start -->
    <div class="container-fluid bg-dark">
        <div class="row py-2 px-lg-5">
            <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center text-white">
                    <small><i class="fa fa-phone-alt mr-2"></i>+91 8866519805</small>
                    <small class="px-3">|</small>
                    <small><i class="fa fa-envelope mr-2"></i>rudrahingu001@gmail.com</small>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-white px-2" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-white pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End --> 
   <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 px-lg-5">
            <a href="index.html" class="navbar-brand ml-lg-3">
                <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-book-reader mr-3"></i>Rudra</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mx-auto py-0">
                    <a href="http://localhost:8080/project/index_admin.jsp" class="nav-item nav-link">Home</a>
                    <a href="http://localhost:8080/project/other/Student_work.jsp" class="nav-item nav-link">Student's Work</a>
                </div>
                <% 
                if(session.getAttribute("id") == null){
                    out.print("<a href='http://localhost:8080/project/other/login.jsp' class='btn btn-primary py-2 px-4 d-none d-lg-block'>Login</a>");
                }else{
                    out.print("<a href='http://localhost:8080/project/other/DB/logout.jsp' class='btn btn-primary py-2 px-4 d-none d-lg-block'>Logout</a>");
                }
                %>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->
</body>
</html>
<% 
    if(session.getAttribute("id") == null){
        
        response.sendRedirect("http://localhost:8080/project/other/login.jsp");
    
    }

%>
<div class="container">
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Student's Enrollment No.</th>
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
                            out.println("<td>"+rs.getInt("u_id")+"</td>"); 
                            out.println("<td><embed src='other/img/"+rs.getString("file")+"' width='300' height='200'></td>"); 
                            out.println("<td>"+rs.getTime("timestamp")+"</td>"); 
                            if(rs.getString("action").isEmpty()){
                                out.println("<td>"); 
                                out.println("<form method='POST' action='other/DB/action.jsp?id="+rs.getInt("id")+"'>");
                                out.println("<input type='submit' class='btn btn-primary' name='action' value='Approved'></a>");
                                out.println("<input type='submit' class='btn btn-danger' name='action' value='DisApproved'></a>");
                                out.println("</form>");
                                out.println("</td>");
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
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
</head>
    <!-- Footer Start -->
    <div class="container-fluid position-relative overlay-top bg-dark text-white-50 py-5" style="margin-top: 90px;">
        <div class="container mt-5 pt-5">
            <div class="row">
                <div class="col-md-6 mb-5">
                    <a href="../index.jsp" class="navbar-brand">
                        <h1 class="mt-n2 text-uppercase text-white"><i class="fa fa-book-reader mr-3"></i>Rudra</h1>
                    </a>
                    <p class="m-0">Welcome to our Submission Management System, where efficiency meets simplicity. We are dedicated to providing a streamlined solution for managing all your submissions.</p>
                </div>
                <div class="col-md-6 mb-5">
                    <h3 class="text-white mb-4">Newsletter</h3>
                    <div class="w-100">
                        <div class="input-group">
                            <input type="text" class="form-control border-light" style="padding: 30px;" placeholder="Your Email Address">
                            <div class="input-group-append">
                                <button class="btn btn-primary px-4">Sign Up</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-white-50 border-top py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-left mb-3 mb-md-0">
                    <p class="m-0">Copyright &copy; <a class="text-white" href="#">SBMS</a>. All Rights Reserved.
                    </p>
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <p class="m-0">Designed by <a class="text-white" href="https://htmlcodex.com">Rudra Hingu</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary rounded-0 btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="other/lib/easing/easing.min.js"></script>
    <script src="other/lib/waypoints/waypoints.min.js"></script>
    <script src="other/lib/counterup/counterup.min.js"></script>
    <script src="other/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="other/js/main.js"></script>
</body>
</html>