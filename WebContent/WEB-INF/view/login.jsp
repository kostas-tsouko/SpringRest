<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>




<!-- 
Ayton ton kwdika kai ta css tou ta exoume pare apo auto to site:
https://colorlib.com/wp/html5-and-css3-login-forms/ -->



<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<!--===============================================================================================-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/util.css" />
<!--===============================================================================================-->
<!--<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/js/Login.js" />
===============================================================================================-->
</head>
<body >

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-85 p-b-20">
				<!--<form:form class="login100-form validate-form"
					action="${pageContext.request.contextPath}/authUser" method="POST">
					<form class="login100-form validate-form">-->
					<span class="login100-form-title p-b-70"> Welcome </span>
					<span class="login100-form-avatar"> <img
						src="https://eduguidegr.s3.amazonaws.com/filer_public_thumbnails/filer_public/2014/07/12/hua1.gif__200x200_q75_background-%23fff_subsampling-2.jpg"
						alt="AVATAR">
					</span>

					<div class="wrap-input100 validate-input m-t-85 m-b-35"
						data-validate="Enter username">
						<input id="user" class="input100" type="text" name="username" /> <span
							class="focus-input100" data-placeholder="Username"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-50"
						data-validate="Enter password">
						<input id="pass" class="input100" type="password" name="password" /> <span
							class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
				
						<button id="login" class="login100-form-btn" type="submit" onclick="login();" value="Authenticate">Login</button>
				
					<p id="error" style="color:red; padding: 30px; font-size:120%;"></p>
					
					</div>
							
				
				<!--</form:form>-->
			</div>
		</div>
	</div>
	

	<script  type="text/javascript">
    'use strict';
  
    window.onload =function(){
    	sessionStorage.clear();
	localStorage.clear();

    }
    function login() {
         var username = document.getElementById('user').value;
        var password = document.getElementById('pass').value;
        var id_comp;
        var psw_comp;
        var exists;
     

       

       
        //var ps=JSON.parse(xhr1.responseText);
       // password = ps.password;
     
 
        
      //  var info = sessionStorage.getItem("info");
       // var obj = JSON.parse(info);
 
    	 //  alert("count   "+count);
    	   // alert("encode   "+ xhr1.responseText);
    	   
    	    var  xhr = new XMLHttpRequest();
        xhr.open('GET', 'http://localhost:8080/Springpraktikh/api/company/all', false, username, password);
        xhr.onload = function() {
            if (xhr.status === 200) {
              //  alert('User\'s name is ' + xhr.responseText);
            }
            else {
                //alert('Request failed.  Returned status of ' + xhr.status);
            }
        };
        xhr.send();
        
        
      	

        
      
   /////////////////////////////////////////////////////////////////////////////////////////////////////////////     
      var  xhr1 = new XMLHttpRequest();
        xhr1.open('POST', 'http://localhost:8080/Springpraktikh/api/company/exists', true, username, password);
        xhr1.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr1.onload = function() {
            if (xhr1.status === 200) {
              //  alert('User\'s name is \n ' + xhr1.responseText);
            }
            else {
              //  alert('Request failed.  Returned status of ' + xhr1.status);
            }
            
            exists=xhr1.responseText;
            
     	  //alert("EXISTS  "+exists);
           if(exists=='true'){
        	
        	   sessionStorage.setItem("info",xhr.responseText);
           	sessionStorage.setItem("user",username);
           	sessionStorage.setItem("psw",password);
        		 window.location.href ='http://localhost:8080/SpringRest/menu'
           }else{
        	   document.getElementById("error").innerHTML = "Wrong Username/Password !";
        	   
           }
           
            
        };
       xhr1.send('id='+username+'&password='+password+'');
       
       
 
       
      

    }
    
</script>

</body>
</html>


