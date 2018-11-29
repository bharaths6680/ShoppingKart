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
 <h1>Add New Categery</h1>
      <form:form  action = "addCategery" method = "POST" >
      <table>
    
      		<tr>
               <td>id:</td>
               <td><form:input path ="id"/></td>
            </tr>
      		  <tr>
              <td>name:</td>
               <td><form:input path = "name"/></td>
            </tr>
            
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
             </tr>  
      </form:form>
      </table>
      </br> </br>
      <table style="width:25%" border="3">
     	 <tr>
      	  <th>id </th>
    	  <th>name</th>
      	</tr>
        <c:forEach var="cat" items="${catlist}">
      	<tr>
      		<td>${cat.id}</td>
      		<td>${cat.name}</td>
      	</tr>
      	</c:forEach>
      	</table>
</body>
</html>