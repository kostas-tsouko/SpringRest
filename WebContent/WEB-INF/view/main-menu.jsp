<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/jspf/header.jspf"%>


<br><br>
<table class="table" id="Info"></table>

<script type="text/javascript">
    'use strict';
    window.onload =function(){
    	
    	var parser, xmlDoc,i;
    	var info = sessionStorage.getItem("info");
    	
    	var table=""
    		var obj = JSON.parse(info);
    	var count = Object.keys(obj.companyList).length;
      //  alert(count);
    		for (i = 0; i <count; i++) { 
    		    table += "<tr><th scope=\"row\">Id</th><td>"+
    		    obj.companyList[i].id + 
    		    "</td></tr><tr><th scope=\"row\">First Name</th><td>" +
    		    obj.companyList[i].firstName +
    		    "</td></tr><tr><th scope=\"row\">Last Name</th><td>" +
    		    obj.companyList[i].lastName +
    		    "</td></tr><tr><th scope=\"row\">Email</th><td>" +
    		    obj.companyList[i].email +
    		    "</td></tr><tr><th scope=\"row\">Company Name</th><td>" +
    		    obj.companyList[i].company_name +
    		    //"</td></tr><tr><th scope=\"row\">header 1</th><td>" +
    		   // obj.companyList[i].password +
    		    //"</td></tr><tr><th scope=\"row\">header 1</th><td>" +
    		   // obj.companyList[i].company_name +
    		   // "</td></tr><tr><th scope=\"row\">header 1</th><td>" +
    		   // obj.companyList[i].enabled +
    		       		    "</td></tr>";
    		  }
    	
        document.getElementById("Info").innerHTML = table;
    /*   parser = new DOMParser();
xmlDoc = parser.parseFromString(info,"text/xml");

document.getElementById("name").innerHTML =
xmlDoc.getElementsByTagName("id")[0].childNodes[0].nodeValue;
*/
    }
    </script>
</body>
</html>