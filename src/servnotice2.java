// Source code is decompiled from a .class file using FernFlower decompiler.
import connection.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
   name = "servnotice2",
   urlPatterns = {"/servnotice2"}
)
public class servnotice2 extends HttpServlet {
   public servnotice2() {
   }

   protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      String notice = request.getParameter("note2");

      try {
         DBConnection c = new DBConnection();
         Connection con = c.getcon();
         Statement st = con.createStatement();
         String query = "delete from notice";
         st.executeUpdate(query);
         con.close();
         response.sendRedirect("facultyprofile.jsp");
      } catch (Exception var10) {
         System.out.println("Error=" + var10);
      }

   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      this.processRequest(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      this.processRequest(request, response);
   }

   public String getServletInfo() {
      return "Short description";
   }
}
