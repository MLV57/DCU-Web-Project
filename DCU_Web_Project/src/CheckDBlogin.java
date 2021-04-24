import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckDBlogin
 */
@WebServlet("/CheckDBlogin")
public class CheckDBlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckDBlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String JDBCUrl = "jdbc:mysql://localhost:3306";
        String username = "root";
        String password = "OnigiriSan";
        PrintWriter out = response.getWriter();
        
        try {
            System.out.println("\nConnecting to the SSD Database......");
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(JDBCUrl, username, password);
        }
        catch (Exception e) {
            System.out.println("\nAn error has occurred during the connection phase!  This is most likely due to your CLASSPATH being set wrong and the"
                    + "  classes unable to be found.  Otherwise the database itself may be down.  Try telneting to port 3306 and see if it is up!");
            e.printStackTrace();
            System.exit(0);
        }   
        

       String Pseudo = request.getParameter("funame");
       String pwd = request.getParameter("fpass");
       String querry = "select * from user WHERE Username = '" + Pseudo + "' and Pwd = '" + pwd + "'";
     
	 try {
		 
	     stmt   = con.createStatement();
	     stmt.executeQuery(querry);

		 if(stmt.getResultSet().next()){
		      System.out.println("The user is already registered " + Pseudo);
		      //Write code and redirect the user on main page
			 request.getRequestDispatcher("index.html").include(request, response);
		      }
		      else{
		          System.out.println("No customer registered with this  " + Pseudo);
		      //Display an error message.
			  String errorMessage = "No customer registered with this  " + Pseudo;
			  out.println("alert(" + "'" + errorMessage + "'" + ");</script>");
		      }
		 
	 }
        catch (SQLException e) {
	     System.out.println("\nAn error has occurred during the Statement/ResultSet phase.  Please check the syntax and study the Exception details!");
            while (e != null) {
	         System.out.println(e.getMessage());
                e = e.getNextException();
	     }
            System.exit(0);
        }

        finally {
	     try {    
	         if (rs != null) rs.close();
		 if (stmt != null) stmt.close();
		 if (con != null) con.close();
	     }
	     catch (Exception ex) {
	         System.out.println("An error occurred while closing down connection/statement"); 
            }
        }
		
		
	}

}
