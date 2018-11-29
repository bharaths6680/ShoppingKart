<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
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
<h1> Add New Product</h1>
<form:form  method="POST" Action="addProduct" enctype="multipart/form-data">
	<table>
			<tr>
               <td>ID:</td>
               <td><form:input path = "productID" /></td>
              
           </tr>
           <tr>
               <td>P_Name:</td>
               <td><form:input path = "productName" />
               </td>
           </tr>
           <tr>
               <td>P_Price:</td>
               <td><form:input path = "productPrice" />
               </td>
           </tr>
           <tr>
               <td>P_Des:</td>
               <td><form:input path = "productDescription" /></td>
           </tr>
           <tr>
               <td>P_Disc:</td>
               <td><form:input path = "productDiscount" /></td>
            </tr>
            <tr>
            	<td>Categery:</td>
            	<td><form:input path="categery"/></td>
            <tr>
            	<td> upload a image </td>
            	<td><form:input type="file" path="image"/></td>
            </tr>
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "save"/>
               </td>
            </tr>
</form:form>
</table>  
         </br></br>
<table border="1">
         	<tr>
         		<th>productID</th>
         		<th>productName</th>
 				<th>productPrice</th>
 				<th>productDescription</th>
 				<th>productDiscount</th>
 				<th>categery</th>
 				<th>image</th>
 			</tr>
 			 <c:forEach var="P" items="${prodlist}">
 			<tr>
 				 
 				<td>${P.productID}</td> 
 				<td>${P.productName}</td>
 				<td>${P.productPrice}</td>
 				<td>${P.productDescription}</td>
 				<td>${P.productDiscount}</td>
 				<td>${P.categery}</td>
 
<td><img src="<c:url value='/resources/images/${P.productID}.jpg'></c:url>" height="30px" width="40px"></td>
 
 		   	</tr>
         </c:forEach>
</table>
</body>
</html>