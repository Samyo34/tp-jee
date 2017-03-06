package tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class UpperTag extends SimpleTagSupport{
	
	private String lower;
	
	public void doTag() throws JspException, IOException{
		JspWriter out = getJspContext().getOut();
		out.print(lower.toUpperCase());
	}

	public String getLower() {
		return lower;
	}

	public void setLower(String lower) {
		this.lower = lower;
	}


}
