package serviceImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import models.User;
import services.UserService;
import utils.HibernateUtils;

public class UserServiceImpl implements UserService {
	
	User user = new User();

	SessionFactory sessionFactory = HibernateUtils.getSessionFactory();
	
	Session session = sessionFactory.getCurrentSession();
	

	

	
	public void addData(HttpServletRequest req) {
		session.beginTransaction();
		user.setFirstName(req.getParameter("inputFirstName"));
		user.setLastName(req.getParameter("inputLastName"));
		user.setEmail(req.getParameter("inputEmail"));
		user.setLogin(req.getParameter("inputLogin"));
		user.setPassword(req.getParameter("inputPassword1"));
		
		session.save(user);
		session.getTransaction().commit();
		// need to add logging
		session.close();        // probably should use sessionFactory.close();??

	}

	public Object getData(int id) {
		session.beginTransaction();
		user = (User)session.get(User.class, id);   // continue later
		return user;
	}

	public List<User> getAllData() {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteData(int id) {
		// TODO Auto-generated method stub

	}

}
