<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="competition.css" />
    <script src="jquery-3.5.1.min.js"></script>
    <script src="competition.js"></script>
    <title>Enter Our Competition!</title>
</head>

<body>
<% String pseudo = request.getParameter("pseudo"); //email of the current user 
	   String id = request.getParameter("id"); //email of the current user
       String userSession = null,urlRedirect = null;
       if (pseudo != null && id !=null){
    	   userSession = "<div class='session'>"+pseudo+"<div class='sessionButton'><div class='button'><a href='profil.jsp'>My profil</a></div><div class='button'><a href='index.jsp'>Logout</a></div></div></div>"; //display my profil and logout button if the user is connected 
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
            </ul>
        </nav>
        <div>
            <input type="text" name="research"  size=50 placeholder="Type your research here" />
            <input type="submit" value="Search"/>
        </div>
        <%= userSession %>
    </div>

</header>

<div id="flex-container">
    <div id="main_block">
        <h1>Fill out the form for a chance to win</h1></br>
        <form name="table" id="table" onsubmit="validateForm()">
            <table>
                <tr>
                    <td>
                        <label for="name">Name*</p>
                    </td>
                    <td>
                        <input id="name" name="name" title="name" type="text" placeholder="Enter Name..." size="24" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="age">Age</label>
                    </td>
                    <td>
                        <input id="age" name="age" title="age" type="number" placeholder="Enter Age..." size="24" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="gender">Gender</label>
                    </td>
                    <td>
                        <input id="gender" name="gender" title="gender" type="text" placeholder="Enter Gender..." size="24" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="phone">Phone</label>
                    </td>
                    <td>
                        <input id="phone" name="phone" title="phone" type="text" placeholder="Enter Phone Number..." size="24"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="email">Email*</label>
                    </td>
                    <td>
                        <input id="email" name="email" title="email" type="email" placeholder="Enter Email Address..." size="24" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="event">Event</label>
                    </td>
                    <td>
                        <input id="event" name="event" title="event" type="text" placeholder="Where would you go..."size="24" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="from">From</label>
                    </td>
                    <td>
                        <input id="from" name="from" title="from" type="text" placeholder="Where are you from..." size="24" />
                    </td>
                </tr>
                <tr>
                <tr>
                    <td>
                        <label for="why">Why*</label>
                    </td>
                    <td>
                        <input id="why" name="why" title="why" type="text" placeholder="Why should you win..."size="24" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="date">Date</label>
                    </td>
                    <td>
                        <input id="date" name="date" title="date" type="date" placeholder="Todays Date Is..."size="24" />
                    </td>
                </tr>
            </table>
            <br>
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>

    <div id="main_block3">
        <h1> Enter our Competition !</h1>
        <h2> Be in with a chance to win a holiday for two to a destination of your choice!</h2>
        <img src="pictures/holiday.jpg">
    </div>

    <div id="main_block2">
        <h1> End of the event in </h1>
        <p id="timer"></p>
    </div>

</div>
<footer>
    <div id="copyright">
        <h1>GoGochat</h1>
        <p>@GoGoChat 2021</p>
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
        <a href="mailto:nameforum@gmail.com" title="Send us an email !">gogochat@gmail.com</a>
    </div>
</footer>
<script src="carousel.js"></script>
<script>
    new Carousel(document.querySelector('#carousel1'),{
        slidesToScroll: 1,
        slidesVisible: 3,
        loop: true
    })
</script>
<script>
    new Carousel(document.querySelector('#carousel2'),{
        slidesToScroll: 1,
        slidesVisible: 3,
        loop: true
    })
</script>
<script>
    new Carousel(document.querySelector('#carousel3'),{
        slidesToScroll: 1,
        slidesVisible: 3,
        loop: true
    })
</script>
<script>
    new Carousel(document.querySelector('#carousel4'),{
        slidesToScroll: 1,
        slidesVisible: 3,
        loop: true
    })
</script>
</body>
</html>
