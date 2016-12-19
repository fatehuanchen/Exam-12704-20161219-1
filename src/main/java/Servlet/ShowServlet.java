package Servlet;



import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;


@WebServlet("/ShowServlet")
public class ShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Map<String,List<String>> map=new HashMap<String,List<String>>();
    List<String> list=new ArrayList<String>();
    List<String> list1=new ArrayList<String>();
    List<String> list2=new ArrayList<String>();
    List<String> list3=new ArrayList<String>();
    public ShowServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("text/html;encoding=utf-8");
		Connection conn=null;
		ResultSet rs=null;	
		String uesrname=request.getParameter("username");
		conn=ConnectionFactory.getInstance().makeConnection();
try {
			
			PreparedStatement ps=(PreparedStatement) conn.prepareCall(
					"select a.film_id,a.title,a.description,b.name from film a , language b  where  a.language_id=b.language_id");
			rs=ps.executeQuery();
			
			while(rs.next())
			{
//				Film film=new Film();
//				film.setFilm_id(rs.getString("film_id"));
//				film.setTitle(rs.getString("title"));
//				film.setDescription(rs.getString("description"));
//				film.setName(rs.getString("name"));
//				list.add(film);
				list.add(rs.getString("film_id"));
				list1.add(rs.getString("title"));
				list2.add(rs.getString("description"));
				list3.add(rs.getString("name"));
			}
				request.setAttribute("film_id",list );
				request.setAttribute("title", list1);
				request.setAttribute("description",list2 );
				request.setAttribute("name",list3 );
		   
//			request.setAttribute("film_id",list.iterator().next() );
//			request.setAttribute("title",list.iterator().next() );
//			request.setAttribute("description", list.iterator().next() );
//			request.setAttribute("name", list.iterator().next() );
			request.getRequestDispatcher("showpage.jsp").forward(request, response);
			//request.getRequestDispatcher("showpage.jsp").forward(request, response);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
