<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%@ include file="./../common/favicon.jsp"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">

</head>
<body>
<%@ include file="./../common/top.jsp"%>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <div class='col-md-3'></div>
        <div class="col-md-6">
            <div class="login-box well">
           			<form action="<%=contextPath%>/member/insert" method="post" name="myform">
                        <legend><i class="fa fa-file-text-o" aria-hidden="true">  Register</i></legend>
                        <br>
                        <div class="form-group">
                            <label for="id" class="ho"></label>
                            <input value='' name="id" id="username-email" placeholder="id" type="text" class="form-control" />
                        </div>
                        
                        <div class="form-group">
                            <label for="email" class="ho"></label>
                            <input value='' name="email" id="username-email" placeholder="Email Address" type="text" class="form-control" />
                        </div>
                     
                        <div class="form-group">
                            <label for="password" class="ho"></label>
                            <input id="password" value='' placeholder="Password" type="password" name="password" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="cpassword" class="ho"></label>
                            <input id="password" name="cpassword" value='' placeholder="Confirm Password" type="password" name="password" class="form-control" />
                        </div>
                        
      
                        <br>
                        <br>
                        <div class="form-group">
                            <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="Register Now" />
                        </div>
                        <div class="form-group">
                            <a href="<%=contextPath%>/member/login"><input type="button" class="btn btn-default btn-login-submit btn-block m-t-md" value="Back" /></a>
                        </div>
                        
                    </form>
                
            </div>
        </div>
        <div class='col-md-3'></div>
    </div>
</div>

</body>
</html>