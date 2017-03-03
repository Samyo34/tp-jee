package libs;

import java.util.Date;

public class UserBean {
	
	private String login;
	private Date loginDate;
	private String previousLoginDate;
	
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public Date getLoginDate() {
		return loginDate;
	}
	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}
	public String getPreviousLoginDate() {
		return previousLoginDate;
	}
	public void setPreviousLoginDate(String previousLoginDate) {
		this.previousLoginDate = previousLoginDate;
	}

}
