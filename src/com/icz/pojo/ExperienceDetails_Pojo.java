package com.icz.pojo;

import java.io.File;

public class ExperienceDetails_Pojo {
	private int e_id, u_id;
	private float e_rel_exp, e_total_exp;
	private String e_currentcompany;
	private long e_ctc, e_ectc, e_np;
	private File e_resume;
	UserTable_Pojo u;

	public UserTable_Pojo getU() {
		return u;
	}

	public void setU(UserTable_Pojo u) {
		this.u = u;
	}

	public int getE_id() {
		return e_id;
	}

	public void setE_id(int e_id) {
		this.e_id = e_id;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public float getE_rel_exp() {
		return e_rel_exp;
	}

	public void setE_rel_exp(float e_rel_exp) {
		this.e_rel_exp = e_rel_exp;
	}

	public float getE_total_exp() {
		return e_total_exp;
	}

	public void setE_total_exp(float e_total_exp) {
		this.e_total_exp = e_total_exp;
	}

	public String getE_currentcompany() {
		return e_currentcompany;
	}

	public void setE_currentcompany(String e_currentcompany) {
		this.e_currentcompany = e_currentcompany;
	}

	public long getE_ctc() {
		return e_ctc;
	}

	public void setE_ctc(long e_ctc) {
		this.e_ctc = e_ctc;
	}

	public long getE_ectc() {
		return e_ectc;
	}

	public void setE_ectc(long e_ectc) {
		this.e_ectc = e_ectc;
	}

	public long getE_np() {
		return e_np;
	}

	public void setE_np(long e_np) {
		this.e_np = e_np;
	}

	public File getE_resume() {
		return e_resume;
	}

	public void setE_resume(File e_resume) {
		this.e_resume = e_resume;
	}

}