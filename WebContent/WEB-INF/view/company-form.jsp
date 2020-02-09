<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  <%@ include file="/WEB-INF/view/jspf/header.jspf"%>
<div class="ui segment" >
<form id="form"></form>
</div>
<script type="text/javascript">
    'use strict';
    window.onload =function(){
    	var table="<h3>Make a Job Offer</h3><div class=\"form-group\"><label>Company Name</label><input type=\"text\" class=\"form-control\" id=\"company_name\"/></div><div class=\"form-group\"><label>Job Name</label><input type=\"text\" class=\"form-control\" id=\"job_name\"/></div><div class=\"form-group\"><label>Available Positions</label><input type=\"number\" class=\"form-control\" id=\"available_positions\"/></div><div class=\"form-group\"><label>Job Description</label><input type=\"text\" class=\"form-control\" id=\"job_description\"/></div><button class=\"btn btn-primary\" type=\"submit\" onclick=\"Add();\" value=\"Authenticate\">Save</button>"
 
      
        document.getElementById("form").innerHTML = table;
    }
    function Add() {
        var username = sessionStorage.getItem("user");
        var password = sessionStorage.getItem("psw");
        var company_name = document.getElementById('company_name').value;
        var job_name = document.getElementById('job_name').value;
        var available_positions = document.getElementById('available_positions').value;
        var job_description = document.getElementById('job_description').value;

     //   var params = 'orem=ipsum&name=binny';
        var  xhr = new XMLHttpRequest();
        xhr.open('POST', 'http://localhost:8080/Springpraktikh/api/job_offers/add', true, username, password);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function() {
            if (xhr.status === 200) {
                alert('User\'s name is ' + xhr.responseText);
            }
            else {
                alert('Request failed.  Returned status of ' + xhr.status);
            }
        };
        xhr.send('company_name='+company_name+'&job_name='+job_name+'&available_positions='+available_positions+'&job_description='+job_description+'');
   
       // localStorage.clear();
    }
    
</script>
</body>
</html>