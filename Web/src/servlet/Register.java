package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.DBOperation;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("GB18030");
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		DBOperation dbo = new DBOperation();
		String insertSql = "insert into `user` (`user`,`password`) values('"+user+"','"+password+"')";
		int results = dbo.insertSql(insertSql);
		response.setCharacterEncoding("GB18030");
		PrintWriter out = response.getWriter();
		if(results == -1){
			out.println("×¢²áÊ§°Ü");
		}
		else{
			out.println("×¢²á³É¹¦");
			getServletConfig().getServletContext().getRequestDispatcher("/ServletTest/login.jsp").include(request, response);
		}
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
