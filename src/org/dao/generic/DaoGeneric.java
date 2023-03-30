package org.dao.generic;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.modelo.exam.Exam;


public class DaoGeneric {
	
	private Session session;
	
	@SuppressWarnings("unchecked")
	public List<Exam> listExam() {
		List<Exam> list = null;
		try {
			list = (List<Exam>) session.createQuery("from Exam").list();
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
		}
		return list;
	}
	
	public void addExam(Exam exam) {
		
		AnnotationConfiguration cfg = new AnnotationConfiguration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory = cfg.buildSessionFactory();
		Session session = factory.getCurrentSession();
		
		try {
			session.beginTransaction();
			session.save(exam);
			session.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Exception:" + e.getMessage());
		}

	}
	
}
