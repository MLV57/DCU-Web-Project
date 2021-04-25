

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Filter_Servlet
 */
@WebServlet("/Filter_Servlet")
public class Filter_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Filter_Servlet() {
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
       String tag = request.getParameter("tag");
       String name = request.getParameter("name");
       String old = request.getParameter("sort_oldest");
       String recent = request.getParameter("sort_recent");
       String order = "";
       if (old == "null" && recent=="on") {
    	   order = "DESC";
       }
       else if (old == "on" && recent == "null") {
    	   order = "ASC";
       }
       request.setAttribute("filtered", "1");
       request.setAttribute("tag", tag);
       request.setAttribute("name", name);
       request.setAttribute("order", order);
       RequestDispatcher requestDispatcher = request.getRequestDispatcher("AI2.jsp");
       requestDispatcher.forward(request, response);

	}

}
