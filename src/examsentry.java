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
import connection.*;
import javax.servlet.http.HttpSession;

@WebServlet(name = "examsentry", urlPatterns = { "/examsentry" })
public class examsentry extends HttpServlet {
    HttpSession session;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String scode = request.getParameter("scode");
        String sdate = request.getParameter("sdate");
        String edate = request.getParameter("edate");
        String inst = request.getParameter("tarea");

        session.setAttribute("subcode", scode);
        String author = session.getAttribute("facultyid").toString();
        // session.setAttribute("subname",sname);

        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        DBConnection c = new DBConnection();
        con = c.getcon();

        int qno = 0, cnt = 0, cnt2 = 0;
        try {
            st = con.createStatement();
            String qry = "select count(*) as col from subjects where subjectcode='" + scode + "' and author='" + author
                    + "'";
            rs = st.executeQuery(qry);
            if (rs.next())
                cnt2 = Integer.parseInt(rs.getString("col"));

            if (cnt2 == 0) {
                con.close();
                response.sendRedirect("facultyprofile.jsp?ErrorMake=True");
            } else {

                qry = "select count(*) as col from exams where scode='" + scode + "'";
                rs = st.executeQuery(qry);
                if (rs.next())
                    cnt = Integer.parseInt(rs.getString("col"));
                if (cnt == 1) {
                    con.close();
                    response.sendRedirect("facultyprofile.jsp?ExamExists=True");
                } else {
                    qry = "insert into exams values('" + scode + "','" + sdate + "','" + edate + "','" + inst + "')";
                    out.println(qry);
                    st.executeUpdate(qry);
                    con.close();
                    response.sendRedirect("makepaper.jsp?scode=" + scode);
                }
            }

            con.close();
        }

        catch (Exception e) {
            System.out.println("Error=" + e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        session = request.getSession();
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
