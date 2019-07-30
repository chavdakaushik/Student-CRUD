<%-- 
    Document   : editForm
    Created on : 19-Jul-2019, 9:49:40 PM
    Author     : kaushik
--%>

<%@page import="com.student.Student"%>
<%@page import="com.studentDao.StudentDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" type="text/css" href="css/editForm.css">
    </head>
    <body>

        <%

            String sid = request.getParameter("id");

            int id = Integer.parseInt(sid);

            Student s = StudentDao.getStudentById(id);

        %>

        <div class="container">

            <form class="well form-horizontal" action="editStudent.jsp" method="post"  id="contact_form">
                <fieldset>

                    <!-- Form Name -->
                    <legend><center><h2><b>Update Form</b></h2></center></legend><br>

                    <!-- Text input-->
                    <td><input type='hidden' name='id' value="<%= s.getId()%>"/></td>
                    <div class="form-group">
                        <label class="col-md-4 control-label">Name</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input  name="name" placeholder="Name" class="form-control" value="<%= s.getName()%>" type="text">
                            </div>
                        </div>
                    </div>

                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label" >Password</label> 
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="password" placeholder="Passsword" value="<%= s.getReg_Password()%>" class="form-control"  type="text">
                            </div>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label">E-Mail</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input name="email" placeholder="E-Mail Address" class="form-control" value="<%= s.getEmail()%>" type="email">
                            </div>
                        </div>
                    </div>


                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Contact No.</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                <input name="mobile" placeholder="(639)" class="form-control" value="<%= s.getMobile()%>" type="text">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">Address</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input  name="address" placeholder="Address" class="form-control" value="<%= s.getAddress()%>" type="text">
                            </div>
                        </div>
                    </div>

                    <!-- Select Basic -->

                    <!-- Success message -->
                    <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4"><br>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
    </div><!-- /.container -->

    <!--<script src="js/editForm.js"></script>-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
