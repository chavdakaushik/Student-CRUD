<%@page import="com.studentDao.StudentDao"%> 

<jsp:useBean id="s" class="com.student.Student"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/> 

<%

    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String address = request.getParameter("address");

    StudentDao.update(s);
    response.sendRedirect("displayStudent.jsp");

%>  