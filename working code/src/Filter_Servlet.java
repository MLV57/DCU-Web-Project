

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
		
        PrintWriter out = response.getWriter();
        

        //Storing parameters from form before using them in SQL statement 
       String tag = request.getParameter("tag");
       String name = request.getParameter("name");
       String topic_id = request.getParameter("topic_id");
       String old = request.getParameter("sort_oldest");
       String recent = request.getParameter("sort_recent");
       String order = "";
       
       
       if (recent=="on") {
    	   order = " ORDER BY creation_date DESC";
       }
       else if (old == "on") {
    	   order = "ORDER BY creation_date ASC";
       }
       else if (old == "on" && recent =="on") {
    	   order="";
       }
       
       request.setAttribute("filtered", "1");
       request.setAttribute("tag", tag);
       request.setAttribute("name", name);
       request.setAttribute("topic_id", topic_id);
       request.setAttribute("order", order);
       //forward every parameters in a request dispatcher as the sql query is made in the AI2.jsp file
     RequestDispatcher requestDispatcher = request.getRequestDispatcher("AI2.jsp");
       requestDispatcher.forward(request, response);

	}

}
