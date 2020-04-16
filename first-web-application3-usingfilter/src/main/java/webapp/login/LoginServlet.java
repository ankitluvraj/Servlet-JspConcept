package webapp.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.todo.TodoService;


@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

	private LoginService userValidatoinService=new LoginService();
	private TodoService todoService=new TodoService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("name",request.getParameter("name"));	
		request.setAttribute("password",request.getParameter("password"));
		
		request.getRequestDispatcher("/WEB-INF/views/login.jsp")
		           .forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		boolean isUserValid=userValidatoinService.isUserValid(name, password);
		
		if(isUserValid) {
//			request.setAttribute("name", name);// we will not display user name in browser why
			//ans : each request on server side individual request  we will consider
			 
			request.getSession().setAttribute("name", name);// maintain name in todo list
			response.sendRedirect("/list-todo.do");
	// imp NOTE:->  so always you need to think about what is put on request scope 
			// and what put on session scope.
			// ans:-> things will not we change across the application should we put in session and 
			// also think about session size any object that would put on the session would we live through out the session not be the user
			// so will occupies the memory on your application server 
			// so you should put as less no of things in session as possible 
			// and if you something only for that particular request then only for that put in the request scope not in the session scope 
	
		}else {
			request.setAttribute("errorMassage", "invalid credentials");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp")
	           .forward(request, response);
		
		}
	}	
}