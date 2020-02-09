<%@ include file="/WEB-INF/view/jspf/header.jspf"%>
<body>
<!--  <form action="http://localhost:8080/SpringMvc1/api/StudentApplications/delete/{id}" modelAttribute="customer" method="POST">
-->
  <input type="text" id="id">
  <br>
  <input onclick="dlt();" type="submit" value="Submit">
<!--</form>-->

<script  type="text/javascript">
function dlt() {
	
	var username = localStorage.getItem("user");
    var password = localStorage.getItem("psw");
    var id = document.getElementById('id').value;
    alert(id);
	var url= "http://localhost:8080/Springpraktikh/api/StudentApplications/delete/"+id
    var  xhr = new XMLHttpRequest();
    xhr.open('DELETE', url, false, username, password);
  //  xhr.setRequestHeader("Content-Type", "text/plain;charset=UTF-8");
    xhr.onload = function() {
        if (xhr.status === 200) {
            alert('User\'s name is ' + xhr.responseText);
        }
        else {
            alert('Request failed.  Returned status of ' + xhr.status);
        }
    };
    xhr.send();
    // view request status
    alert(request.status);
}
    </script>   
    <%@ include file="/WEB-INF/view/jspf/footer.jspf"%>