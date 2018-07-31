package com.icz.pojo;

import java.io.File;

public class FresherDetails_Pojo {
	private int f_id, u_id, f_ssc_yop, f_puc_yop, f_ug_yop, f_pg_yop, f_ssc, f_puc, f_pg, f_ug;
	private String f_ug_branch, f_pg_branch;
	private File f_resume;
	UserTable_Pojo u;

	public UserTable_Pojo getU() {
		return u;
	}

	public void setU(UserTable_Pojo u) {
		this.u = u;
	}

	public int getF_id() {
		return f_id;
	}

	public void setF_id(int f_id) {
		this.f_id = f_id;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public int getF_ssc_yop() {
		return f_ssc_yop;
	}

	public void setF_ssc_yop(int f_ssc_yop) {
		this.f_ssc_yop = f_ssc_yop;
	}

	public int getF_puc_yop() {
		return f_puc_yop;
	}

	public void setF_puc_yop(int f_puc_yop) {
		this.f_puc_yop = f_puc_yop;
	}

	public int getF_ug_yop() {
		return f_ug_yop;
	}

	public void setF_ug_yop(int f_ug_yop) {
		this.f_ug_yop = f_ug_yop;
	}

	public int getF_pg_yop() {
		return f_pg_yop;
	}

	public void setF_pg_yop(int f_pg_yop) {
		this.f_pg_yop = f_pg_yop;
	}

	public int getF_ssc() {
		return f_ssc;
	}

	public void setF_ssc(int f_ssc) {
		this.f_ssc = f_ssc;
	}

	public int getF_puc() {
		return f_puc;
	}

	public void setF_puc(int f_puc) {
		this.f_puc = f_puc;
	}

	public int getF_pg() {
		return f_pg;
	}

	public void setF_pg(int f_pg) {
		this.f_pg = f_pg;
	}

	public int getF_ug() {
		return f_ug;
	}

	public void setF_ug(int f_ug) {
		this.f_ug = f_ug;
	}

	public String getF_ug_branch() {
		return f_ug_branch;
	}

	public void setF_ug_branch(String f_ug_branch) {
		this.f_ug_branch = f_ug_branch;
	}

	public String getF_pg_branch() {
		return f_pg_branch;
	}

	public void setF_pg_branch(String f_pg_branch) {
		this.f_pg_branch = f_pg_branch;
	}

	public File getF_resume() {
		return f_resume;
	}

	public void setF_resume(File f_resume) {
		this.f_resume = f_resume;
	}

}