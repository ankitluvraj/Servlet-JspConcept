package webapp.todo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.login.LoginService;
import webapp.todo.TodoService;

@WebServlet(urlPatterns = "/add-todo.do")
public class AddTodoServlet extends HttpServlet {

	private TodoService todoService = new TodoService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("name",request.getParameter("name"));	
		request.setAttribute("password",request.getParameter("password"));
		
		request.getRequestDispatcher("/WEB-INF/views/add-todo.jsp")
		           .forward(request, response);
		
	}

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String newTodo=request.getParameter("todo");
		
		todoService.addTodo(new Todo(newTodo));
		response.sendRedirect("/list-todo.do");
		
		
	}	
}
