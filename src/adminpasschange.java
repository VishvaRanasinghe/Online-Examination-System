/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import connection.*;

@WebServlet(name = "adminpasschange", urlPatterns = { "/adminpasschange" })
public class adminpasschange extends HttpServlet {

    HttpSession session;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String current = request.getParameter("passwd");
        String change = request.getParameter("apasswd");
        String userid = (String) session.getAttribute("user");

        ResultSet rs;
        int a = 0;
        try {
            DBConnection c = new DBConnection();
            Connection con = c.getcon();
            Statement st = con.createStatement();
            String str = "select count(*) as colname from admin where username = '" + userid + "' and password='"
                    + current + "'";
            rs = st.executeQuery(str);
            if (rs.next()) {
                a = Integer.parseInt(rs.getString("colname"));
            }

            if (a == 1) {
                String query = "UPDATE admin SET password='" + change + "' WHERE password='" + current
                        + "' AND username='" + userid + "'";
                st.executeUpdate(query);
                con.close();
                response.sendRedirect("adminprofile.jsp?Success=True");
            } else {
                con.close();
                response.sendRedirect("adminprofile.jsp?Failed=True");
            }

            con.close();

        } catch (Exception e) {

            out.println("Error=" + e);
        }

    }

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
