<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="myproject.member.model.Member"%>
<%@page import="java.util.*"%>
<%@page import="java.text.DecimalFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<% 
	//오늘 만들어 주는 코딩
	Date d = new Date(); 
	String now = d.toString();
	SimpleDateFormat formaType = new SimpleDateFormat("yyyy-MM-dd");
%>

<%
	String contextPath = request.getContextPath() + "";
	String pattern = "###,###" ;
	DecimalFormat df = new DecimalFormat( pattern ) ;
	int twelve = 12 ; //그리드 시스템의 숫자 값
%>  
<%
	//변수 url은 여러 군데서 사용되고 있어서 사용하지 못함
	String myurl = request.getRequestURL().toString() ;
	String uri = request.getRequestURI() ;
	int idx = myurl.indexOf(uri) ;
	
	//웹 서버의 이미지를 올릴 경로
	String uploadedFolder = myurl.substring(0, idx) + contextPath + "/upload/" ;

%> 

<%
	Member loginfo = (Member)session.getAttribute("loginfo") ;	
	String log = "", mem = "" ; 
	int whologin = 0 ; // 0 : 미로그인,  1 : 회원 로그인, 2 : 관리자 로그인
	
	if( loginfo == null ){
		whologin = 0 ; 
		
	}else{ //관리자는 아이디가 admin이라고 가정한다.
		if( loginfo.getId().equals("admin") ){ 
			whologin = 2 ; 
		}else{
			whologin = 1 ; //일반 사용자 로그인 
		}
	}
	session.setAttribute( "whologin", whologin ) ;
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_1.css">

    
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_2.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/font-mfizz/font-mfizz.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Menu Transition In Effects</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Montserrat'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Performance1.css">



</head>
<body>

</body>
</html>