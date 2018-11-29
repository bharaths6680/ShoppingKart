<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Submitted Customer Information</h2>
      <table>
         <tr>
            <td>Firstname</td>
            <td>${Firstname}</td>
         </tr>
         <tr>
            <td>ID</td>
            <td>${id}</td>
         </tr>
          <tr>
            <td>Lastname</td>
            <td>${Lastname}</td>
         </tr>
         <tr>
            <td>Password</td>
            <td>${Password}</td>
         </tr>
         <tr>
            <td>Birth</td>
            <td>${Birth}</td>
         </tr>
          <tr>
            <td>Ph.no</td>
            <td>${Phonenumber}</td>
         </tr>
         
         </table>
</body>
</html>