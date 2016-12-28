package servicesImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import exceptions.OperationException;
import exceptions.ValidationException;
import models.User;
import models.User_;
import services.UserService;
import utils.HibernateUtils;
import utils.PersistenceManager;

public class UserSeviceImpl implements UserService {

	User user = new User();
	List<User> users = new ArrayList<User>();

	SessionFactory sessionFactory = HibernateUtils.getSessionFactory(); // should
																		// be
																		// created
																		// ONLY
																		// ONE
																		// TIME!!

	UserSeviceImpl() { // package level access
		// need add logging
	}

	public void createUser(HttpServletRequest req) {
		try (Session session = sessionFactory.getCurrentSession()) {
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
		}

	}

	public User getUserById(long id) throws OperationException {
		try(Session session = sessionFactory.getCurrentSession()){
			session.beginTransaction();
			user = session.load(User.class, id);
			session.close();
		}
		catch(HibernateException e){
			throw new OperationException("User not found");
		}
		return user;
	}

	public User getUserByCredentials(String login, String password) throws ValidationException {
		try (Session session = sessionFactory.getCurrentSession()) {
			session.beginTransaction();
			CriteriaBuilder builder = PersistenceManager.INSTANCE.getEntityManager().getCriteriaBuilder();
			CriteriaQuery<User> criteria = builder.createQuery(User.class);
			Root<User> root = criteria.from(User.class);

			List<Predicate> predicates = new ArrayList<Predicate>();
			predicates.add(builder.like(root.get(User_.login), login));
			predicates.add(builder.like(root.get(User_.password), password));

			criteria.where(predicates.toArray(new Predicate[] {}));

			user = PersistenceManager.INSTANCE.getEntityManager().createQuery(criteria).getSingleResult();
			session.getTransaction().commit();
			session.close();
		} catch (NoResultException e) {
			throw new ValidationException("Bad credentials");
		}
		return user;
	}

	public List<User> getAllUsers() {

		try (Session session = sessionFactory.getCurrentSession()) {

			session.beginTransaction();
			CriteriaBuilder builder = PersistenceManager.INSTANCE.getEntityManager().getCriteriaBuilder();
			CriteriaQuery<User> criteria = builder.createQuery(User.class);
			Root<User> root = criteria.from(User.class);

			criteria.select(root);
			users.addAll(PersistenceManager.INSTANCE.getEntityManager().createQuery(criteria).getResultList());
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			// need logging
			e.printStackTrace();
		}
		return users;
	}

	public void deleteUser(User user) throws OperationException {
		try (Session session = sessionFactory.getCurrentSession()) {
			session.beginTransaction();
			session.load(User.class, user.getId());
			session.delete(user);
			session.close();
		} catch (HibernateException e) {
			throw new OperationException("User not found");
		}

	}

}
