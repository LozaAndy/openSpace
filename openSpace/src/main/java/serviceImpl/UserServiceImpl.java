package serviceImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import models.User;
import services.DataService;
import utils.HibernateUtils;

public class UserServiceImpl implements DataService<User> {

	User user = new User();

	SessionFactory sessionFactory = HibernateUtils.getSessionFactory(); // should
																		// be
																		// created
																		// ONLY
																		// ONE
																		// TIME!!
	Session session = sessionFactory.getCurrentSession();

	public void addData(HttpServletRequest req) {
		try {
			session.beginTransaction();
			user.setFirstName(req.getParameter("inputFirstName"));
			user.setLastName(req.getParameter("inputLastName"));
			user.setEmail(req.getParameter("inputEmail"));
			user.setLogin(req.getParameter("inputLogin"));
			user.setPassword(req.getParameter("inputPassword1"));
			session.save(user);
			session.getTransaction().commit();
			// need to add logging
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}

	}

	public Object getData(String login, String password) { // need more
															// investigations
		session.beginTransaction();
				
		return user;
	}

	public List<User> getAllData() {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteData(long id) {
		// TODO Auto-generated method stub

	}

	public Object getById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getByCredentials(String login, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
