<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="profil.css" />
        <title>My profil</title>
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
                <div class='button'><a href='index.jsp<%= urlRedirect %>'>Logout</a></div>
            </div>
        </header>

        <div id="main_block">
            <div id="personnal_data">
                <div id="picture">
                    Picture ? 
                </div>
                <h1>First name : X</h1>
                <h1>Last name : X</h1>    
                <h1>UserName : X</h1>    
                <h1>Gender : X</h1>    
                <h1>Address : X</h1>    
                <h1>Email : X</h1>    
                <h1>Phone : X</h1> 
                <input type="submit" value="Modify"/>   
            </div>
            <div id="activity">
                <div id="hello">
                    <h1>Hello XXXXX </h1>
                    <h2>Nice to see you again !</h2>
                    <h3>Last connection the XXXXX</h3>
                </div>
                <div id="show_activity">
                    <h1>My activity</h1>
                    <table>
                        <tr>
                            <th>Category</th>
                            <th>Sub category</th>
                            <th>Discussion</th>
                            <th>Messages posted</th>
                            <th>Last activity</th>
                        </tr>
                        <tr>
                            <td>Technology</td>
                            <td>AI</td>
                            <td>Is AI a danger for humanity ?</td>
                            <td>XXXXXX</td>
                            <td>XXXXXX</td>
                        </tr>
                        <tr>
                            <td>Technology</td>
                            <td>AI</td>
                            <td>Would you agree to travel in autonomous car ?</td>
                            <td>XXXXXX</td>
                            <td>XXXXXX</td>
                        </tr>
                    </table>
                </div>
            </div>
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
</html>