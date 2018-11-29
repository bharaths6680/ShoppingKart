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
               <td><form:label path="id"></form:label>ID:</td>
               <td><form:input path = "id" /></td>
            </tr>
            <tr>
               <td><form:label path="Firstname"></form:label>FirstName:</td>
               <td><form:input path = "Firstname" /></td>
            </tr>
             <tr>
               <td><form:label path="Lastname"></form:label>LastName:</td>
               <td><form:input path = "Lastname" /></td>
            </tr>
            <tr>
               <td><form:label path="Password"></form:label>Password:</td>
               <td><form:input path = "Password" /></td>
            </tr>
            <tr>
               <td><form:label path="Birth"></form:label>Birth:</td>
               <td><form:input path = "Birth" /></td>          
            </tr>
            <tr>
               <td><form:label path="Phonenumber"></form:label>Ph.no:</td>
               <td><form:input path = "Phonenumber" /></td>
              
            </tr>
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
         </table>
         </form:form> 
         </br></br>
         
         <table border="1">
         	<tr>
         		<th>id</th>
         		<th>Firstname</th>
 				<th>Lastname</th>
 				<th>Password</th>
 				<th>Phonenumber</th>
 			</tr>
 			 <c:forEach var="cust" items="${custlist}">
 			 
 			<tr>
 				 <td>${cust.ID}</td>
 				 <td>${cust.Firstname}</td>
 				<td>${cust.Lastname}</td>
 				<td>${cust.Password}</td>
 				<td>${cust.Birth}</td>
 				<td>${cust.Ph.no} </td>  
         	</tr>
          </c:forEach>
         </table> 


</body>
</html>