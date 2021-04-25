

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertDBFrom
 */
@WebServlet("/InsertDBCompetition")
public class InsertDBCompetition extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertDBCompetition() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
               
   	 out.println("Thanks for your submission!");
     out.println("<br/><br/>Please click here to return to the <a href=index_login.html> home page</a>");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String JDBCUrl = "jdbc:mysql://ee417.crxkzf89o3fh.eu-west-1.rds.amazonaws.com:3306/testdb";
        String username = "ee417";
        String password = "ee417";
       // PrintWriter out = response.getWriter();
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

        
       String name = request.getParameter("name");
       String age = request.getParameter("age");
       String gender = request.getParameter("gender");
       String phone = request.getParameter("phone");
       String email = request.getParameter("email");
       String dest = request.getParameter("event");
       String origin = request.getParameter("from");
       String why = request.getParameter("why");
      
	 try {
		  PreparedStatement pstmt = con.prepareStatement("INSERT INTO testdb.competition_form_gogo(name,age,gender,phone,email,dest,origin,why) VALUES (?,?,?,?,?,?,?,?)");
				  pstmt.clearParameters();       // Clears any previous parameters
				  pstmt.setString(1, name);
				  pstmt.setString(2, age);
				  pstmt.setString(3, gender);
				  pstmt.setString(4, phone);
				  pstmt.setString(5, email);
				  pstmt.setString(6, dest);
				  pstmt.setString(7, origin);
				  pstmt.setString(8, why);
				  pstmt.executeUpdate();

		// System.out.println("\nConnection Successful..... creating statement....");
     	  //   stmt = con.createStatement();
	    // rs = stmt.executeQuery("SELECT * FROM MyDB.CUSTOMERS");

	  //   while (rs.next())
	  //   {    System.out.println("\nName=" + rs.getString("FIRSTNAME") + " " + rs.getString("SURNAME"));
	 //    	out.println("\nName=" + rs.getString("FIRSTNAME") + " " + rs.getString("SURNAME"));}
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
