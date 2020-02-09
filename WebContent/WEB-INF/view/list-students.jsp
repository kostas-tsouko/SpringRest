
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/view/jspf/header.jspf"%>

	<div class="ui segment">
		<h3 id="head">List of Students</h3>

		<!--  add our html table here -->
		<table class="ui celled  striped table" id="list">
	
		
		</table>

	  </div>
<script  type="text/javascript">
'use strict';

window.onload =function() {
	var i=0;
	var username = sessionStorage.getItem("user");
	var password = sessionStorage.getItem("psw");
   // var id = document.getElementById('id').value;
    var url= "http://localhost:8080/Springpraktikh/api/StudentApplications/all";
    var  xhr = new XMLHttpRequest();
    xhr.open('GET', url, false, username, password);
  //  xhr.setRequestHeader("Content-Type", "text/plain;charset=UTF-8");
    xhr.onload = function() {
        if (xhr.status === 200) {
          //  alert('User\'s name is ' + xhr.responseText);
        }
        else {
          //  alert('Request failed.  Returned status of ' + xhr.status);
        }
    };
    xhr.send();

    sessionStorage.setItem("stdapp_info",xhr.responseText);

    
    
	var info = sessionStorage.getItem("stdapp_info");

    var table="<thead><th>id</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Resume</th><th>Job</th><th>Company Name</th><th>Condition</th><th>Accept</th><th>Deny</th></thead>"
		var obj = JSON.parse(info);
    var count = Object.keys(obj.stdAppsList).length;
    var enabled="0";
  
		for (i = 0; i <count; i++) { 
			if(obj.stdAppsList[i].enabled === 1){
				 enabled = "Accepted"; 
			}else if(obj.stdAppsList[i].enabled === 2){
				 enabled = "Denied";
			}else if(obj.stdAppsList[i].enabled === 0){
				 enabled = "Pending";
			}
		    table += "<tr><td>" +
		    obj.stdAppsList[i].id + 
		    "</td><td>" +
		    obj.stdAppsList[i].firstName +
		    "</td><td>" +
		    obj.stdAppsList[i].lastName +
		    "</td><td>" +
		    obj.stdAppsList[i].email +
		    "</td><td>" +
		    obj.stdAppsList[i].resume +
		    "</td><td>" +
		    obj.stdAppsList[i].job +
		    "</td><td>"+
		    obj.stdAppsList[i].companyName +
		    "</td><td>"+
		    enabled+"</td><td><button class=\"btn btn-success\" type=\"button\" onclick=\"accept('"+obj.stdAppsList[i].id+"');\" value=\"Authenticate\">Accept</button></td><td><button class=\"btn btn-danger\" type=\"button\" onclick=\"deny('"+obj.stdAppsList[i].id+"');\" value=\"Authenticate\">Deny</button></td></tr>";
		  }
		
    document.getElementById("list").innerHTML = table;
    

    
} 
function accept(i) {
	var username = sessionStorage.getItem("user");
	var password = sessionStorage.getItem("psw");

var url= "http://localhost:8080/Springpraktikh/api/StudentApplications/accept/"+i
var  xhr2 = new XMLHttpRequest();
xhr2.open('PUT', url, false, username, password);
//  xhr.setRequestHeader("Content-Type", "text/plain;charset=UTF-8");
xhr2.onload = function() {
    if (xhr2.status === 200) {
       // alert('User\'s name is ' + xhr2.responseText);
    }
    else {
       // alert('Request failed.  Returned status of ' + xhr2.status);
    }
};
xhr2.send();
location.reload();
// view request status
//alert(request.status);
//window.location.replace("http://localhost:8080/SpringRest/stdapps");

}

function deny(i) {

	  
	var username = sessionStorage.getItem("user");
	var password = sessionStorage.getItem("psw");
	var url= "http://localhost:8080/Springpraktikh/api/StudentApplications/deny/"+i
    var  xhr3 = new XMLHttpRequest();
    xhr3.open('PUT', url, false, username, password);
  //  xhr.setRequestHeader("Content-Type", "text/plain;charset=UTF-8");
    xhr3.onload = function() {
        if (xhr3.status === 200) {
            //alert('User\'s name is ' + xhr3.responseText);
        }
        else {
           // alert('Request failed.  Returned status of ' + xhr3.status);
        }
    };
    xhr3.send();
    location.reload();
    // view request status
    //alert(request.status);
  
    }
    </script>   


	<%@ include file="/WEB-INF/view/jspf/footer.jspf"%>