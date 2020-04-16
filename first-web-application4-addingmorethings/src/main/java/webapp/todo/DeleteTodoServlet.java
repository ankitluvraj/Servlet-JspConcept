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

@WebServlet(urlPatterns = "/delete.do")
public class DeleteTodoServlet extends HttpServlet {

	private TodoService todoService = new TodoService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		todoService.deleteTodo(new Todo(request.getParameter("todo")));
		response.sendRedirect("/list-todo.do");
	//note ;-> in real world we can delete using id 
	}
	
//	
//	// add a new todos functionalities
//	
//	@Override
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws IOException, ServletException {
//		
//		String newTodo=request.getParameter("todo");
//		
//		todoService.addTodo(new Todo(newTodo));
//		response.sendRedirect("/list-todo.do");
//		
//		// below code if you write then every time if send request then automatic add in the google croem browser
//	
//	
//		/*
//		 * request.setAttribute("todos", todoService.getTodo());//this attribute is
//		 * abailabel in this particular request
//		 * 
//		 * 
//		 * request.getRequestDispatcher("/WEB-INF/views/todo.jsp").forward(request,
//		 * response);
//		 */
//	}
	
	
	
	
}
// session :-> session is something when i start user logis in and expire when a user logs out
// session :-> and also i can implement if user does not do 3 min then session is timed out
    // so we dont really need ot logout session will automatically will logout is nothig but expire the session
// so if you put something in to session then it will available across the session
//so see in login servlet 
