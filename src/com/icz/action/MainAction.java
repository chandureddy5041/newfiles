package com.icz.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.icz.dao.ConnectionDAO;
import com.icz.pojo.ExperienceDetails_Pojo;
import com.icz.pojo.FresherDetails_Pojo;
import com.icz.pojo.QuestionsPP_Pojo;
import com.icz.pojo.QuestionsPojo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MainAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	/* Map Object for session */
	private Map<String, Object> session;
	/* For fresher registration */
	private int pg_yop, pg_perc, ug_yop, inter_yop, ug_perc, ssc_perc, ssc_yop, inter_perc;
	private String branch_ug, branch_pg;
	private File resume;
	List<FresherDetails_Pojo> freshlist = new ArrayList<FresherDetails_Pojo>();
	List<ExperienceDetails_Pojo> explist = new ArrayList<ExperienceDetails_Pojo>();
	/* For experience registration */
	private int RE_years, RE_months, TE_years, TE_months, notice_p;
	private String company;
	private long ctc_e, ctc_c;
	/* For contact us */
	private String name, email, message;
	/* For practice papers and online test */
	List<Object> allsubjects = new ArrayList<Object>();
	/* For practice papers questions */
	private String sub;
	List<Object> ppquestionlist = new ArrayList<Object>();
	List<Object> otquestionlist = new ArrayList<Object>();
	/* For PP and OT answer verification */
	List<String> submitanswer = new ArrayList<String>();
	List<String> compareanswer = new ArrayList<String>();
	List<Object> answer = new ArrayList<Object>();
	List<String> corranswer = new ArrayList<String>();
	private List<String> correctresult = new ArrayList<String>();
	private List<String> wrongresult = new ArrayList<String>();
	private String s;
	private String question;
	/* For getting questions from both pp & ot */
	private String question_1 = null, question_2 = null, question_3 = null, question_4 = null, question_5 = null,
			question_6 = null, question_7 = null, question_8 = null, question_9 = null, question_10 = null,
			question_11 = null, question_12 = null, question_13 = null, question_14 = null, question_15 = null,
			question_16 = null, question_17 = null, question_18 = null, question_19 = null, question_20 = null,
			question_21 = null, question_22 = null, question_23 = null, question_24 = null, question_25 = null,
			question_26 = null, question_27 = null, question_28 = null, question_29 = null, question_30 = null,
			question_31 = null, question_32 = null, question_33 = null, question_34 = null, question_35 = null,
			question_36 = null, question_37 = null, question_38 = null, question_39 = null, question_40 = null,
			question_41 = null, question_42 = null, question_43 = null, question_44 = null, question_45 = null,
			question_46 = null, question_47 = null, question_48 = null, question_49 = null, question_50 = null,
			question_51 = null, question_52 = null, question_53 = null, question_54 = null, question_55 = null,
			question_56 = null, question_57 = null, question_58 = null, question_59 = null, question_60 = null;
	/* For OT registration */
	private String FirstName, LastName, dob, gender, emailot;
	private long MobileNumber;

	/*-------------------*/
	/*-------------------*/
	/*------Methods------*/
	/*-------------------*/
	/*-------------------*/
	ConnectionDAO con = new ConnectionDAO();

	/* For Reloading index.jsp page */
	public String reloading() throws Exception {
		return SUCCESS;
	}

	/* For Renaming no action, no jsp extension */
	public String renaming() throws Exception {
		return SUCCESS;
	}

	/* For checking fresher is already registered or not */
	public String checkingfresher() throws Exception {
		session = ActionContext.getContext().getSession();
		int usid = (int) session.get("x");
		freshlist = con.checkfresherdetails(usid);
		if (freshlist.size() == 0) {
			return SUCCESS;
		} else {
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("freshlist", freshlist);
			return SUCCESS;
		}
	}

	/* For fresher registration */
	public String fresherinsert() throws Exception {
		if (pg_yop == 0) {
			if (ug_yop >= inter_yop + 3) {
				if (inter_yop >= ssc_yop + 2) {
					session = ActionContext.getContext().getSession();
					int usid = (int) session.get("x");
					freshlist = con.insertfresherdetails(usid, pg_yop, pg_perc, ug_yop, inter_yop, ug_perc, ssc_perc,
							ssc_yop, inter_perc, branch_ug, branch_pg, resume);
					session.put("freshlist", freshlist);
					addActionError("Successfully Registered, Thank you!");
					return SUCCESS;
				} else {
					addActionError("Please enter valid year of pass");
					return ERROR;
				}
			} else {
				addActionError("Please enter valid year of pass");
				return ERROR;
			}
		} else if (pg_yop >= ug_yop + 2) {
			if (ug_yop >= inter_yop + 3) {
				if (inter_yop >= ssc_yop + 2) {
					session = ActionContext.getContext().getSession();
					int usid = (int) session.get("x");
					freshlist = con.insertfresherdetails(usid, pg_yop, pg_perc, ug_yop, inter_yop, ug_perc, ssc_perc,
							ssc_yop, inter_perc, branch_ug, branch_pg, resume);
					addActionError("Successfully Registered, Thank you!");
					return SUCCESS;
				} else {
					addActionError("Please enter valid year of pass");
					return ERROR;
				}
			} else {
				addActionError("Please enter valid year of pass");
				return ERROR;
			}
		} else {
			addActionError("Please enter valid year of pass");
			return ERROR;
		}
	}

	/* For checking experience is already registered or not */
	public String checkingexperience() throws Exception {
		session = ActionContext.getContext().getSession();
		int usid = (int) session.get("x");
		explist = con.checkexperiencedetails(usid);
		if (explist.size() == 0) {
			return SUCCESS;
		} else {
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("explist", explist);
			return SUCCESS;
		}
	}

	/* For experience registration */
	public String experienceinsert() throws Exception {
		float rel_exp = Float.parseFloat(RE_years + "." + RE_months);
		float tot_exp = Float.parseFloat(TE_years + "." + TE_months);
		if (tot_exp < rel_exp) {
			addActionError("Please enter valid years of experience");
			return ERROR;
		} else {
			session = ActionContext.getContext().getSession();
			int usid = (int) session.get("x");
			explist = con.insertexperiencedetails(usid, rel_exp, tot_exp, notice_p, company, ctc_c, ctc_e, resume);
			session.put("explist", explist);
			addActionError("Successfully Registered, Thank you!");
			return SUCCESS;
		}
	}

	/* For contact us */
	public String contactinsert() throws Exception {
		con.contactsave(name, email, message);
		addActionError("Thank you, we'll respond you soon!");
		return SUCCESS;
	}

	/* For practice papers and online test */
	public String gettestsubjects() throws Exception {
		allsubjects = con.getallsubjects();
		return SUCCESS;
	}

	/* For getting and putting subject in session */
	public String getsubdetails() throws Exception {
		session.put("sub", sub);
		return SUCCESS;
	}

	/* For practice papers questions */
	public String getpaper() throws Exception {
		String selectedsubject = (String) session.get("sub");
		ppquestionlist = con.getppquestions(selectedsubject);
		session.put("ppquestionlist", ppquestionlist);
		return SUCCESS;
	}

	/* For PP answer verification */
	@SuppressWarnings("unchecked")
	public String ResultverificationPP() throws Exception {
		/* There are 25 questions in PP */
		submitanswer.add(getQuestion_1());
		submitanswer.add(getQuestion_2());
		submitanswer.add(getQuestion_3());
		submitanswer.add(getQuestion_4());
		submitanswer.add(getQuestion_5());
		submitanswer.add(getQuestion_6());
		submitanswer.add(getQuestion_7());
		submitanswer.add(getQuestion_8());
		submitanswer.add(getQuestion_9());
		submitanswer.add(getQuestion_10());
		submitanswer.add(getQuestion_11());
		submitanswer.add(getQuestion_12());
		submitanswer.add(getQuestion_13());
		submitanswer.add(getQuestion_14());
		submitanswer.add(getQuestion_15());
		submitanswer.add(getQuestion_16());
		submitanswer.add(getQuestion_17());
		submitanswer.add(getQuestion_18());
		submitanswer.add(getQuestion_19());
		submitanswer.add(getQuestion_20());
		submitanswer.add(getQuestion_21());
		submitanswer.add(getQuestion_22());
		submitanswer.add(getQuestion_23());
		submitanswer.add(getQuestion_24());
		submitanswer.add(getQuestion_25());

		Iterator<String> itr = submitanswer.iterator();
		while (itr.hasNext()) {
			for (int i = 1; i <= submitanswer.size();) {
				String s1 = new String(i + "." + itr.next());
				compareanswer.add(s1);
				i++;
			}
		}

		answer = (List<Object>) session.get("ppquestionlist");
		Iterator<Object> it = answer.iterator();
		while (it.hasNext()) {
			for (int i = 1; i <= answer.size();) {
				String s1 = new String(i + "." + ((QuestionsPP_Pojo) it.next()).getCorrectans().toString());
				corranswer.add(s1);
				i++;
			}
		}

		int j = 0;
		int sizeOfTheShortestList = Math.min(corranswer.size(), compareanswer.size());
		for (int i = 0; i < sizeOfTheShortestList; i++) {
			if (corranswer.get(i).equals(compareanswer.get(i))) {
				String s = corranswer.get(i);
				String s1 = s + " is Correct:";
				correctresult.add(s1);
				System.out.println(corranswer.get(i) + "  is  Correct :  your answer is " + submitanswer.get(i));
				j++;
			} else {
				String s = compareanswer.get(i);
				String s1 = s + " is Wrong";
				wrongresult.add(s1);
				System.out.println(compareanswer.get(i) + "  is Wrong");
			}
		}

		int val = compareanswer.size();
		session.put("totalcorrectanswers", j);
		session.put("totalquestions", val);
		s = "Total correct answers are " + j + " out of " + val + "";
		System.out.println("Total Correct answers are " + j + " out of " + compareanswer.size());
		double percentage = j * 100 / compareanswer.size();
		session.put("percantage", percentage);
		System.out.println(percentage + "%");
		con.saveresultpp(j, val);

		return SUCCESS;
	}

	/* For online papers questions */
	public String getpaperot() throws Exception {
		session.put("otfname", FirstName);
		session.put("otlname", LastName);
		session.put("otdob", dob);
		session.put("otgender", gender);
		session.put("otemailot", emailot);
		session.put("otmno", MobileNumber);
		otquestionlist = con.getotquestions();
		session.put("otquestionlist", otquestionlist);
		return SUCCESS;
	}

	/* For OT answer verification */
	@SuppressWarnings("unchecked")
	public String ResultverificationOT() throws Exception {
		/* There are 60 questions in PP */
		submitanswer.add(getQuestion_1());
		submitanswer.add(getQuestion_2());
		submitanswer.add(getQuestion_3());
		submitanswer.add(getQuestion_4());
		submitanswer.add(getQuestion_5());
		submitanswer.add(getQuestion_6());
		submitanswer.add(getQuestion_7());
		submitanswer.add(getQuestion_8());
		submitanswer.add(getQuestion_9());
		submitanswer.add(getQuestion_10());
		submitanswer.add(getQuestion_11());
		submitanswer.add(getQuestion_12());
		submitanswer.add(getQuestion_13());
		submitanswer.add(getQuestion_14());
		submitanswer.add(getQuestion_15());
		submitanswer.add(getQuestion_16());
		submitanswer.add(getQuestion_17());
		submitanswer.add(getQuestion_18());
		submitanswer.add(getQuestion_19());
		submitanswer.add(getQuestion_20());
		submitanswer.add(getQuestion_21());
		submitanswer.add(getQuestion_22());
		submitanswer.add(getQuestion_23());
		submitanswer.add(getQuestion_24());
		submitanswer.add(getQuestion_25());
		submitanswer.add(getQuestion_26());
		submitanswer.add(getQuestion_27());
		submitanswer.add(getQuestion_28());
		submitanswer.add(getQuestion_29());
		submitanswer.add(getQuestion_30());
		submitanswer.add(getQuestion_31());
		submitanswer.add(getQuestion_32());
		submitanswer.add(getQuestion_33());
		submitanswer.add(getQuestion_34());
		submitanswer.add(getQuestion_35());
		submitanswer.add(getQuestion_36());
		submitanswer.add(getQuestion_37());
		submitanswer.add(getQuestion_38());
		submitanswer.add(getQuestion_39());
		submitanswer.add(getQuestion_40());
		submitanswer.add(getQuestion_41());
		submitanswer.add(getQuestion_42());
		submitanswer.add(getQuestion_43());
		submitanswer.add(getQuestion_44());
		submitanswer.add(getQuestion_45());
		submitanswer.add(getQuestion_46());
		submitanswer.add(getQuestion_47());
		submitanswer.add(getQuestion_48());
		submitanswer.add(getQuestion_49());
		submitanswer.add(getQuestion_50());
		submitanswer.add(getQuestion_51());
		submitanswer.add(getQuestion_52());
		submitanswer.add(getQuestion_53());
		submitanswer.add(getQuestion_54());
		submitanswer.add(getQuestion_55());
		submitanswer.add(getQuestion_56());
		submitanswer.add(getQuestion_57());
		submitanswer.add(getQuestion_58());
		submitanswer.add(getQuestion_59());
		submitanswer.add(getQuestion_60());

		Iterator<String> itr = submitanswer.iterator();
		while (itr.hasNext()) {
			for (int i = 1; i <= submitanswer.size();) {
				String s1 = new String(i + "." + itr.next());
				compareanswer.add(s1);
				i++;
			}
		}

		answer = (List<Object>) session.get("otquestionlist");
		Iterator<Object> it = answer.iterator();
		while (it.hasNext()) {
			for (int i = 1; i <= answer.size();) {
				String s1 = new String(i + "." + ((QuestionsPojo) it.next()).getCorrectans().toString());
				corranswer.add(s1);
				i++;
			}
		}

		int j = 0;
		int sizeOfTheShortestList = Math.min(corranswer.size(), compareanswer.size());
		for (int i = 0; i < sizeOfTheShortestList; i++) {
			if (corranswer.get(i).equals(compareanswer.get(i))) {
				String s = corranswer.get(i);
				String s1 = s + " is Correct:";
				correctresult.add(s1);
				System.out.println(corranswer.get(i) + "  is  Correct :  your answer is " + submitanswer.get(i));
				j++;
			} else {
				String s = compareanswer.get(i);
				String s1 = s + " is Wrong";
				wrongresult.add(s1);
				System.out.println(compareanswer.get(i) + "  is Wrong");
			}
		}

		int val = compareanswer.size();
		session.put("totalcorrectanswers", j);
		session.put("totalquestions", val);
		s = "Total correct answers are " + j + " out of " + val + "";
		System.out.println("Total Correct answers are " + j + " out of " + compareanswer.size());
		double percentage = j * 100 / compareanswer.size();
		session.put("percantage", percentage);
		System.out.println(percentage + "%");
		String otfname = (String) session.get("otfname");
		String otlname = (String) session.get("otlname");
		String otdob = (String) session.get("otdob");
		String otgender = (String) session.get("otgender");
		String otemailot = (String) session.get("otemailot");
		Long otmno = (Long) session.get("otmno");

		con.saveresultot(otfname, otlname, otdob, otgender, otemailot, otmno, j, val);
		return SUCCESS;
	}

	/*---------------------*/
	/*---------------------*/
	/* Setters and Getters */
	/*---------------------*/
	/*---------------------*/

	public Map<String, Object> getSession() {
		return session;
	}

	public List<Object> getOtquestionlist() {
		return otquestionlist;
	}

	public void setOtquestionlist(List<Object> otquestionlist) {
		this.otquestionlist = otquestionlist;
	}

	public String getFirstName() {
		return FirstName;
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

	public String getEmailot() {
		return emailot;
	}

	public void setEmailot(String emailot) {
		this.emailot = emailot;
	}

	public long getMobileNumber() {
		return MobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		MobileNumber = mobileNumber;
	}

	public List<String> getCorrectresult() {
		return correctresult;
	}

	public void setCorrectresult(List<String> correctresult) {
		this.correctresult = correctresult;
	}

	public List<String> getWrongresult() {
		return wrongresult;
	}

	public void setWrongresult(List<String> wrongresult) {
		this.wrongresult = wrongresult;
	}

	public String getS() {
		return s;
	}

	public void setS(String s) {
		this.s = s;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public List<String> getCorranswer() {
		return corranswer;
	}

	public void setCorranswer(List<String> corranswer) {
		this.corranswer = corranswer;
	}

	public List<Object> getAnswer() {
		return answer;
	}

	public void setAnswer(List<Object> answer) {
		this.answer = answer;
	}

	public List<String> getCompareanswer() {
		return compareanswer;
	}

	public void setCompareanswer(List<String> compareanswer) {
		this.compareanswer = compareanswer;
	}

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public List<Object> getPpquestionlist() {
		return ppquestionlist;
	}

	public void setPpquestionlist(List<Object> ppquestionlist) {
		this.ppquestionlist = ppquestionlist;
	}

	public List<Object> getAllsubjects() {
		return allsubjects;
	}

	public void setAllsubjects(List<Object> allsubjects) {
		this.allsubjects = allsubjects;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getRE_years() {
		return RE_years;
	}

	public void setRE_years(int rE_years) {
		RE_years = rE_years;
	}

	public int getRE_months() {
		return RE_months;
	}

	public void setRE_months(int rE_months) {
		RE_months = rE_months;
	}

	public int getTE_years() {
		return TE_years;
	}

	public void setTE_years(int tE_years) {
		TE_years = tE_years;
	}

	public int getTE_months() {
		return TE_months;
	}

	public void setTE_months(int tE_months) {
		TE_months = tE_months;
	}

	public int getNotice_p() {
		return notice_p;
	}

	public void setNotice_p(int notice_p) {
		this.notice_p = notice_p;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public long getCtc_e() {
		return ctc_e;
	}

	public void setCtc_e(long ctc_e) {
		this.ctc_e = ctc_e;
	}

	public long getCtc_c() {
		return ctc_c;
	}

	public void setCtc_c(long ctc_c) {
		this.ctc_c = ctc_c;
	}

	public List<ExperienceDetails_Pojo> getExplist() {
		return explist;
	}

	public void setExplist(List<ExperienceDetails_Pojo> explist) {
		this.explist = explist;
	}

	public List<FresherDetails_Pojo> getFreshlist() {
		return freshlist;
	}

	public void setFreshlist(List<FresherDetails_Pojo> freshlist) {
		this.freshlist = freshlist;
	}

	public int getPg_yop() {
		return pg_yop;
	}

	public void setPg_yop(int pg_yop) {
		this.pg_yop = pg_yop;
	}

	public int getPg_perc() {
		return pg_perc;
	}

	public void setPg_perc(int pg_perc) {
		this.pg_perc = pg_perc;
	}

	public int getUg_yop() {
		return ug_yop;
	}

	public void setUg_yop(int ug_yop) {
		this.ug_yop = ug_yop;
	}

	public int getInter_yop() {
		return inter_yop;
	}

	public void setInter_yop(int inter_yop) {
		this.inter_yop = inter_yop;
	}

	public int getUg_perc() {
		return ug_perc;
	}

	public void setUg_perc(int ug_perc) {
		this.ug_perc = ug_perc;
	}

	public int getSsc_perc() {
		return ssc_perc;
	}

	public void setSsc_perc(int ssc_perc) {
		this.ssc_perc = ssc_perc;
	}

	public int getSsc_yop() {
		return ssc_yop;
	}

	public void setSsc_yop(int ssc_yop) {
		this.ssc_yop = ssc_yop;
	}

	public int getInter_perc() {
		return inter_perc;
	}

	public void setInter_perc(int inter_perc) {
		this.inter_perc = inter_perc;
	}

	public String getBranch_ug() {
		return branch_ug;
	}

	public void setBranch_ug(String branch_ug) {
		this.branch_ug = branch_ug;
	}

	public String getBranch_pg() {
		return branch_pg;
	}

	public void setBranch_pg(String branch_pg) {
		this.branch_pg = branch_pg;
	}

	public File getResume() {
		return resume;
	}

	public void setResume(File resume) {
		this.resume = resume;
	}

	public List<String> getSubmitanswer() {
		return submitanswer;
	}

	public void setSubmitanswer(List<String> submitanswer) {
		this.submitanswer = submitanswer;
	}

	public String getQuestion_1() {
		return question_1;
	}

	public void setQuestion_1(String question_1) {
		this.question_1 = question_1;
	}

	public String getQuestion_2() {
		return question_2;
	}

	public void setQuestion_2(String question_2) {
		this.question_2 = question_2;
	}

	public String getQuestion_3() {
		return question_3;
	}

	public void setQuestion_3(String question_3) {
		this.question_3 = question_3;
	}

	public String getQuestion_4() {
		return question_4;
	}

	public void setQuestion_4(String question_4) {
		this.question_4 = question_4;
	}

	public String getQuestion_5() {
		return question_5;
	}

	public void setQuestion_5(String question_5) {
		this.question_5 = question_5;
	}

	public String getQuestion_6() {
		return question_6;
	}

	public void setQuestion_6(String question_6) {
		this.question_6 = question_6;
	}

	public String getQuestion_7() {
		return question_7;
	}

	public void setQuestion_7(String question_7) {
		this.question_7 = question_7;
	}

	public String getQuestion_8() {
		return question_8;
	}

	public void setQuestion_8(String question_8) {
		this.question_8 = question_8;
	}

	public String getQuestion_9() {
		return question_9;
	}

	public void setQuestion_9(String question_9) {
		this.question_9 = question_9;
	}

	public String getQuestion_10() {
		return question_10;
	}

	public void setQuestion_10(String question_10) {
		this.question_10 = question_10;
	}

	public String getQuestion_11() {
		return question_11;
	}

	public void setQuestion_11(String question_11) {
		this.question_11 = question_11;
	}

	public String getQuestion_12() {
		return question_12;
	}

	public void setQuestion_12(String question_12) {
		this.question_12 = question_12;
	}

	public String getQuestion_13() {
		return question_13;
	}

	public void setQuestion_13(String question_13) {
		this.question_13 = question_13;
	}

	public String getQuestion_14() {
		return question_14;
	}

	public void setQuestion_14(String question_14) {
		this.question_14 = question_14;
	}

	public String getQuestion_15() {
		return question_15;
	}

	public void setQuestion_15(String question_15) {
		this.question_15 = question_15;
	}

	public String getQuestion_16() {
		return question_16;
	}

	public void setQuestion_16(String question_16) {
		this.question_16 = question_16;
	}

	public String getQuestion_17() {
		return question_17;
	}

	public void setQuestion_17(String question_17) {
		this.question_17 = question_17;
	}

	public String getQuestion_18() {
		return question_18;
	}

	public void setQuestion_18(String question_18) {
		this.question_18 = question_18;
	}

	public String getQuestion_19() {
		return question_19;
	}

	public void setQuestion_19(String question_19) {
		this.question_19 = question_19;
	}

	public String getQuestion_20() {
		return question_20;
	}

	public void setQuestion_20(String question_20) {
		this.question_20 = question_20;
	}

	public String getQuestion_21() {
		return question_21;
	}

	public void setQuestion_21(String question_21) {
		this.question_21 = question_21;
	}

	public String getQuestion_22() {
		return question_22;
	}

	public void setQuestion_22(String question_22) {
		this.question_22 = question_22;
	}

	public String getQuestion_23() {
		return question_23;
	}

	public void setQuestion_23(String question_23) {
		this.question_23 = question_23;
	}

	public String getQuestion_24() {
		return question_24;
	}

	public void setQuestion_24(String question_24) {
		this.question_24 = question_24;
	}

	public String getQuestion_25() {
		return question_25;
	}

	public void setQuestion_25(String question_25) {
		this.question_25 = question_25;
	}

	public String getQuestion_26() {
		return question_26;
	}

	public void setQuestion_26(String question_26) {
		this.question_26 = question_26;
	}

	public String getQuestion_27() {
		return question_27;
	}

	public void setQuestion_27(String question_27) {
		this.question_27 = question_27;
	}

	public String getQuestion_28() {
		return question_28;
	}

	public void setQuestion_28(String question_28) {
		this.question_28 = question_28;
	}

	public String getQuestion_29() {
		return question_29;
	}

	public void setQuestion_29(String question_29) {
		this.question_29 = question_29;
	}

	public String getQuestion_30() {
		return question_30;
	}

	public void setQuestion_30(String question_30) {
		this.question_30 = question_30;
	}

	public String getQuestion_31() {
		return question_31;
	}

	public void setQuestion_31(String question_31) {
		this.question_31 = question_31;
	}

	public String getQuestion_32() {
		return question_32;
	}

	public void setQuestion_32(String question_32) {
		this.question_32 = question_32;
	}

	public String getQuestion_33() {
		return question_33;
	}

	public void setQuestion_33(String question_33) {
		this.question_33 = question_33;
	}

	public String getQuestion_34() {
		return question_34;
	}

	public void setQuestion_34(String question_34) {
		this.question_34 = question_34;
	}

	public String getQuestion_35() {
		return question_35;
	}

	public void setQuestion_35(String question_35) {
		this.question_35 = question_35;
	}

	public String getQuestion_36() {
		return question_36;
	}

	public void setQuestion_36(String question_36) {
		this.question_36 = question_36;
	}

	public String getQuestion_37() {
		return question_37;
	}

	public void setQuestion_37(String question_37) {
		this.question_37 = question_37;
	}

	public String getQuestion_38() {
		return question_38;
	}

	public void setQuestion_38(String question_38) {
		this.question_38 = question_38;
	}

	public String getQuestion_39() {
		return question_39;
	}

	public void setQuestion_39(String question_39) {
		this.question_39 = question_39;
	}

	public String getQuestion_40() {
		return question_40;
	}

	public void setQuestion_40(String question_40) {
		this.question_40 = question_40;
	}

	public String getQuestion_41() {
		return question_41;
	}

	public void setQuestion_41(String question_41) {
		this.question_41 = question_41;
	}

	public String getQuestion_42() {
		return question_42;
	}

	public void setQuestion_42(String question_42) {
		this.question_42 = question_42;
	}

	public String getQuestion_43() {
		return question_43;
	}

	public void setQuestion_43(String question_43) {
		this.question_43 = question_43;
	}

	public String getQuestion_44() {
		return question_44;
	}

	public void setQuestion_44(String question_44) {
		this.question_44 = question_44;
	}

	public String getQuestion_45() {
		return question_45;
	}

	public void setQuestion_45(String question_45) {
		this.question_45 = question_45;
	}

	public String getQuestion_46() {
		return question_46;
	}

	public void setQuestion_46(String question_46) {
		this.question_46 = question_46;
	}

	public String getQuestion_47() {
		return question_47;
	}

	public void setQuestion_47(String question_47) {
		this.question_47 = question_47;
	}

	public String getQuestion_48() {
		return question_48;
	}

	public void setQuestion_48(String question_48) {
		this.question_48 = question_48;
	}

	public String getQuestion_49() {
		return question_49;
	}

	public void setQuestion_49(String question_49) {
		this.question_49 = question_49;
	}

	public String getQuestion_50() {
		return question_50;
	}

	public void setQuestion_50(String question_50) {
		this.question_50 = question_50;
	}

	public String getQuestion_51() {
		return question_51;
	}

	public void setQuestion_51(String question_51) {
		this.question_51 = question_51;
	}

	public String getQuestion_52() {
		return question_52;
	}

	public void setQuestion_52(String question_52) {
		this.question_52 = question_52;
	}

	public String getQuestion_53() {
		return question_53;
	}

	public void setQuestion_53(String question_53) {
		this.question_53 = question_53;
	}

	public String getQuestion_54() {
		return question_54;
	}

	public void setQuestion_54(String question_54) {
		this.question_54 = question_54;
	}

	public String getQuestion_55() {
		return question_55;
	}

	public void setQuestion_55(String question_55) {
		this.question_55 = question_55;
	}

	public String getQuestion_56() {
		return question_56;
	}

	public void setQuestion_56(String question_56) {
		this.question_56 = question_56;
	}

	public String getQuestion_57() {
		return question_57;
	}

	public void setQuestion_57(String question_57) {
		this.question_57 = question_57;
	}

	public String getQuestion_58() {
		return question_58;
	}

	public void setQuestion_58(String question_58) {
		this.question_58 = question_58;
	}

	public String getQuestion_59() {
		return question_59;
	}

	public void setQuestion_59(String question_59) {
		this.question_59 = question_59;
	}

	public String getQuestion_60() {
		return question_60;
	}

	public void setQuestion_60(String question_60) {
		this.question_60 = question_60;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

}