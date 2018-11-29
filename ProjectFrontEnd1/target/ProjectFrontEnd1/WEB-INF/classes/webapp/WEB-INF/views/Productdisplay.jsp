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
<h2>Submitted Product Information</h2>
      <table>
      <tr>
            <td>ID</td>
            <td>${ProductID}</td>
        </tr>
       <tr>
            <td>P_Name</td>
            <td>${ProductName}</td>
        </tr>
        <tr>
            <td>P_Price</td>
            <td>${ProductPrice}</td>
        </tr>
        <tr>
            <td>P_Des</td>
            <td>${ProductDescription}</td>
        </tr>
        <tr>
            <td>P_Disc</td>
            <td>${ProductDiscount}</td>
         </tr>
          
         </table>
</body>
</html>