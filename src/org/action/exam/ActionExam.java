package org.action.exam;

import java.util.ArrayList;
import java.util.List;

import org.dao.generic.DaoGeneric;
import org.modelo.exam.Exam;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class ActionExam extends ActionSupport implements ModelDriven<Exam>{
	
	private Exam exam = new Exam();
	private DaoGeneric dao = new DaoGeneric();
	private List<Exam> listExam = new ArrayList<Exam>();
	
	public String execute() {
		return SUCCESS;
	}
	
	public String add() {
		dao.addExam(exam);
		return SUCCESS;
	}
	
	public String list() {
		setListExam(dao.listExam());
		return SUCCESS;
	}
	
	@Override
	public Exam getModel() {
		return exam;
	}

	public Exam getExam() {
		return exam;
	}

	public void setExam(Exam exam) {
		this.exam = exam;
	}

	public List<Exam> getListExam() {
		return listExam;
	}

	public void setListExam(List<Exam> listExam) {
		this.listExam = listExam;
	}
	
}
