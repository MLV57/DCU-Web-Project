<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="topics.js"></script>
        <link rel="stylesheet" href="topics.css" />
        <link rel="stylesheet" href="modal_login.css" />
        <title>All topics</title>
    </head>
    
    <body>
	<% String firstName = request.getParameter("firstName"); //email of the current user 
	   String lastName = request.getParameter("lastName"); //email of the current user
       String userSession = null,urlRedirect = null;
       if (firstName != null && lastName !=null){
    	   userSession = "<div class='session'>"+firstName + " "+lastName+"<div class='sessionButton'><div class='button'><a href='profil.jsp'>My profil</a></div><div class='button'><a href='index.jsp'>Logout</a></div></div></div>"; //display my profil and logout button if the user is connected 
    	   urlRedirect = "?firstName="+response.encodeURL(firstName)+"&lastName="+lastName; //string appended to the link to pages accessible by url rewriting 
       }
       else {
    	   userSession = "<button type='button' class='button' id='myBtn' style='color: white;'>Login</button><div class='button'><a href='signup.jsp'>Sign up</a></div>"; //if the user isn't logged in display the login button 
    	   urlRedirect = ""; //no info to deliver to servlet 
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
             <button type="button" class="btn  btn-block google" ><i class="fa fa-google"></i> Google</button>
             <button type="button" class="btn btn-block facebook"><i class="fa fa-facebook"></i> Facebook</button>
         </form>
       </div>
       <div class="modal-footer">
         <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal" ><span class="glyphicon glyphicon-remove"></span> Cancel</button>
         <p>Not a member? <a href="signup.jsp<%= urlRedirect %>">Sign Up</a></p>
         <p>Forgot <a href="#">Password?</a></p>
       </div>
       <script>

           /*
           function btnfunction(){
               var x = document.getElementById('incorrect');
               x.innerHTML = "The username or password you entered is not correct !";
           }
           $('#myModal').on('hidden.bs.modal', function () {
               document.getElementById('incorrect').innerHTML = "";
           })*/
       </script>
     </div>
     <!-- End modal content-->
   </div>
 </div> 
 <!-- End Modal-->
            <h1>All topics</h1>
            <div class="title_topics_group" id="technology">
                <h2>Technology</h2>
            </div>
            <div class="topics_group">
                <div id="carousel1">
                    <div class="topic" data-value="1">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Artificial Intelligence</a></h2>
                        </div>
                        <h3>Here, come and share your ideas about AI</h3>
                    </div>
                    <div class="topic" data-value="2">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Cryptography</a></h2>
                        </div>
                        <h3>A question about the latest cryptography techniques? You are in the right place</h3>
                    </div>
                    <div class="topic" data-value="3">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Electronics</a></h2>
                        </div>
                        <h3>All your questions about electronics</h3>
                    </div>
                    <div class="topic" data-value="4">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Engineering news</a></h2>
                        </div>
                        <h3>Get informed about the latest engineering projects here </h3>
                    </div>
                </div>
            </div>

            <div class="title_topics_group" id="sciences">
                <h2>Sciences</h2>
            </div>
            <div class="topics_group">
                <div id="carousel2">
                    <div class="topic" data-value="5">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Astronomy</a></h2>
                        </div>
                        <h3>All discussions about astronomy</h3>
                    </div>
                    <div class="topic" data-value="6">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Biology</a></h2>
                        </div>
                        <h3>Here it is about biology of all kinds, join the discussion !</h3>
                    </div>
                    <div class="topic" data-value="7">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Physics</a></h2>
                        </div>
                        <h3>Ask here your general questions about physics</h3>
                    </div>
                    <div class="topic" data-value="8">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Mathematics</a></h2>
                        </div>
                        <h3>Here, discover the latest mathematical concepts</h3>
                    </div>
                </div>
            </div>

            <div class="title_topics_group" id="art">
                <h2>Art</h2>
            </div>
            <div class="topics_group">
                <div id="carousel3">
                    <div class="topic" data-value="9">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Painting</a></h2>
                        </div>
                        <h3>Come and discuss painting</h3>
                    </div>
                    <div class="topic" data-value="10">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Sculpture</a></h2>
                        </div>
                        <h3>Here, join sculpture enthusiasts of all kinds</h3>
                    </div>
                    <div class="topic" data-value="11">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Architecture</a></h2>
                        </div>
                        <h3>Rediscover the architectural treasures of our history</h3>
                    </div>
                    <div class="topic" data-value="12">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Music</a></h2>
                        </div>
                        <h3>Share your latest musical discovery</h3>
                    </div>
                </div>
            </div>

            <div class="title_topics_group" id="literature">
                <h2>Literature</h2>
            </div>
            <div class="topics_group">
                <div id="carousel4">
                    <div class="topic" data-value="13">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Poetry</a></h2>
                        </div>
                        <h3>Here discuss poetry and find your inspiration</h3>
                    </div>
                    <div class="topic" data-value="14">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Theater</a></h2>
                        </div>
                        <h3>Write your next piece !</h3>
                    </div>
                    <div class="topic" data-value="15">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Novel</a></h2>
                        </div>
                        <h3>Share your feelings on your last readings</h3>
                    </div>
                    <div class="topic" data-value="16">
                        <div class="topic_title">
                            <h2><a href="AI2.jsp<%= urlRedirect %>">Essay</a></h2>
                        </div>
                        <h3>Discover the essays of the community</h3>
                    </div>
                </div>
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
        <script src="modal_login.js"></script>
        <script>
        	
        </script>
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
        })
        </script>
        <script> 
        new Carousel(document.querySelector('#carousel3'),{
            slidesToScroll: 1,
            slidesVisible: 3,
        })
        </script>
        <script>
        new Carousel(document.querySelector('#carousel4'),{
            slidesToScroll: 1,
            slidesVisible: 3,
        })
        </script>
        <form id="hidden_form" action="topic2discussion_servlet" method="post">
            <input id="topic_id" type="hidden" value="">
        </form>
        <script>
            //function that make a div clickable and redirecting to the link contained in the a component 
            $(".topic").click(function() {
            	var x = $(this).data('value');
                $("#topic_id").val(x)
                $( "#hidden_form" ).submit();
            });
        </script>
    </body>
</html>
    