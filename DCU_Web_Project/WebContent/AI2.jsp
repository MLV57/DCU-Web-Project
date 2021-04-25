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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <script src="AI.js"></script>
        <link rel="stylesheet" href="modal_login.css" />
        <title>Artificial Intelligence</title>
        <link rel="stylesheet" href="AI.css" />
    </head>
    
    <body>

        <div id="dyanamicMenu" class="dyanamicMenu">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <h1>**</h1>
            <h1>From 15th April to 15th May 2021</h1>
            <h1>**</h1>
            <h2>Be in with a chance to win a holiday for two to a destination of your choice !</h2>
            <h2>You just have to fill out a form to participate !</h2>
            <h1>Enter Our Competition !</h1>
            <a href="competition.html">=> Click HERE <=</a>
        </div>

        <header>
            <div id="headband">
                <a href="index_login.html"><img src="pictures/logo_mini.jpg" alt="Logo"/></a>
                <nav>
                    <ul>
                        <li><a href="topics.html">Topics</a></li>
                        <li><a href="about.html">About us</a></li>
                        <li><a id="menuBtn" onclick="openNav()">**Special event**</a></li>
                    </ul>
                </nav>  
                <div>
                    <input type="text" name="research"  size=50 placeholder="Type your research here" />
                    <input type="submit" value="Search"/>
                </div>
                <!-- Button used to launch login modal -->
                <button type="button" class="button" id="myBtn" style="color: white;">Login>Login</button>
                <div class="button">
                    <a href="signup.html">Sign up</a>
                </div>
                <div class="button">
                    <a href="profil.html">My profil</a>
                </div>
            </div>
        </header>

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
         <p>Not a member? <a href="signup.html">Sign Up</a></p>
         <p>Forgot <a href="#">Password?</a></p>
       </div>
       
     </div>
   </div>
 </div> 
 <!-- End of login Modal-->
            <aside>
                <h1>- Filters -</h1>
                <form id="filter_form" action="Filter_Servlet" method="post">
                    <label id="tag_label" for="tag">By tag : </label>
                    <input id="tag_input" type="text" name="tag"  placeholder="Enter a tag..." />
			<script type="text/javascript"> 
                   
                   		var filter = getURLVariable("id");
				document.getElementById("tag_input").setAttribute('value',filter);
						  
				function getURLVariable(variable)
				 {
					var query = window.location.search.substring(1);
					var vars = query.split("&");
						for (var i=0;i<vars.length;i++) {
						           var pair = vars[i].split("=");
						           if(pair[0] == variable){return pair[1];}
						 }
						         return(false);
				}
				</script>		  
						  
                    <label for="name">By name : </label>
                    <input type="text" name="name"  placeholder="Enter a word..." />
                    <label>Sort :</label> 
                    <div>
                        <input type="radio" id="recent" name="sort_recent"/>
                        <label for="recent">From more recent to oldest </label>
                    </div>
                    <div>
                        <input type="radio" id="old" name="sort_oldest"/>
                        <label for="old">From oldest to more recent</label>
                    </div>
                    <input type="submit" value="Apply"/>
                </form>
                <input type="button" id="reset_button" value="Reset filters"/>
                <script>
                //this allows to correctly reload the page, if the user wants to have all the discussions again
                $('#reset_button').click(function() {
                	window.location.replace("AI2.jsp");
                });
                </script>
                

            </aside>

            <section>
                <div class="topic_presentation">
                    <h1>Artificial Intelligence</h1>
                    <h2>Here, come and share your ideas about AI</h2>
                    <h3>3 discussions</h3>
                </div>
                
                <!-- CREATE A NEW CONVERSATION PART -->
                <input type="button" style="margin-top: 20px;margin-bottom: 20px;" value="+ Create a new discussion" id="modal_button" data-toggle="modal" data-target="#ModalCenter"/>
                <!-- Modal -->
                <div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        <h1 style="padding-left: 20px;">New Discussion: </h1>
                        
                        </div>
                        <form action="new_Discussion_Servlet" method="post">
                        <div class="modal-body">
                            
                                <div class="form-group">
                                    <label for="message-text" class="col-form-label">Discussion Title:</label>
                                    <input name="title" class="form-control" id="message-text" style="overflow: auto;
                                    resize: vertical;">
                                  </div>
                                <div class="form-group">
                                  <label for="recipient-name" class="col-form-label">Tags: (separate them with ;)</label>
                                  <input name = "tags" type="text" class="form-control">
                                </div>
                        </div>
                        <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Submit Discussion</button>
                        </div>
                        </form>
                    </div>
                    </div>
                </div>
                <!-- end of discussion creation -->
                
                <!-- DISCUSSIONS DISPLAY -->
                
                <!-- after applying filter part -->
                	<!-- get request elements as strings -->
                <% String filtered=request.getParameter("filtered");
                String tag=request.getParameter("tag");
                String name=request.getParameter("name");
                String order=request.getParameter("order");
                %>
       <!-- depending on what was forwarded in the filter request, the sql query is different -->         
                <c:choose>
			    <c:when test="${filtered=='1'}">
			    
			        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
				         url = "jdbc:mysql://ee417.crxkzf89o3fh.eu-west-1.rds.amazonaws.com:3306/testdb"
				         user = "ee417"  password = "ee417"/>
				 <c:choose> 
				    <c:when test="${tag!='' and name!=''}">
				        <sql:query dataSource = "${snapshot}" var = "result">
				      		
						SELECT * FROM groupH_discussion_table WHERE tags LIKE '%${tag}%' AND title LIKE '%${name}%';    </sql:query>
				        <br />
				    </c:when>
				    <c:when test="${tag!='' and name==''}">
				        <sql:query dataSource = "${snapshot}" var = "result">
				      		
						SELECT * FROM groupH_discussion_table WHERE tags LIKE '%${tag}%';    </sql:query>
				        <br />
				    </c:when> 
				    <c:when test="${tag=='' and name!=''}">
				        <sql:query dataSource = "${snapshot}" var = "result">
				      		
						SELECT * FROM groupH_discussion_table WHERE title LIKE '%${name}%';    </sql:query> 
				        <br />
				    </c:when>         
				</c:choose>
				      
						<c:forEach var = "row" items = "${result.rows}">
						<c:set var = "rowTags" value = "${row.tags}"/>
						<c:set var = "splitTags" value = "${fn:split(rowTags, ';')}" />
						<div class="discussion" data-value=${row.discussion_id}>
		                    <div class="discussion_part_1">
		                        <h1><c:out value = "${row.title}"/></h1>
		                        <div class="all_tags">
		                            Tags : 
		                            <c:forEach var = "i" begin = "0" end = "${fn:length(splitTags)-1}">
		                            <div class="tag">${splitTags[i]}</div>
		                            </c:forEach>
		                        </div>
		                    </div>
		                    <div class="discussion_part_2">
		                        <h3><c:out value = "${row.messages}"/> messages</h3>
		                    </div>
		                    <div class="discussion_part_3">
		                    <h3>Last message by XXXXX</h3>
		                        <h3>About 3 hours ago</h3> 
		                    </div>
		                </div>
		         			</c:forEach>
				</c:when>    
				
				<%-- Before applying filters part --%>
			    <c:otherwise>
		                <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
				         url = "jdbc:mysql://ee417.crxkzf89o3fh.eu-west-1.rds.amazonaws.com:3306/testdb"
				         user = "ee417"  password = "ee417"/>
				 <%-- We load everything from the database --%>
				      <sql:query dataSource = "${snapshot}" var = "result">
						SELECT * FROM testdb.groupH_discussion_table     </sql:query>
						<c:forEach var = "row" items = "${result.rows}"
						>
						<c:set var = "rowTags" value = "${row.tags}"/>
						<c:set var = "splitTags" value = "${fn:split(rowTags, ';')}" />
						<div class="discussion" data-value=${row.discussion_id}>
		                    <div class="discussion_part_1">
		                        <h1><c:out value = "${row.title}"/></h1>
		                        <div class="all_tags">
		                            Tags : 
		                            <c:forEach var = "i" begin = "0" end = "${fn:length(splitTags)-1}">
		                            <div class="tag" id="tag123">${splitTags[i]}</div>
		                            </c:forEach>
		                        </div>
		                    </div>
		                    <div class="discussion_part_2">
		                        <h3><c:out value = "${row.messages}"/> messages</h3>
		                    </div>
		                    <div class="discussion_part_3">
		                    <h3>Last updated:</h3>
		                        <h3><c:out value = "${row.date}"/></h3>
		                    </div>
		                </div>
		         			</c:forEach>
						</c:otherwise>
			</c:choose>
            </section>
            
        </div>
        <footer>
            <div id="copyright">
                <h1>GoGoChat</h1>
                <p>@GoGochat 2021</p>
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
            <!-- launch filter servlet when cliking on tag, with tag content as parameter -->
            <form id="tag_form" action="Filter_Servlet" method="post">
			  <input type="hidden" id="tag" name="tag" value="">
			  <input type="hidden" id="name" name="name" value="">
			</form>
			
			<!-- Launch discussions 2 messages servlet with discussion id as a parameter -->
			<form id="messages_form" action="discussions2messages_Servlet" method="post">
			  <input type="hidden" id="discussion_id_input" name="discussion_id" value="">
			</form>
        </footer>
        <script>
        //add click event listener to discussion divs to launch the messages_form
            $(".discussion").click(function(){
                var x = $(this).data('value');
                $("#discussion_id_input").val(x)
                $( "#messages_form" ).submit();
            });
          //add click event listener to tag divs to launch the tag_form
            $(".tag").click(function (e) {
                e.stopPropagation(); //Prevents the event from bubbling up the DOM tree, 
                //preventing any parent handlers from being notified of the event. 
                //In this case, it allows us to have a clickable div with another clickable div inside
                var x = $("#tag123").text();
    			$("#tag").val(x);
                $( "#tag_form" ).submit();
            });
        </script>
        <script src="modal_login.js"></script>
    </body>
</html>
