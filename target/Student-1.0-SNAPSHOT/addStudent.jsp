<%@page import="com.studentDao"%>  
<jsp:useBean id="u" class="com.student"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=studentDao.save(u);  
if(i>0){  
response.sendRedirect("addStudent-success.jsp");  
}else{  
response.sendRedirect("addStudent-error.jsp");  
}  
%>  