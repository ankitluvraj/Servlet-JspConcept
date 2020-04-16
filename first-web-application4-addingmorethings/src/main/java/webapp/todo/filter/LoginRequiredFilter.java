package webapp.todo.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;


// what kind of url does intercept
// if have multiple parameter then we can werite like that
//@WebFilter(urlPatterns = {"*.do"})

@WebFilter(urlPatterns = "*.do")
public class LoginRequiredFilter implements Filter{

	
	
	// destroy the filter 
	@Override
	public void destroy() {
		
	}

	//htis method is called when ever particular url is called
	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse , FilterChain chain)
			throws IOException, ServletException {
	
	       HttpServletRequest request = (HttpServletRequest)servletRequest;
	       System.out.println(request.getRequestURI());
	       
	       if(request.getSession().getAttribute("name")!=null) {
	       chain.doFilter(servletRequest, servletResponse);
	       }else {
	    	   request.getRequestDispatcher("/login.do").forward(servletRequest, servletResponse);
	       }
	}

	// initilize the filter
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}
	

	/* note:-> if you not allow to any thing then filter not procedding any thing 
	if you allow to do something then you need to do somehting filterchain */
}
