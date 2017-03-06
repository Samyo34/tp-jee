package tags;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class DateTag extends SimpleTagSupport{
	
	private Date date;
	private String format;
	
	public void doTag() throws JspException, IOException{
		JspWriter out = getJspContext().getOut();
		SimpleDateFormat form = new SimpleDateFormat(format);
		String res = form.format(date);
		out.print(res);
	}

	public Date getD() {
		return date;
	}

	public void setDate(Date d) {
		this.date = d;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

}
