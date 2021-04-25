<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        
        
        <script src="jquery-3.5.1.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="modal_login.css" />
        <link rel="stylesheet" href="index.css" />
        <script src="index.js"></script>
        <!-- ChatBot -->
    <link rel="stylesheet" type="text/css" href="responsive.css">

    <!-- ChatBot -->
    <link rel="stylesheet" type="text/css" href="jquery.convform.css">
    
    <script type="text/javascript" src="jquery.convform.js"></script>
    <script type="text/javascript" src="custom.js"></script>
    <!-- ChatBot -->

        <title>Home page</title>
    </head>
    
    <body>
	<% String email = request.getParameter("email"); //email of the current user 
    	   String status = request.getParameter("status"); //status of the current user 
	       String userSession = null,urlRedirect = null,urlToServlet = null;
	       if (email != null){
	    	   userSession = "<div class='session'>"+email+"<a href='LogoutServlet'>Logout</a></div>"; //division that contains the email of the user and logout link
	    	   urlRedirect = "?email="+response.encodeURL(email)+"&status="+status; //string appended to the link to pages accessible by url rewriting 
	    	   urlToServlet = "?email="+response.encodeURL(email)+"&status="+status+"&"; //string appended to the link to pages accessible by servlets
	       }
	       else {
	    	   userSession = "<div id='connection' class='button'> <a href='login.jsp'>Login</a> </div>"; //if the user isn't logged in display the login button 
	    	   urlRedirect = ""; //no info to deliver to servlet 
	    	   urlToServlet = "?"; //no info to deliver to servlet 
	       }  
	    %>
        <div id="dyanamicMenu" class="dyanamicMenu">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <h1>**</h1>
            <h1>From 15th April to 15th May 2021</h1>
            <h1>**</h1>
            <h2>Be in with a chance to win a holiday for two to a destination of your choice !</h2>
            <h2>You just have to fill out a form to participate !</h2>
            <h1>Enter Our Competition !</h1>
            <a href="competition.jsp<%= urlRedirect %>">=> Click HERE <=</a>
        </div>

        <header>
            <div id="headband">
                <a href="index.jsp<%= urlRedirect %>"><img src="pictures/logo_mini.jpg" alt="Logo"/></a>
                <nav>
                    <ul>
                        <li><a href="topics.jsp<%= urlRedirect %>">Topics</a></li>
                        <li><a href="about.html<%= urlRedirect %>">About us</a></li>
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
        <div id="main_block">
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                 <div class="modal-dialog">
            
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
              <p style="text-align: center; padding: .25em;" id="incorrect"></p>
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="button" class="btn btn-success btn-block" onclick="ValidationFunction()"><span class="glyphicon glyphicon-off"></span> Login</button>
              <p style="margin:1em;text-align:center">Or login with :</p>
              <button type="button" class="btn  btn-block google"><i class="fa fa-google"></i> Google</button>
              <button type="button" class="btn btn-block facebook"><i class="fa fa-facebook"></i> Facebook</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal" ><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="signup.jsp<%= urlRedirect %>">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
        
      </div>
      <!-- End modal content-->
    </div>
  </div> 
  <!-- End Modal-->
            <div id = "logo"><img src="pictures/logo.jpg" alt="Logo"/></div>
            <h1 class="slogan">Every topics, <span>where</span> you want, <span>when</span> you want</h1>
            <div class="animation_topics">
                <div class="animation_window slogan">
                    <span>
                        <ul>
                            <li>Technology</li>
                            <li>Sciences</li>
                            <li>Art</li>
                            <li>Literature</li>
                        </ul>
                    </span>
                </div>
            </div>
            <script>
                function createWordListAnimation(animNode, delay){
                // Fetch the DOM elements.
                var animWindow = animNode.querySelector(".animation_window");
                var ul = animWindow.querySelector("ul");
                var lis = ul.querySelectorAll("li");
            
                // Copy the animation's window to create the gray list.
                var grayList = animWindow.cloneNode(true);
                var grayUl = grayList.querySelector("ul");
                grayList.style.visibility="hidden";
                grayList.classList.remove("animation_window");
                grayList.classList.add("animation-gray-list");
                animNode.insertBefore(grayList, animWindow);
            
                // This function shows the li number `liNum`.                     
                function goTo(liNum){
                var li = lis[liNum];
                var liTop = li.getBoundingClientRect().top;
                var ulTop = ul.getBoundingClientRect().top;
                var liOffset = liTop - ulTop;
                ul.style.top = -liOffset + "px";
                grayUl.style.top = -liOffset + "px";

                li.style.visibility="visible";
                }
            
                // Set up an interval that changes the current li every `delay` ms.
                var current = 0;
                // We need a boolean to know if the animation is going up or down.
                var ascending = true;
                // Create the interval.
                return setInterval(function(){
                ascending = ascending && current + 1 < lis.length || current === 0;
                current = ascending ? current + 1: current - 1;
                goTo(current);
                }, delay);
                }
            
                createWordListAnimation(document.querySelector(".animation_topics"), 1500 /* (ms) */);
            </script>
            <div id="deco"></div>
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
            <div id="topics">
                <div class="topics_element">
                    <a href="topics.jsp#technology<%= urlRedirect %>">
                        <div class="tech_slide" >
                            <img src="pictures/technology.jpg"  alt="Tech"/>
                            <img src="pictures/technology2.jpg">
                            <img src="pictures/technology3.jpg">
                        </div>
                        <div class="topics_content">
                            <h1>Technology</h1>
                            <h3>Discuss the latest technologies that human have created : AI, nanotechnology, advanced electronics and many more ...</h3>
                        </div>    
                    </a>
                </div>
                <div class="topics_element">
                    <a href="topics.jsp#sciences<%= urlRedirect %>">
                        <div class="sci_slide">
                            <img src="pictures/sciences.jpg" alt="Sciences"/>
                            <img src="pictures/sciences2.jpg">
                            <img src="pictures/sciences3.jpg">
                        </div>
                        <div class="topics_content">
                            <h1>Sciences</h1>
                            <h3>Discover the latest scientific advances of the moment in many fields: astronomy, biology, physics ...</h3>
                        </div>
                    </a>    
                </div>
                <div class="topics_element" >
                    <a href="topics.jsp#art<%= urlRedirect %>">
                        <div class="art_slide">
                            <img src="pictures/art.jpg" alt="Art"/>
                            <img src="pictures/art2.jpg">
                            <img src="pictures/art3.jpg">
                        </div>
                        <div class="topics_content">
                            <h1>Art</h1>
                            <h3>Contemplate the latest trendy works or dive into the heart of History and the different artistic currents that have crossed it...</h3>
                        </div>
                    </a>    
                </div>
                <div class="topics_element" >
                    <a href="topics.jsp#literature<%= urlRedirect %>">
                        <div class="lit_slide">
                            <img src="pictures/literature.jpg" alt="Literature"/>
                            <img src="pictures/literature2.jpg">
                            <img src="pictures/literature3.jpg">
                        </div>
                        <div class="topics_content">
                            <h1>Literature</h1>
                            <h3>Find literary classics or discover new, lesser-known authors...</h3>
                        </div>
                    </a>   
                </div>
            </div>
            <div id="featured">
                <div class="featured_element" id="popular">
                    <h1>Popular discussions</h1>
                    <div class="featured_discussion">
                        <h1>Title of the discussion</h1>
                        <h3>Content of the last message</h3>
                    </div>
                    <div class="featured_discussion">
                        <h1>Title of the discussion</h1>
                        <h3>Content of the last message</h3>
                    </div>
                    <div class="featured_discussion">
                        <h1>Title of the discussion</h1>
                        <h3>Content of the last message</h3>
                    </div>
                </div>
                <div class="featured_element" id="last">
                    <h1>Last discussions</h1>
                    <div class="featured_discussion">
                        <h1>Title of the discussion</h1>
                        <h3>Content of the last message</h3>
                    </div>
                    <div class="featured_discussion">
                        <h1>Title of the discussion</h1>
                        <h3>Content of the last message</h3>
                    </div>
                    <div class="featured_discussion">
                        <h1>Title of the discussion</h1>
                        <h3>Content of the last message</h3>
                    </div>
                </div>
            </div>                
        </div>
            
            <!-- ChatBot -->
    <div class="chat_icon">
        <i href=""><img src="chatgogo.jpg" alt="Logo" /></i>
    </div>

    <div class="chat_box">
        <div class="my-conv-form-wrapper">
            <form action="" method="GET" class="hidden">

                <select data-conv-question="Hello! How can I help you" name="category">
			<option value="Technology">Technology ?</option>
			<option value="Sciences">Sciences ?</option>
			<option value="Art">Art ?</option>
			<option value="Literature">Literature ?</option>
		  </select>

                <div data-conv-fork="category">
                    <div data-conv-case="Technology">
                        <input type="text" name="TechName" data-conv-question="Tech type (AI&Cryptography)">
                    </div>
                    <div data-conv-case="Sciences">
                        <input type="text" name="SciName" data-conv-question="Astronomy & Biology">
                    </div>
                    <div data-conv-case="Art">
                        <input type="text" name="ArtName" data-conv-question="Artwork type (Painting&Sculpture)">
                    </div>
                    <div data-conv-case="Literature" data-conv-fork="first-question2">
                        <input type="text" name="LitName" data-conv-question="Poetry & Theater">
                    </div>
                </div>

                <input type="text" name="name" data-conv-question="Please, Enter your name">

                <input type="text" data-conv-question="Hi {name}, <br> It's a pleasure to meet you." data-no-answer="true">

                <input data-conv-question="Enter your e-mail" data-pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" type="email" name="email" required placeholder="What's your e-mail?">

                <select data-conv-question="Please Confirm">
			
                <option value="Yes">Confirm</option>

                </select>

            </form>
        </div>
    </div>
    <!-- ChatBot -->
        
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
        <script src="modal_login.js"></script>
    </body>
</html>
