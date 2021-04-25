

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class topic2discussion_servlet
 */
@WebServlet("/topic2discussion_servlet")
public class topic2discussion_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public topic2discussion_servlet() {
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
            con = DriverManager.getConnection(JDBCUrl, username1, password1); //connection to the database
        }
        catch (Exception e) {
            System.out.println("\nAn error has occurred during the connection phase!  This is most likely due to your CLASSPATH being set wrong and the"
                    + "  classes unable to be found.  Otherwise the database itself may be down.  Try telneting to port 3306 and see if it is up!");
            e.printStackTrace();
            System.exit(0);
        }   
        //getting paramaters from form
       String gender= request.getParameter("gender");
       String fname= request.getParameter("fname");
       String lname= request.getParameter("lname");
       String email= request.getParameter("email");
       String rname= request.getParameter("rname");
       String procard= request.getParameter("procard");
       String radress= request.getParameter("radress");
       String rphone= request.getParameter("rphone");
       String ownphone= request.getParameter("ownphone");
       String desc= request.getParameter("desc");
       //get the date and hour as it is a column of the table
       Date dNow = new Date( );
       SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd 'at' hh:mm:ss");
       int verif = 0;//will be used to check if restaurant name is already taken
       try {
  	     System.out.println("\nConnection Successful..... creating statement....");
       	 stmt = con.createStatement();
       	 //checking if restaurant name already exists in database
  	     rs = stmt.executeQuery("SELECT rest_id FROM thomas_table_restaurants WHERE restname = '"+rname+"';");
  	     response.setContentType("text/html");
  	     
  	     while (rs.next())
  	     {  //making the sum of IDs as they all are superior to 0
  	     	verif += rs.getInt("rest_id");
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
