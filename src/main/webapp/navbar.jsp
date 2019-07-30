<%-- 
    Document   : navbar
    Created on : 18-Jul-2019, 10:31:42 AM
    Author     : kaushik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Bootstrap CSS File--> 
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!--Libraries CSS Files--> 
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!--Main Stylesheet File--> 
        <link href="css/style.css" rel="stylesheet">

    </head>
    <body>
        <%

            response.setHeader("Cache-Control", "no-cache , no-store , no-revalidate");

            if (session.getAttribute("username") == null) {
        %>


        <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll" href="index.jsp">Home</a>
                <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
                        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link js-scroll" href="loginForm.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll" href="registrationForm.jsp">Register</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>


        <%
            response.sendRedirect("loginForm.jsp");
        } else {
        %>

        <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll" href="index.jsp">Home</a>
                <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
                        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link js-scroll" href="LogoutServlet">Logout</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>


        <%
            }

        %>

        <!--/ Nav End /-->


        <!-- JavaScript Libraries -->
        <script src="lib/jquery/jquery.min.js"></script>s
        <script src="lib/jquery/jquery-migrate.min.js"></script>
        <script src="lib/popper/popper.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/counterup/jquery.waypoints.min.js"></script>
        <script src="lib/counterup/jquery.counterup.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        <script src="lib/typed/typed.min.js"></script>

        <!--Template Main Javascript File--> 
        <script src="js/main.js"></script>

    </body>
</html>
