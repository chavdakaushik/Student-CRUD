<%@page import="com.studentDao.StudentDao" %>

<%--<jsp:useBean id="s" class="com.student.Student"></jsp:useBean>

<jsp:setProperty property="*" name="s"></jsp:setProperty>--%>

<%
    String sid = request.getParameter("id");
    
    int id = Integer.parseInt(sid);    
    
    StudentDao.delete(id);    
    
    response.sendRedirect("displayStudent.jsp");
%>