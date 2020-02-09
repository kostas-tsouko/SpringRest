<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/view/jspf/header.jspf" %>
<body>
	<div class="ui segment">
	<h3 id="head">List of Job Offers</h3>

	<!--  add our html table here -->
	<table class="ui celled  striped table" id="list"></table>
</div>


<script type="text/javascript">
    'use strict';
    window.onload =function(){
    	var username = sessionStorage.getItem("user");
        var password =sessionStorage.getItem("psw");
    	var  xhr = new XMLHttpRequest();
        xhr.open('GET', 'http://localhost:8080/Springpraktikh/api/job_offers/offersforcompanies', false, username, password);
        xhr.onload = function() {
            if (xhr.status === 200) {
              //  alert('User\'s name is ' + xhr.responseText);
            }
            else {
                //alert('Request failed.  Returned status of ' + xhr.status);
            }
        };
        xhr.send();
        
        sessionStorage.setItem("offerlist",xhr.responseText);
    	var parser, xmlDoc,i;
    	var info = sessionStorage.getItem("offerlist");
    	//var x = document.getElementsByTagName("p");
    	//document.getElementById("welcome").innerHTML = info;
    	//<tr><th scope=\"row\">id</th><th scope=\"row\">firstname</th><th scope=\"row\">lastname</th><th scope=\"row\">email</th><th scope=\"row\">username</th><th scope=\"row\">password</th><th scope=\"row\">company_name</th><th scope=\"row\">enable</th></tr>
    	var table=""
    		var obj = JSON.parse(info);
    	var count = Object.keys(obj.job_offersList).length;
        var enabled;
    		for (i = 0; i <count; i++) { 
    			if(obj.job_offersList[i].enabled === 1){
   				 enabled = "Accepted"; 
   			}else if(obj.job_offersList[i].enabled === 0){
   				 enabled = "Pending";
   			}
    			
    		    table += "<tr><th scope=\"row\">ID</th><td>"+
    		    obj.job_offersList[i].id + 
    		    "</td></tr><tr><th scope=\"row\">Company Name</th><td>" +
    		    obj.job_offersList[i].companyName +
    		    "</td></tr><tr><th scope=\"row\">Job Name</th><td>" +
    		    obj.job_offersList[i].jobName +
    		    "</td></tr><tr><th scope=\"row\">Available Positions</th><td>" +
    		    obj.job_offersList[i].availablePositions +
    		    "</td></tr><tr><th scope=\"row\">Job Description</th><td>" +
    		  		 obj.job_offersList[i].jobDescription +
    		    "</td></tr><tr><th scope=\"row\">Condition</th><td>" +
    		    enabled+"</td></tr>";
    		  }
    	
        document.getElementById("list").innerHTML = table;
    /*   parser = new DOMParser();
xmlDoc = parser.parseFromString(info,"text/xml");

document.getElementById("name").innerHTML =
xmlDoc.getElementsByTagName("id")[0].childNodes[0].nodeValue;
*/
    }
    </script>

<%@ include file="/WEB-INF/view/jspf/footer.jspf" %>