<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />

        <title>Discussion</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="modal_login.css" />
        <link rel="stylesheet" href="discussion.css" />

    </head>

    <body>
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

        <div id="path">
            <span><a href="topics.jsp<%= urlRedirect %>">Technology</a> > <a href="AI2.jsp<%= urlRedirect %>">Artificial Intelligence</a> > </span> Is AI a danger for humanity ?
        </div>

        <div id="main_block">
             <!-- Login Modal -->
             <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

     <div class="modal-content">
       <div class="modal-header" style="padding:35px 50px;">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
       </div>
       <div class="modal-body" style="padding:40px 50px;">
         <form role="form" name="login-form" action="CheckDBforLogin" method='post'>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input name = "funame" type="text" class="form-control" id="usrname" placeholder="Enter email">
              <p style="text-align: center; padding: .25em;" id="incorrect"></p>
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input name = "fpass" type="text" class="form-control" id="psw" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button class="btn btn-success btn-block" type="submit" value="submit""><span class="glyphicon glyphicon-off"></span> Login</button>
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
   </div>
 </div>
 <!-- End of login Modal-->
            <div class="presentation">
                <div>
                <!-- connection to database -->
                   <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
				         url = "jdbc:mysql://ee417.crxkzf89o3fh.eu-west-1.rds.amazonaws.com:3306/testdb"
				         user = "ee417"  password = "ee417"/>
				 <!-- fetch every message containing the good discussion id -->
				      <sql:query dataSource = "${snapshot}" var = "result">
						SELECT * FROM testdb.groupH_discussion_table WHERE discussion_id =${discussion_id}     </sql:query>
                <!-- display discussion title -->
                <c:forEach var = "row" items = "${result.rows}">

                     <h1><c:out value = "${row.title}"/></h1>
                    <h3>Last activity : 3 hours ago</h3>

                        </c:forEach>
                </div>
                <input type="button" value="+ Add a new message" id="modal_button" data-toggle="modal" data-target="#ModalCenter"/>


                    <!-- Adding a new message Modal part-->
                    <div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            <h1 style="padding-left: 20px;">New message: </h1>

                            </div>
                            <form action = "new_message_servlet" method = "post">
                            <div class="modal-body">

                                    <div class="form-group">
                                        <label for="message-text" class="col-form-label">Message:</label>
                                        <textarea name="message" class="form-control" id="message-text" style="overflow: auto;

                                        resize: vertical;"></textarea>
                                      </div>
                                      <input type="hidden" id="discussion_id" name="discussion_id" value=${discussion_id}>
                                    <input type="hidden" id="user_id" name="user_id" value="1">
                                    <!--
                                    //////////////////////////////////////////////////////

                                   USER_ID MUST BE CHANGED WHEN IDENTIFICATION THROUGH PAGES WILL BE DONE

                                     -->

                            </div>
                            <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Submit Message</button>
                            </div>
                            </form>
                        </div>
                        </div>
                    </div>


            </div>
            <sql:query dataSource = "${snapshot}" var = "message">
						SELECT * FROM testdb.groupH_messages_discussion_table WHERE disc_id =${discussion_id}     </sql:query>
			<!-- browsing messages in database and displaying content in divs -->
			<c:forEach var = "row" items = "${message.rows}">
			<!-- second sql query to see who wrote the message -->
				<sql:query dataSource = "${snapshot}" var = "user">

				      		
						SELECT * FROM groupH_user WHERE user_id = ${row.user_id};    </sql:query>

				<div class="message">
                <div class="autor">
                <c:forEach var = "row2" items = "${user.rows}">
                    <h1>${row2.Username}</h1>
                    </c:forEach>
                    Picture ?
                </div>
                <div class="message_content">
                    <h3><c:out value = "${row.post_date}"/></h3>
                    <p><c:out value = "${row.content}"/></p>
                </div>
            </div>
			</c:forEach>

        </div>

        <footer>
            <div id="copyright">
                <h1>GoGoChat</h1>
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
            <script src="modal_login.js"></script>
    </body>
</html>
