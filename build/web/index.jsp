

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechBlog</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 93%, 61% 100%, 26% 94%, 0 100%, 0 0);

            }

        </style>
    </head>
    <body>
        <!--navbar-->

        <%@include file="normal_navbar.jsp" %>

        <!--end of navbar-->

        <!--banner-->

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white banner-background">
                <div class="container">
                    <h3 class="display-3">Welcome to TechBlog</h3>

                    <p>Welcome to technical blog ,world of technology.
                        A programming language is a formal language comprising a set of strings that produce various kinds of machine code output. Programming languages are used in computer programming to implement algorithms.
                    </p>
                    <p>
                        Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages.
                    </p>
                    <a href="register_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-paper-plane-o"></span> Start !It's Free</a>
                    <a href="login_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-key fa-spin" ></span> Login</a>
                </div>
            </div>

            <br>
        </div>

        <!--cards-->
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Read More...</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Python Programming</h5>
                            <p class="card-text">Python is an interpreted high-level general-purpose programming language.It is been used in many fields.</p>
                            <a href="#" class="btn btn-primary">Read More...</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Web Technology</h5>
                            <p class="card-text">Web technology refers to the means by which computers communicate with each other using markup languages and multimedia packages.</p>
                            <a href="#" class="btn btn-primary">Read More...</a>
                        </div>
                    </div>
                </div>

            </div>


            <div class="row">
                <div class="col-md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Maching Learning</h5>
                            <p class="card-text">Machine learning is the study of computer algorithms that improve automatically through experience and by the use of data. </p>
                            <a href="#" class="btn btn-primary">Read More...</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Internet Of Things(IOT)</h5>
                            <p class="card-text">Internet of Things - Technology and Protocols. IoT primarily exploits standard protocols and networking technologies.</p>
                            <a href="#" class="btn btn-primary">Read More...</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Blockchain</h5>
                            <p class="card-text">Blockchain technology is a structure that stores transactional records, also known as the block, of the public in several databases, known as the “chain,”</p>
                            <a href="#" class="btn btn-primary">Read More...</a>
                        </div>
                    </div>
                </div>

            </div>

        </div>



        <!--javascripts-->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
    </body>
</html>
