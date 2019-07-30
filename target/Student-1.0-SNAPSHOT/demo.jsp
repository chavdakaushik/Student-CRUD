<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new registration</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<form method="post"><br><br>
name :<input type="text" name="fname" id="name"/><br><br>
pass :<input type="text" name="lname" id="password"/><br><br>
Email :<input type="text" name="email" id="email" /><br><br>
mobile :<input type="text" name="email" id="mobile"/><br><br>
add :<input type="text" name="email" id="address"/><br><br>
<input type="submit" value="submit" id="save_data"/>
</form>
<script>
$(document).ready(function() {
$("#save_data").click(function() {
alert("succeess");
$.ajax({
url: "save.jsp",
type: "post",
data: {
name:$('#name').val(),
password:$('#password').val(),
email:$('#email').val(),
mobile:$('#mobile').val(),
address:$('#address').val(),
success : function(data){
}
}
});
});
});
</script>
</body>
</html>
