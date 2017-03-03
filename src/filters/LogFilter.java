package filters;

import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


/**
 * Servlet Filter implementation class LogFilter
 */
@WebFilter(filterName ="logFilter",urlPatterns = {"/private/*"})
public class LogFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LogFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest req = ((HttpServletRequest)request);
		HttpServletResponse res = ((HttpServletResponse)response);
		if(req.getSession().getAttribute("user") == null){
			res.sendRedirect("../login.jsp");
		}
		else{
			// pass the request along the filter chain
			chain.doFilter(req, res);
		}
		
		

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
