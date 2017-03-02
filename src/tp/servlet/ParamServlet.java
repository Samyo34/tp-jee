package tp.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.HttpUtil;

@WebServlet("/testparam1")
public class ParamServlet extends GenericTpServlet {
	
	@Override
	public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpUtil.logParameters(req);
		
		
		resp.getOutputStream().println("Parameters received: ");
		
		boolean cgvaccepted = "on".equals(req.getParameter("cgv"));
		String color = req.getParameter("color");
		String size = req.getParameter("size");
		String commentDeliv = req.getParameter("delivinstruction");
		
		int quantity = 1;
		String quantityStr = req.getParameter("quantity");
		if(quantityStr!=null && quantityStr.trim().length()>0){
			quantity = Integer.parseInt(quantityStr);
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		String strDate = req.getParameter("delivdate");
		Date dateDeliv=null;
		if(strDate!=null && strDate.trim().length()>0){
			try {
				dateDeliv = sdf.parse(strDate);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		int idProduct = Integer.parseInt(req.getParameter("idProduit"));

		
		resp.getOutputStream().println("Produit: "+idProduct);
		resp.getOutputStream().println("Date: "+dateDeliv);
		resp.getOutputStream().println("CGV: "+cgvaccepted);
		resp.getOutputStream().println("color: "+color);
		resp.getOutputStream().println("size: "+size);
		resp.getOutputStream().println("commentDeliv: "+commentDeliv);
		resp.getOutputStream().println("quantity: "+quantity);
	}
}