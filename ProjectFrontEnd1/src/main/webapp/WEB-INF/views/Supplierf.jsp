<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    padding: 5px
}
</style>
</head>
<body>
 <h2>Add New Supplier</h2>
      <form:form method = "POST" action = "addSupplier">
         <table>
            <tr>
               <td>ID:</td>
               <td><form:input path = "supplierID" /></td>
            </tr>
            <tr>
               <td>Address:</td>
               <td><form:input path = "supplierAddress" /></td>
            </tr><tr>
               <td>Ph.no:</td>
               <td><form:input path = "supplierPhonenumber" /></td>
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
      		<th>supplierID</th>
      		<th>supplierAddress</th>
      		<th>supplierPhonenumber</th>
      	</tr>
      	<c:forEach var="suplist" items="${suplist}">
      	<tr>
      		<td>${suplist.supplierID}</td>
      		<td>${suplist.supplierAddress}</td>
      		<td>${suplist.supplierPhonenumber}</td>
      	</tr>
      	</c:forEach>
      	</table>
</body>
</html>