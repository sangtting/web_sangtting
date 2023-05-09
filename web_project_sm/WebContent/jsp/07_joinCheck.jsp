<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.beans.web_project.JoinVo" %>

<%-- <jsp:useBean id="joinVo" class="com.beans.web_project.JoinVo"></jsp:useBean> --%>
<jsp:setProperty name="joinVo" property="*" />

<%-- 
	//request.setCharacterEncoding("utf-8");
	
	JoinVo joinVo = new JoinVo();

	//회원가입폼에서 넘어오는 데이터 변수에 저장
	joinVo.setId(request.getParameter("id"));
	joinVo.setPass(request.getParameter("pass"));
	joinVo.setName(request.getParameter("name"));
	joinVo.setGender(request.getParameter("gender"));
	joinVo.setEmail1(request.getParameter("email1"));
	joinVo.setEmail2(request.getParameter("email2"));
	joinVo.setAddr1(request.getParameter("addr1"));
	joinVo.setAddr2(request.getParameter("addr2"));
	joinVo.setTel(request.getParameter("tel"));
	joinVo.setPhone1(request.getParameter("phone1"));
	joinVo.setPhone2(request.getParameter("phone2"));
	joinVo.setPhone3(request.getParameter("phone3"));
	joinVo.setHobby(request.getParameterValues("hobby"));
	joinVo.setPhone1Intro(request.getParameter("intro"));
	
	String hobbyList = String.join(",", joinVo.gethobby());
	String email = joinVo.getEmail1()+"@"+ joinVo.getEmail2();
	String address = joinVo.getAddr1() + joinVo.getAddr2();
	String phoneNumber = joinVo.getPhone1()+"-"+joinVo.getPhone2()+"-"+joinVo.getPhone3();
	
	/* String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String tel = request.getParameter("tel");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String [] hobby = request.getParameterValues("hobby");
	String intro = request.getParameter("intro");
	
	String hobbyList = String.join(",",hobby);
	String email = email1+"@"+email2;
	String address = addr1 + addr2;
	String phoneNumber = phone1+"-"+phone2 +"-"+phone3; */
--%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입정보</h1>
	<ul>
		<li>
			<label>아이디 : </label>
			<div><%= joinVo.getId() %></div>
		</li>
		<li>
			<label>패스워드 : </label>
			<div><%= joinVo.getPass() %></div>
		</li>
		<li>
			<label>성명 : </label>
			<div><%= joinVo.getName() %></div>
		</li>
		<li>
			<label>성별 : </label>
			<div><%= joinVo.getGender() %></div>
		</li>
		<li>
			<label>이메일 : </label>
			<div><%= email %></div>
		</li>
		<li>
			<label>주소 : </label>
			<div><%= address %></div>
		</li>
		<li>
			<label>통신사 : </label>
			<div><%= joinVo.gettel() %></div>
		</li>
		<li>
			<label>휴대폰 번호 : </label>
			<div><%= phoneNumber %></div>
		</li>
		<li>
			<label>취미 : </label>
			<div><%= hobbyList %></div>
		</li>
		<li>
			<label>자기소개 : </label>
			<div><%= intro %></div>
		</li>
	</ul>
</body>
</html>