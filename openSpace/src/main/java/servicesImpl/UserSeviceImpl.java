package servicesImpl;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import meta.models.User_;
import models.User;
import services.UserService;
import utils.HibernateUtils;
import utils.PersistenceManager;

public class UserSeviceImpl implements UserService {
	
	User user = new User();

	SessionFactory sessionFactory = HibernateUtils.getSessionFactory(); // should be created ONLY ONE TIME!!
	Session session = sessionFactory.getCurrentSession();
	
	 UserSeviceImpl() {       // package level access
		// need add logging
	}

	public void createUser(HttpServletRequest req) {
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

	public User getUserById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public User getUserByCredentials(String login, String password) {
		session.beginTransaction();
		CriteriaBuilder builder = PersistenceManager.INSTANCE.getEntityManager().getCriteriaBuilder();
		CriteriaQuery<String> criteria = builder.createQuery(String.class);
		Root<User> root = criteria.from(User.class);

		Path<Long> idPath = root.get(User_.id);
		Path<String> firstNamePath = root.get(User_.firstName);
		Path<String> lastNamePath = root.get(User_.lastName);
		Path<String> loginPath = root.get(User_.login);
		Path<String> passwordPath = root.get(User_.password);
		Path<String> emailPath = root.get(User_.email);
		Path<Timestamp> dateOfBirthPath = root.get(User_.dateOfBirth);
		Path<Byte[]> avatarPath = root.get(User_.avatar);

		criteria.multiselect(builder.construct(User.class, idPath, firstNamePath, lastNamePath, loginPath, passwordPath,
				emailPath, dateOfBirthPath, avatarPath));
		criteria.where(builder.equal(root.get(User_.login), login));
		criteria.where(builder.equal(root.get(User_.password), password));
		User user = (User) PersistenceManager.INSTANCE.getEntityManager().createQuery(criteria);
		session.getTransaction().commit();
		session.close();
		return user;
	}

	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteUser(long id) {
		// TODO Auto-generated method stub

	}

}
