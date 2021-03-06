<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="index.css" />
<title>About us</title>
</head>

<body style="background-color:rgba(110, 138, 143 ,0.4);">
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
                        <li><a id="menuBtn" onclick="openNav()">**Special event**</a></li>
                    </ul>
                </nav>  
                <div>
                    <input type="text" name="research"  size=50 placeholder="Type your research here" />
                    <input type="submit" value="Search"/>
                </div>
                <%= userSession %>
            </div>
        </header>




<div id="leftcolumn">
<a href="#"><button onclick="show1()">O/C the add</button></a>
<div id="pub1">
    <iframe width="180px" height="520px" src="https://www.ionos.fr/digitalguide/fileadmin/DigitalGuide/Screenshots_2019/bannergestaltung-6.png"></iframe>
</div>
<div id="pub2">
	<h2 style="color:white " >Ad by Golak</h2>
	<a href="#"><button onclick="nothing()">Stop seeing this ad</button></a>
	<div id="adtext">
	<p style="color:white">We will try to not show you this ad again</p>
	</div>
</div>
<br>
<a href="#"><button onclick="show2()">O/C the add</button></a>
<div id="pub3">
<iframe width="180px" height="520px" src="https://www.ionos.fr/digitalguide/fileadmin/DigitalGuide/Screenshots_2019/bannergestaltung-10.png"></iframe>
</div>
<div id="pub4">
	<h2 style="color:white " >Ad by Golak</h2>
	<a href="#"><button onclick="nothing2()">Stop seeing this ad</button></a>
	<div id="adtext2">
	<p style="color:white">We will try to not show you this ad again</p>
	</div>
</div>
</div>



<div id="main">

<div id="main_block3">
<font face = "Monospace" size = "7" color="white" >About us</font>
</div>

<div id="main_block4" style="background-color: rgb(136, 140, 140);">
<h3 style="color: rgb(244, 232, 237)"> eximia fortuna </h3>
Ego vero sic intellego, Patres conscripti, nos hoc tempore in provinciis decernendis perpetuae pacis habere oportere rationem. Nam quis hoc non sentit omnia alia esse nobis vacua ab omni periculo atque etiam suspicione belli?<br>
<br>Utque aegrum corpus quassari etiam levibus solet offensis, ita animus eius angustus et tener, quicquid increpuisset, ad salutis suae dispendium existimans factum aut cogitatum, insontium caedibus fecit victoriam luctuosam.
</div>




<div id="main_block5" style="background-color: rgb(152, 157, 158);">
<h3 style="color: rgb(244, 232, 237)"> Who we are  </h3>
Novo denique perniciosoque exemplo idem Gallus ausus est inire flagitium grave, quod Romae cum ultimo dedecore temptasse aliquando dicitur Gallienus, et adhibitis paucis clam ferro succinctis vesperi per tabernas palabatur et conpita quaeritando Graeco sermone, cuius erat inpendio gnarus.<br> quid de Caesare quisque sentiret. et haec confidenter agebat in urbe ubi pernoctantium luminum claritudo dierum solet imitari fulgorem. postremo agnitus saepe iamque, si prodisset, conspicuum se fore contemplans, non nisi luce palam egrediens ad agenda quae putabat seria cernebatur. et haec quidem medullitus multis gementibus agebantur.
</div>



<div id="key_numbers">
                <div class="numbers">
                    <span class="title_number">3+ million</span>
                    <span class="description_number">visitors per week</span>
                </div>
                <div class="numbers">
                    <span class="title_number">5+ million</span>
                    <span class="description_number">suscribers in 2020</span>
                </div>
                <div class="numbers">
                    <span class="title_number">500 000+</span>
                    <span class="description_number">discussions available</span>
                </div>
                <div class="numbers">
                    <span class="title_number">5000+</span>
                    <span class="description_number">messages posted each day</span>
                </div>
            </div>




<div id="main_block4" style="background-color: rgb(98, 102, 102);">
<h3 style="color: rgb(244, 232, 237)"> insontium caedibus </h3>
Nec piget dicere avide magis hanc insulam populum Romanum invasisse quam iuste. Ptolomaeo enim rege foederato nobis et socio ob aerarii nostri angustias iusso sine ulla culpa proscribi ideoque hausto veneno voluntaria morte deleto et tributaria facta est et velut hostiles eius exuviae classi inpositae in urbem advectae sunt per Catonem, nunc repetetur ordo gestorum.
</div>


<div id="main_block5" style="background-color: rgb(116, 120, 120);">
<h3 style="color: rgb(244, 232, 237)"> publicae consulere oporteret </h3>
Apud has gentes, quarum exordiens initium ab Assyriis ad Nili cataractas porrigitur et confinia Blemmyarum, omnes pari sorte sunt bellatores seminudi coloratis sagulis pube tenus amicti, equorum adiumento pernicium graciliumque camelorum per diversa se raptantes, in tranquillis vel turbidis rebus: nec eorum quisquam aliquando stivam adprehendit vel arborem colit aut arva subigendo quaeritat victum, sed errant semper per spatia longe lateque distenta sine lare sine sedibus fixis aut legibus: nec idem perferunt diutius caelum aut tractus unius soli illis umquam placet.
</div>
</div>







<script>
function show1() {
	  var x = document.getElementById("pub1");
	  if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	  
	  var y = document.getElementById("pub2");
	  if (y.style.display === "block") {
	    y.style.display = "none";
	  } else {
	    y.style.display = "block";
	  }
	}

function nothing() {
	var y = document.getElementById("adtext");
	  if (y.style.display === "block") {
	    y.style.display = "none";
	  } else {
	    y.style.display = "block";
	  }
}

function show2() {
	  var x = document.getElementById("pub3");
	  if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	  
	  var y = document.getElementById("pub4");
	  if (y.style.display === "block") {
	    y.style.display = "none";
	  } else {
	    y.style.display = "block";
	  }
	}
	
function nothing2() {
	var x = document.getElementById("adtext2");
	  if (x.style.display === "block") {
	    x.style.display = "none";
	  } else {
	    x.style.display = "block";
	  }
}
</script>

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
</html>
