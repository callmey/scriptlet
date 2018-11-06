<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register.jsp</title>
</head>
<script type="text/javascript">
	function check() {
		var name = document.getElementById("name");
		alert(name.value);
		  if(name.value=="") {
			
			
			}
		 /* else if(name.value!=null){
			document.frm.action = "registerOk.jsp";
			document.frm.method = "get";
			document.frm.submit();
		}  */ 
	}
</script>
<style type="text/css">
	body {
		font-family: "Amazon Ember",Arial,sans-serif;
		font-size: 13px;
  	 		line-height: 19px;
   		color: #111;
	}
	.container {
		margin-top: 30px;
	}


	label {
		font-weight: bold;
		margin-left: 10px;
	}

	.register_form {
		border: 1px solid lightgray;
		border-radius: 4px;
  		 	position: relative;
   		padding: 14px 14px;
   		padding-left: 30px;
   		width: 340px;
   		height: 500px;
   		margin: 0 auto;
	}

	.navbar {
		margin: 0 auto;
   		height: 50px;
   		width: 140px;
   		background: url("./아마존.PNG");
	}

	input {
		width: 298px;
		height: 27px;
  			margin: 6px;
  			border: 1px solid #a6a6a6;
   		border-top-color: #949494;
   		border-radius: 3px;
   		box-shadow: 0 1px 0 rgba(255,255,255,.5), 0 1px 0 rgba(0,0,0,.07) inset;
   		outline: 0;
   		margin-bottom: 10px;
		padding-left: 6px;
	}

	input:focus{
		border: 1px solid darkorange;
		box-shadow: 0px 0px 5px rgb(231,118,0);
	}

	.button_input {
	    background: linear-gradient(to bottom, rgb(245,215,141),rgb(241,198,92));
	    border: 1px solid #a88734;
	    cursor: pointer;
	    width: 305px;
	    height: 30px;
	    margin: 6px;
	    border-radius: 3px;

	}

	.button_input:hover {
		background: linear-gradient(to bottom, rgb(243,209,124),rgb(238,187,58));
	}

	.divider {
		height: 44px;
		width: 312px;
  			margin-bottom: -18px;
		    background: linear-gradient(to bottom,rgba(0,0,0,.14),rgba(0,0,0,.03) 3px,transparent);

	}

	a {
		color: #0066c0;
		text-decoration: none;
	}
	
	.divider::after {
		display: block;
	    width: 100%;
	    height: 44px;
	    background-color: transparent;
	    background: -webkit-linear-gradient(to right,#fff,rgba(255,255,255,0),#fff);
	    background: linear-gradient(to right,#fff,rgba(255,255,255,0),#fff);
	    content: "";
	}
</style>
<body>
<%-- 	<%
		String name = request.getParameter("name");
		if(name == null) {
			
		}
	%> --%>
	<div class="container">
		<div class="navbar">
		</div>
		<form class="register_form" name="frm">
			<h1>Create account</h1>
			<label>Your name</label> <br>
			<input type="text" name="name" id="name" autocomplete="off" tabindex="1">  <br>
			<label>Email</label>  <br>
			<input type="text" name="email" id="email">  <br>
			<label>Password</label>  <br>
			<input type="password" name="password" id="pw1" placeholder="At least 6 characters">  <br>
			<label>Re-enter password</label>  <br>
			<input type="password" name="password" id="pw2">  <br>
			<button type="submit" class="button_input" tabindex="11" onclick="check()">Create your Amazon account</button>
			<p>By creating an account, you agree to Amazon's <br><a href="#">Conditions of Use</a> and <a href="#">Privacy Notice.</a></p>
		<div class="divider"></div>

		<p>Already have an account? <a href="#">Sign in</a></p>
		</form>
	</div>
	
</body>
</html>