<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Rudra - Online Submission Website</title>
    <link href="http://localhost:8080/project/other/img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="http://localhost:8080/project/other/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="http://localhost:8080/project/other/css/style.css" rel="stylesheet">
</head>
<body>
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
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 px-lg-5">
            <a href="index.html" class="navbar-brand ml-lg-3">
                <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-book-reader mr-3"></i>Rudra</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mx-auto py-0">
                    <a href="http://localhost:8080/project/index.jsp" class="nav-item nav-link">Home</a>
                    <a href="http://localhost:8080/project/other/mywork.jsp" class="nav-item nav-link">My Work</a></div>
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
</body>
</html>