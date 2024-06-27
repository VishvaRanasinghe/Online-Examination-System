import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connection.*;
import javax.servlet.http.HttpSession;

@WebServlet(name = "addsubject", urlPatterns = { "/addsubject" })
public class addsubject extends HttpServlet {
	HttpSession session;

	/*
	 * protected void processRequest(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException {
	 * response.setContentType("text/html;charset=UTF-8"); PrintWriter out =
	 * response.getWriter(); String sname = request.getParameter("subname"); String
	 * scode = request.getParameter("scode"); String author =
	 * session.getAttribute("facultyid").toString(); ResultSet rs; try {
	 * DBConnection c = new DBConnection(); Connection con = c.getcon(); Statement
	 * st = con.createStatement();
	 * 
	 * String query = "CREATE TABLE " + scode +
	 * "(qno int ,PRIMARY KEY(qno), qname text, opt1 varchar(300), opt2 varchar(300), opt3 varchar(300), opt4 varchar(300), ans varchar(300))"
	 * ; out.println(query); st.executeUpdate(query);
	 * 
	 * String apcode = "result"; apcode += scode; query = "CREATE TABLE " + apcode +
	 * "(username varchar(50) primary key,score int default 0,correct int default 0,wrong int default 0,skipped int default 0, time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,flag int default 0)"
	 * ; st.executeUpdate(query); query = "insert into subjects values('" + sname +
	 * "','" + scode + "','" + author + "')"; st.executeUpdate(query); con.close();
	 * response.sendRedirect("facultyprofile.jsp");
	 * 
	 * } catch (Exception e) { out.println("Error=" + e); }
	 * 
	 * }
	 */
	private String sname;
	private String scode;
	private String author;
	
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    String sname = request.getParameter("subname");
	    String scode = request.getParameter("scode");
	    String author = session.getAttribute("facultyid").toString();
	    ResultSet rs;

	    try {
	        DBConnection c = new DBConnection();
	        Connection con = c.getcon();
	        Statement st = con.createStatement();

	        // Check if the scode value already exists in the subject table.
	        String query = "SELECT * FROM subjects WHERE subjectcode = ?";
	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setString(1, scode);
	        rs = ps.executeQuery();

	        // If the scode value already exists, update the sname value.
	        if (rs.next()) {
	            query = "UPDATE subjects SET subjectname = ? WHERE subjectcode = ?";
	            ps = con.prepareStatement(query);
	            ps.setString(1, sname);
	            ps.setString(2, scode);
	            ps.executeUpdate();
	        } else {
	            // Create the new tables and insert a new row into the subjects table.
	            query = "CREATE TABLE " + scode
	                    + "(qno int ,PRIMARY KEY(qno), qname text, opt1 varchar(300), opt2 varchar(300), opt3 varchar(300), opt4 varchar(300), ans varchar(300))";
	            out.println(query);
	            st.executeUpdate(query);

	            String apcode = "result";
	            apcode += scode;
	            query = "CREATE TABLE " + apcode
	                    + "(username varchar(50) primary key,score int default 0,correct int default 0,wrong int default 0,skipped int default 0, time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,flag int default 0)";
	            st.executeUpdate(query);
	            query = "insert into subjects values('" + sname + "','" + scode + "','" + author + "')";
	            st.executeUpdate(query);
	        }

	        con.close();
	        response.sendRedirect("facultyprofile.jsp");

	    } catch (Exception e) {
	        out.println("Error=" + e);
	    }
	}

	
	/*-------------------------------------------------------------------------------------------------------------------------	
	*/
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		session = request.getSession();
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}
}
