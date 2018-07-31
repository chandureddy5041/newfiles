package com.icz.dao;

import java.io.*;
import java.util.*;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.icz.pojo.*;
import com.opensymphony.xwork2.ActionContext;

public class ConnectionDAO {

	Configuration con = new Configuration().configure("hibernate.cfg.xml");
	SessionFactory sf = con.buildSessionFactory();
	Session session;

	/* For Registration, checking mail is in DB */
	public int checkforEmail(String email) {
		int i = 0;
		session = sf.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			String SQL_QUERY = ("from UserTable_Pojo s where (s.u_emailid='" + email + "' OR s.u_phone='" + email
					+ "')");
			Query query = session.createQuery(SQL_QUERY);
			i = query.list().size();
			tx.commit();
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return i;
	}

	/* for registering user details */
	public void insertInto(String firstName, String lastName, String dob, String gender, String email, String password,
			String city, String state, long mobileNumber, int zipCode) {
		UserTable_Pojo ut = new UserTable_Pojo();
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		ut.setU_fname(firstName);
		ut.setU_lname(lastName);
		ut.setU_dob(dob);
		ut.setU_gender(gender);
		ut.setU_emailid(email);
		ut.setU_password(password);
		ut.setU_city(city);
		ut.setU_state(state);
		ut.setU_phone(mobileNumber);
		ut.setU_zip(zipCode);
		session.save(ut);
		tx.commit();
	}

	/* For Login */
	@SuppressWarnings("unchecked")
	public String checkforLogin(String uname, String pass) {
		session = sf.openSession();
		Criteria crt = session.createCriteria(UserTable_Pojo.class);
		Criterion c1 = Restrictions.eq("u_emailid", uname);
		Criterion c2 = Restrictions.eq("u_password", pass);
		crt.add(c1);
		crt.add(c2);
		String user = null;
		String e = null;
		String p = null;
		int userid = 0;
		List<UserTable_Pojo> l = crt.list();
		if (l != null) {
			for (UserTable_Pojo ut : l) {
				e = ut.getU_emailid();
				p = ut.getU_password();
				userid = ut.getU_id();
				user = ut.getU_fname();
			}
		}
		if (uname.equals(e) && pass.equals(p)) {
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("x", userid);
			return user;
		} else {
			return null;
		}
	}

	/* For keeping used id in session for sending forgot password mail */
	@SuppressWarnings("unchecked")
	public void uidsession(String to) {
		session = sf.openSession();
		Criteria crt = session.createCriteria(UserTable_Pojo.class);
		Criterion c1 = Restrictions.eq("u_emailid", to);
		crt.add(c1);
		String e = null;
		int userid = 0;
		List<UserTable_Pojo> l = crt.list();
		if (l != null) {
			for (UserTable_Pojo up : l) {
				e = up.getU_emailid();
				userid = up.getU_id();
			}
		}
		if (to.equals(e)) {
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("usid", userid);
		}
	}

	/* For Changing Forgot Password */
	public void updatepassword(int em, String newPassword) {
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		UserTable_Pojo up = (UserTable_Pojo) session.get(UserTable_Pojo.class, new Integer(em));
		up.setU_password(newPassword);
		tx.commit();
		session.close();
	}

	/* For fresher registration */
	@SuppressWarnings("unchecked")
	public List<FresherDetails_Pojo> insertfresherdetails(int usid, int pg_yop, int pg_perc, int ug_yop, int inter_yop,
			int ug_perc, int ssc_perc, int ssc_yop, int inter_perc, String branch_ug, String branch_pg, File resume) {
		FresherDetails_Pojo fdp = new FresherDetails_Pojo();
		List<FresherDetails_Pojo> list = new ArrayList<FresherDetails_Pojo>();
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		fdp.setU_id(usid);
		fdp.setF_pg_yop(pg_yop);
		fdp.setF_pg(pg_perc);
		fdp.setF_ug_yop(ug_yop);
		fdp.setF_puc_yop(inter_yop);
		fdp.setF_ug(ug_perc);
		fdp.setF_ssc(ssc_perc);
		fdp.setF_ssc_yop(ssc_yop);
		fdp.setF_puc(inter_perc);
		fdp.setF_pg_branch(branch_pg);
		fdp.setF_ug_branch(branch_ug);
		fdp.setF_resume(resume);
		session.save(fdp);
		tx.commit();
		try {
			Query qry = session.createQuery("from FresherDetails_Pojo c where c.u_id =" + usid);
			list = qry.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	/* For checking fresher is already registered or not */
	@SuppressWarnings("unchecked")
	public List<FresherDetails_Pojo> checkfresherdetails(int usid) {
		session = sf.openSession();
		List<FresherDetails_Pojo> list = new ArrayList<FresherDetails_Pojo>();
		try {
			Query qry = session.createQuery("from FresherDetails_Pojo c where c.u_id =" + usid);
			list = qry.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	/* For checking experience is already registered or not */
	@SuppressWarnings("unchecked")
	public List<ExperienceDetails_Pojo> checkexperiencedetails(int usid) {
		session = sf.openSession();
		List<ExperienceDetails_Pojo> list = new ArrayList<ExperienceDetails_Pojo>();
		try {
			Query qry = session.createQuery("from ExperienceDetails_Pojo c where c.u_id =" + usid);
			list = qry.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	/* For experience registration */
	@SuppressWarnings("unchecked")
	public List<ExperienceDetails_Pojo> insertexperiencedetails(int usid, float rel_exp, float tot_exp, int notice_p,
			String company, long ctc_c, long ctc_e, File resume) {
		ExperienceDetails_Pojo edp = new ExperienceDetails_Pojo();
		List<ExperienceDetails_Pojo> list = new ArrayList<ExperienceDetails_Pojo>();
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		edp.setU_id(usid);
		edp.setE_rel_exp(rel_exp);
		edp.setE_total_exp(tot_exp);
		edp.setE_ctc(ctc_c);
		edp.setE_ectc(ctc_e);
		edp.setE_np(notice_p);
		edp.setE_currentcompany(company);
		edp.setE_resume(resume);
		session.save(edp);
		tx.commit();
		try {
			Query qry = session.createQuery("from ExperienceDetails_Pojo c where c.u_id =" + usid);
			list = qry.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	/* For contact us */
	public void contactsave(String name, String email, String message) {
		ContactUs_Pojo cp = new ContactUs_Pojo();
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		cp.setC_name(name);
		cp.setC_emailid(email);
		cp.setC_msg(message);
		session.save(cp);
		tx.commit();
	}

	/* For practice papers and online test */
	@SuppressWarnings("unchecked")
	public List<Object> getallsubjects() {
		session = sf.openSession();
		List<Object> l = new ArrayList<Object>();
		Query q = session.createQuery("select distinct qp.subject from QuestionsPP_Pojo qp");
		l = q.list();
		return l;
	}

	/* For practice papers questions */
	@SuppressWarnings("unchecked")
	public List<Object> getppquestions(String sub) {
		session = sf.openSession();
		List<Object> l = new ArrayList<Object>();
		Query q = session.createQuery(" from QuestionsPP_Pojo qp where qp.subject='" + sub + "' order by rand()")
				.setFirstResult(0).setMaxResults(25);
		l = q.list();
		Collections.shuffle(l);
		return l;
	}

	/* For saving result into table */
	public void saveresultpp(int j, int val) {
		int user_id = 1;
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		ResultPP_Pojo rp = new ResultPP_Pojo();
		rp.setU_id(user_id);
		rp.setCorrect_answers(j);
		rp.setTotal_questions(val);
		session.save(rp);
		tx.commit();
	}

	/* For online papers questions */
	@SuppressWarnings("unchecked")
	public List<Object> getotquestions() {
		session = sf.openSession();
		List<Object> l = new ArrayList<Object>();
		Query q = session.createQuery(" from QuestionsPojo qp order by rand()").setFirstResult(0).setMaxResults(60);
		l = q.list();
		Collections.shuffle(l);
		return l;
	}

	/* For saving result into table */
	public void saveresultot(String otfname, String otlname, String otdob, String otgender, String otemailot, Long otmno, int j, int val) {
		int user_id = 1;
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		ResultOT_Pojo rp = new ResultOT_Pojo();
		rp.setU_id(user_id);
		rp.setFname(otfname);
		rp.setLname(otlname);
		rp.setDob(otdob);
		rp.setGender(otgender);
		rp.setMobile(otmno);
		rp.setCorrect_answers(j);
		rp.setTotal_questions(val);
		session.save(rp);
		tx.commit();
	}

}