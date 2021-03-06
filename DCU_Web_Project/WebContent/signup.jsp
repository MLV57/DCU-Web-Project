<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>
    <link rel="stylesheet" href="style.css">
</head>

<body style="background:linear-gradient(rgb(242, 217, 199), rgb(237, 160, 109))">
<% String pseudo = request.getParameter("pseudo"); //email of the current user 
	   String id = request.getParameter("id"); //email of the current user
       String userSession = null,urlRedirect = null;
       if (pseudo != null && id !=null){
    	   userSession = "<div class='session'>"+pseudo +"<div class='sessionButton'><div class='button'><a href='profil.jsp'>My profil</a></div><div class='button'><a href='index.jsp'>Logout</a></div></div></div>"; //display my profil and logout button if the user is connected 
    	   urlRedirect = "?pseudo="+response.encodeURL(pseudo)+"&id="+id; //string appended to the link to pages accessible by url rewriting 
       }
       else {
    	   userSession = "<button type='button' class='button' id='myBtn' style='color: white;'>Login</button><div class='button'><a href='signup.jsp'>Sign up</a></div>"; //if the user isn't logged in display the login button 
    	   urlRedirect = ""; //no info to deliver to servlet 
       }  
	 %>
<header>
	<div id="headband">
        <a href="index.jsp<%= urlRedirect %>"><img src="pictures/logo_mini.jpg" alt="Logo"/></a>
        <nav>
            <ul>
                <li><a href="topics.jsp<%= urlRedirect %>">Topics</a></li>
                <li><a href="about.jsp<%= urlRedirect %>">About us</a></li>
                <li><a id="menuBtn" onclick="openNav()">**Special event**</a></li>
            </ul>
        </nav>  
        <div>
            <input type="text" name="research"  size=50 placeholder="Type your research here" />
            <input type="submit" value="Search"/>
        </div>
    </div>
	</header>


<div id="main_block">
    <h1 style="color: White">Sign Up</h1><br><br>
    <form action="insertDBregisterform" name="myForm" onsubmit="return validateForm()" method="post">
        <div class="formdesign" id="USname" style="color: Gainsboro">
            Username: <br><input type="text" name="fuser" required><b><span class="formerror"> </span></b>
        </div>
        <div class="formdesign" id="name" style="color: Gainsboro">
            First Name: <br><input type="text" name="fname" required><b><span class="formerror"> </span></b>
        </div>
        <div class="formdesign" id="sname" style="color: Gainsboro">
            Last Name: <br><input type="text" name="lname" required><b><span class="formerror"> </span></b>
        </div>
        <div class="formdesign" id="Gender" style="color: Gainsboro">
            Gender: <br><input type="radio" name="fgender" value="male"> <label for="male">Male</label>
            <input type="radio" name="fgender" value="female"> <label for="female">Female</label>
            <input type="radio" name="fgender" value="other"> <label for="other">Other</label>
            <b><span class="formerror"> </span></b>
        </div>
        <div class="formdesign" id="uname" style="color: Gainsboro">
            University Name: <br><input type="text" name="funinersity" required><b><span class="formerror"> </span></b>
        </div>
        <div class="formdesign" id="Eid" style="color: Gainsboro">
            Enrollment ID: <br><input type="text" name="fid" required><b><span class="formerror"> </span></b>
        </div>

        <div class="formdesign" id="email" style="color: Gainsboro">
            Email: <br><input type="email" name="femail" required><b><span class="formerror"> </span></b>
        </div>

        <div class="formdesign" id="phone" style="color: Gainsboro">
            Contact Number: <br><input type="number" name="fphone" required><b><span class="formerror"></span></b>
        </div>

        <div class="formdesign" id="pass" style="color: Gainsboro">
            Password: <br><input type="password" name="fpass" required><b><span class="formerror"></span></b>
        </div>

        <div class="formdesign" id="cpass" style="color: Gainsboro">
            Confirm Password: <br><input type="password" name="fcpass" required><b><span class="formerror"></span></b>
        </div>
        <div class="formdesign" id="country" style="color: Gainsboro">
            Country: <br><input type="text" name="fadd" required><b><span class="formerror"></span></b>
        </div>
        
        <div class="formdesign" id="city" style="color: Gainsboro">
            City: <br><input type="text" name="fadd" required><b><span class="formerror"></span></b>
        </div>
        
        <div class="formdesign" id="address" style="color: Gainsboro">
            Address: <br><input type="text" name="fadd" required><b><span class="formerror"></span></b>
        </div>
        
        <input class="but" type="submit" value="Submit">

    </form>
   </div>
    
    <footer>
            <div id="copyright">
                <h1>GogoChat</h1>
                <p>@GogoChat 2021</p>
            </div>
            <div id="follow_us">
                <h1>Follow us</h1>
                <div id ="links">
                    <a href="https://fr-fr.facebook.com/" title="Facebook"><img src="pictures/fb1.png" alt="Facebook" /></a>
                    <a href="https://twitter.com/" title ="Twitter"><img src="pictures/twitter1.png" alt="Twitter" /></a>
                    <a href="https://www.instagram.com/" title="Instagram"><img src="pictures/insta1.png" alt="Instagram" /></a>
                </div>
            </div>
            <div id="contact">
                <h1>Contact</h1>
                <a href="mailto:gogochat@gmail.com" title="Send us an email !">gogochat@gmail.com</a>
            </div>
        </footer>
    
    
</body>
<script>
    src = "signup.js"
</script>

</html>
    