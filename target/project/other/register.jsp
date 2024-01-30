<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<body>
    <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-5 mb-5 mb-lg-0">
                    <div class="bg-light d-flex flex-column justify-content-center px-5" style="height: 450px;">
                        <div class="d-flex align-items-center mb-5">
                            <div class="btn-icon bg-primary mr-4">
                                <i class="fa fa-2x fa-map-marker-alt text-white"></i>
                            </div>
                            <div class="mt-n1">
                                <h4>Our Location</h4>
                                <p class="m-0">GPG , Gandhinagar</p>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mb-5">
                            <div class="btn-icon bg-secondary mr-4">
                                <i class="fa fa-2x fa-phone-alt text-white"></i>
                            </div>
                            <div class="mt-n1">
                                <h4>Call Us</h4>
                                <p class="m-0">+91 8866519805</p>
                            </div>
                        </div>
                        <div class="d-flex align-items-center">
                            <div class="btn-icon bg-warning mr-4">
                                <i class="fa fa-2x fa-envelope text-white"></i>
                            </div>
                            <div class="mt-n1">
                                <h4>Email Us</h4>
                                <p class="m-0">rudrahingu001@gmail.com</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="section-title position-relative mb-4">
                        <h1 class="display-4">Registration</h1>
                    </div>
                    <div class="contact-form">
                        <form method="post" action="DB/register.jsp">
                            <div class="form-group">
                                <input type="text" class="form-control border-top-0 border-right-0 border-left-0 p-0" placeholder="Username" name="name" required="required">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control border-top-0 border-right-0 border-left-0 p-0" placeholder="Email" name="email" required="required">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control border-top-0 border-right-0 border-left-0 p-0" placeholder="Password" name="password" required="required">
                            </div>
                            <div>
                                <button class="btn btn-primary py-3 px-5" type="submit">Register</button>
                            </div><br><br>
                            <p class="m-0">Already have an account<a href ="http://localhost:8080/project/other/login.jsp">Sign in</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
</body>

</html>
<%@ include file="footer.jsp" %>
