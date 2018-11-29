<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    padding: 5px
}
</style>
</head>
<body>
<h2>Add New Customer</h2>
<form:form method="POST" Action="addCustomer">
<table>
			<tr>
               <td>ID:</td>
               <td><form:input path = "id" /></td>
            </tr>
            <tr>
               <td>FirstName:</td>
               <td><form:input path = "firstname" /></td>
            </tr>
             <tr>
               <td>LastName:</td>
               <td><form:input path = "lastname" /></td>
            </tr>
            <tr>
               <td>Password:</td>
               <td><form:input path = "password" /></td>
            </tr>
            <tr>
               <td>Birth:</td>
               <td><form:input path = "birth" /></td>          
            </tr>
            <tr>
               <td>Ph.no:</td>
               <td><form:input path = "phonenumber" /></td>
              
            </tr>
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
         </table>
         </form:form> 
         </br></br>
         
         <table border="2">
         	<tr>
         		<th>id</th>
         		<th>firstname</th>
 				<th>lastname</th>
 				<th>password</th>
 				<th>birth</th>
 				<th>phonenumber</th>
 
 			</tr>
 			 <c:forEach var="cust" items="${custlist}">
 			 
 			<tr>
 				 <td>${cust.id}</td>
 				 <td>${cust.firstname}</td>
 				<td>${cust.lastname}</td>
 				<td>${cust.password}</td>
 				<td>${cust.birth}</td>
 				<td>${cust.phonenumber} </td>  
         	</tr>
          </c:forEach>
         </table> 


</body>
</html>