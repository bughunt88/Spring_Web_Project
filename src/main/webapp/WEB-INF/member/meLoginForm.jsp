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
                    <form action="<%=contextPath%>/member/login" method="post">
                        <legend><i class="fa fa-users" aria-hidden="true" style="color: #38C5B9;">  Sign In</i></legend>
                        <br>
                        <div class="form-group">
                            <label for="ID" class="ho"></label>
                            <input value='' id="username-email" name="id" placeholder="ID" type="text" class="form-control" style="color: #38C5B9;" />
                        </div>
                     
                        <div class="form-group">
                            <label for="password" class="ho"></label>
                            <input id="password" value='' placeholder="Password" type="password" name="password" class="form-control" style="color: #38C5B9;"/>
                        </div>
      
                        <br>
                        <br>
                        <div class="form-group">
                            <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="Login" style="color: #38C5B9;" />
                        </div>
                        <div class="form-group">
                            <a href="<%=contextPath%>/member/insert" class="btn btn-default btn-block m-t-md" style="color: #38C5B9;">Create an account</a>
                        </div>
                    </form>
                
            </div>
        </div>
        <div class='col-md-3'></div>
    </div>
</div>

</body>
</html>