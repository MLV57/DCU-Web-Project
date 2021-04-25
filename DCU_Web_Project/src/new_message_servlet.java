

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class new_message_servlet
 */
@WebServlet("/new_message_servlet")
public class new_message_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public new_message_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String JDBCUrl = "jdbc:mysql://ee417.crxkzf89o3fh.eu-west-1.rds.amazonaws.com:3306/testdb";
        String username1 = "ee417";
        String password1 = "ee417";
        PrintWriter out = response.getWriter();
        try {
            System.out.println("\nConnecting to the SSD Database......");
            Class.forName("com.mysql.jdbc.Driver");
            //connection to the database
            con = DriverManager.getConnection(JDBCUrl, username1, password1);
        }
        catch (Exception e) {
            System.out.println("\nAn error has occurred during the connection phase!  This is most likely due to your CLASSPATH being set wrong and the"
                    + "  classes unable to be found.  Otherwise the database itself may be down.  Try telneting to port 3306 and see if it is up!");
            e.printStackTrace();
            System.exit(0);
        }   

        //Storing parameters from form before using them in SQL statement 
       String message = request.getParameter("message");
       String disc_id = request.getParameter("discussion_id");
       String user_id = request.getParameter("user_id");
       
       SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
       Date date = new Date();  
       
       
	 try {
		 //Pre statement to insert account into the thomas_table_accounts table
		 PreparedStatement pstmt = con.prepareStatement(
				  "INSERT INTO testdb.groupH_messages_discussion_table (content,disc_id,user_id,post_date) VALUES (?,?,?,?)");
				  pstmt.clearParameters();       // Clears any previous parameters
				//changing "?" by form information
				  pstmt.setString(1, message);
				  pstmt.setString(2, disc_id);
				  pstmt.setString(3, user_id);
				  pstmt.setString(4, formatter.format(date));
				  
				  pstmt.executeUpdate();
				  System.out.println("\nMessage uploaded" + message);
				  

		 }
        catch (SQLException e) {
	     System.out.println("\nAn error has occurred during the Statement/ResultSet phase.  Please check the syntax and study the Exception details!");
            while (e != null) {
	         System.out.println(e.getMessage());
	         out.print("error: "+ e.getMessage());
             e = e.getNextException();
	     }
            //System.exit(0);
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
	 request.setAttribute("discussion_id", disc_id);
	 RequestDispatcher requestDispatcher = request.getRequestDispatcher("discussion_messages.jsp");
     requestDispatcher.forward(request, response);
	}

}
