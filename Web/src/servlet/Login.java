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
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet implements javax.servlet.Servlet{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String sql = "select * from `user` where user = '"+user+"' and password = '"+password+"'";
		int results = dbo.querySqlLength(sql);
		response.setCharacterEncoding("GB18030");
		PrintWriter out = response.getWriter();
		if(results==0){
			out.println("µÇÂ¼Ê§°Ü");
		}
		else{
			getServletConfig().getServletContext().getRequestDispatcher("/ServletTest/welcome.jsp").include(request, response);
			out.println("µÇÂ¼³É¹¦");
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
