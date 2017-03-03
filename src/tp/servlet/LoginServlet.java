package tp.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import libs.UserBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends GenericTpServlet{
	private static final long serialVersionUID = 5L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password = request.getParameter("mdp");
		HttpSession s = request.getSession();
		if(password.equals("pwd")){
			UserBean ub = new UserBean();
			ub.setLogin(request.getParameter("login"));
			ub.setLoginDate(new Date());
			s.setAttribute("user", ub);
			for(Cookie c : request.getCookies()){
				if(c.getName().equals("dateConnec")){					
						ub.setPreviousLoginDate(c.getValue());

				}
			}
			response.addCookie(new Cookie("dateConnec",ub.getLoginDate().toString()));
			response.sendRedirect("./home.jsp");
			//response.getOutputStream().println("Utilisateur "+((UserBean)s.getAttribute("USER")).getLogin()+" connecté le "+((UserBean)s.getAttribute("USER")).getLoginDate().toString());
		}
		else{
			s.setAttribute("INVALIDE", request.getParameter("login"));
			
			response.sendRedirect("./login.jsp");
			//response.getOutputStream().println("Authentification refusé pour l'utilisateur : "+s.getAttribute("INVALIDE"));
			

		}
	}

    

}
