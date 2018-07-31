package com.icz.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.icz.dao.*;
import com.icz.services.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;

	/* Map Object for session */
	private Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}

	/* For Login */
	private String uname, pass;
	/* For Registration */
	private String FirstName, LastName, dob, gender, email, Password, City, State;
	private long MobileNumber;
	private int ZipCode;
	/* For Forgot password */
	private String to;
	/* For Changing Forgot Password */
	private String NewPassword;
	private String RetypeNewPassword;

	/*-------------------*/
	/*-------------------*/
	/*------Methods------*/
	/*-------------------*/
	/*-------------------*/
	ConnectionDAO con = new ConnectionDAO();

	/* For Registration */
	public String register() throws Exception {
		int i = con.checkforEmail(email);
		if (i != 0) {
			addActionError("Given Email is already registered with us");
			return ERROR;
		} else {
			con.insertInto(FirstName, LastName, dob, gender, email, Password, City, State, MobileNumber, ZipCode);
			addActionError("Thankyou, Now please Login to continue");
			return SUCCESS;
		}
	}

	/* For Login */
	public String login() throws Exception {
		String userList = con.checkforLogin(uname, pass);
		if (userList != null) {
			session.put("username", userList);
			return SUCCESS;
		} else {
			addActionError("Invalid Username or Password");
			return ERROR;
		}
	}

	/* For Log Out */
	public String logout() throws Exception {
		if (session.containsKey("username")) {
			session.remove("username");
			session.remove("x");
			session.remove("freshlist");
			session.remove("explist");
		}
		return SUCCESS;
	}

	/* For Forgot Password */
	public String passwordforgot() throws Exception {
		int i = con.checkforEmail(to);
		con.uidsession(to);
		if (i != 0) {
			ForgotPassMail ma = new ForgotPassMail();
			String chk = ma.sendMsg(to);
			if (chk == "success") {
				addActionError("Please check your Mailbox to reset password");
				return SUCCESS;
			} else {
				return ERROR;
			}
		} else {
			addActionError("Given Email is not registered with us");
			return ERROR;

		}
	}

	/* For Changing Forgot Password */
	public String passwordchange() throws Exception {
		session = ActionContext.getContext().getSession();
		int em = (int) session.get("usid");
		if (NewPassword.equals(RetypeNewPassword)) {
			con.updatepassword(em, NewPassword);
			addActionError("Password Sucessfully Changed");
			return SUCCESS;
		} else {
			addActionError("Sorry, Error occured, Please Try later");
			return ERROR;
		}

	}

	/*---------------------*/
	/*---------------------*/
	/* Setters and Getters */
	/*---------------------*/
	/*---------------------*/
	public String getFirstName() {
		return FirstName;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getNewPassword() {
		return NewPassword;
	}

	public void setNewPassword(String newPassword) {
		NewPassword = newPassword;
	}

	public String getRetypeNewPassword() {
		return RetypeNewPassword;
	}

	public void setRetypeNewPassword(String retypeNewPassword) {
		RetypeNewPassword = retypeNewPassword;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public long getMobileNumber() {
		return MobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		MobileNumber = mobileNumber;
	}

	public int getZipCode() {
		return ZipCode;
	}

	public void setZipCode(int zipCode) {
		ZipCode = zipCode;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

}