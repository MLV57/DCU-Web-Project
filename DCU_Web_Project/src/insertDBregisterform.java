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
 * Servlet implementation class CheckDBforLogin
 */
@WebServlet("/insertDBregisterform")
public class insertDBregisterform extends HttpServlet {

	private static final long serialVersionUID = 1L;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertDBregisterform() {
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
doGet(request, response);
		// TODO Auto-generated method stub
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


       String USname = request.getParameter("fuser");
       String name = request.getParameter("fname");
       String sname = request.getParameter("lname");
       String Gender = request.getParameter("fgender");
       String uname = request.getParameter("funinersity");
       String Eid = request.getParameter("fid");
       String email = request.getParameter("femail");
       String phone = request.getParameter("fphone");
       String address = request.getParameter("fadd");
       String pass = request.getParameter("fpass");

       //System.out.println(firstName);
	 try {
		  PreparedStatement pstmt = con.prepareStatement("INSERT INTO groupH_user(Username,firstName,lastName,gender,UniversityName,EnrollmentID,ContactNumber,Address,email,Pwd) VALUES (?,?,?,?,?,?,?,?,?,?)");
				  pstmt.clearParameters();       // Clears any previous parameters
				  pstmt.setString(1, USname);
				  pstmt.setString(2, name);
				  pstmt.setString(3, sname);
				  pstmt.setString(4, Gender);
				  pstmt.setString(5, uname);
				  pstmt.setString(6, Eid);
				  pstmt.setString(7, phone);
				  pstmt.setString(8, address);
				  pstmt.setString(9, email);
				  pstmt.setString(10, pass);
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
