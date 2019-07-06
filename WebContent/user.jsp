<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>
<title>Add new user</title>
</head>
<body>
    <script>
        $(function() {
            $('input[name=dob]').datepicker();
        });
    </script>
    
    <div class="container">
    <div class="col-md-6">

    <form method="POST" action='UserController' name="frmAddUser">
       <label>  User ID : </label>
         <input type="text" class="form-control" readonly="readonly" name="userid"
            value="<c:out value="${user.userid}" />" /> <br /> 
        <label>  First Name : </label> 
        <input
            type="text" name="firstName" class="form-control"
            value="<c:out value="${user.firstName}" />" /> <br /> 
         <label>  Last Name :   </label>
         <input
            type="text" name="lastName" class="form-control"
            value="<c:out value="${user.lastName}" />" /> <br /> 
          <label> DOB :  </label>
        <input
            type="text" name="dob" class="form-control"
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" /> <br /> 
         <label> Email :  </label> 
         <input type="text" name="email" class="form-control"
            value="<c:out value="${user.email}" />" /> <br /> <input
            type="submit" value="Submit" />
    </form>
    
    </div>
    </div>
</body>
</html>