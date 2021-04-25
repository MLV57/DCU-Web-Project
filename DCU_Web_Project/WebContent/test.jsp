<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>

<div id="div">Name: </div>
<input id="tag" type="text" name="user">

<button id="bite">Set the value of the input field</button>
<script>
$("#bite").click(function (e) {
    e.stopPropagation(); //Prevents the event from bubbling up the DOM tree, 
    //preventing any parent handlers from being notified of the event. 
    //In this case, it allows us to have a clickable div with another clickable div inside
    var x = $("#div").text();
    $("#tag").val(x);
    
});
</script>
</body>
</html>

