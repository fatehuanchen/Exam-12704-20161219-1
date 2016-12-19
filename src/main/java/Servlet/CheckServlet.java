package Servlet;




import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Boolean flag = false;

	public CheckServlet() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("text/html;encoding=utf-8");
		Connection conn = null;
		ResultSet rs = null;
		String uesrname = request.getParameter("username");
		
		conn = ConnectionFactory.getInstance().makeConnection();
		try {

			PreparedStatement  ps = (PreparedStatement) conn.prepareCall("select first_name from customer");
			
			 rs = ps.executeQuery();
			while (rs.next()) {
				String str = rs.getString("first_name");
				// System.out.println(str);
				if (str.equals(uesrname)) {
					request.getRequestDispatcher("success.jsp").forward(request, response);
					flag = true;
				}
			}
			if (!flag) {
                    response.sendRedirect("login.jsp");		
                    }
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
