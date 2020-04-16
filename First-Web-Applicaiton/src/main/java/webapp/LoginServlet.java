package webapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Browser sends Http Request to Web Server
 * 
 * Code in Web Server => Input:HttpRequest, Output: HttpResponse
 * JEE with Servlets
 * 
 * Web Server responds with Http Response
 */

//Java Platform, Enterprise Edition (Java EE) JEE6

//Servlet is a Java programming language class 
//used to extend the capabilities of servers 
//that host applications accessed by means of 
//a request-response programming model.

//1. extends javax.servlet.http.HttpServlet
//2. @WebServlet(urlPatterns = "/login.do")
//3. doGet(HttpServletRequest request, HttpServletResponse response)
//4. How is the response created?

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// way to redirect the jsp 
		//so using a jsp we need to write html content 
		// in previsoly we need to write lot of content like print writer
//		String name=(request.getParameter("name"));//prameter is something like what ever we can send attribute between browser to server
//		//put an attribute so that jsp can see it
//		request.setAttribute("name",name);
		
		request.setAttribute("name",request.getParameter("name"));
		//getting the password using get parameter so we can pass through url 
		// so some has see the password and stel the  information
		// so using get request only way to get the password so this is 
		// big problem to get request
		// so this is not sequare way of doing it
		request.setAttribute("password",request.getParameter("password"));
		
		
		
		request.getRequestDispatcher("/WEB-INF/views/login.jsp")
		           .forward(request, response);
		
		
	
		
		// so java is popular to writing business logic not for displaying 
		// static content becoz i am using here ststic content in java 
		// coading so we need to go for jsp
		
	//      PrintWriter out = response.getWriter();
//		  out.println("<html>"); out.println("<head>");
//		  out.println("<title>Yahoo!!!!!!!!</title>"); 
//		  out.println("</head>");
//		  out.println("<body>"); 
//		  out.println("My First Servlet");
//		  out.println("</body>"); 
//		  out.println("</html>");
		 
	}

}