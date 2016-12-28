package servicesImpl;


import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import exceptions.OperationException;
import models.Post;
import models.User;
import services.PostService;
import utils.HibernateUtils;
import utils.PersistenceManager;

public class PostServiceImpl implements PostService {

	SessionFactory sessionFactory = HibernateUtils.getSessionFactory();

	Set<Post> posts = new HashSet<Post>();
	Post post = new Post();

	PostServiceImpl() {
	} // <-- package level access

	public void createPost(HttpServletRequest req) throws OperationException {

		try (Session session = sessionFactory.getCurrentSession()) {
			session.beginTransaction();
			User user = (User) req.getSession().getAttribute("currentUser");
			post.setSummary(req.getParameter("inputSummary"));
			post.setText(req.getParameter("inputText"));
			
			Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
			post.setCreated(timeStamp);
			post.setOwner(user);
			user.getPosts().add(post);

			session.save(post); // post.setImage(req.getParameter("image")); -
								// should be modified according to technology of
								// image loading same with video upload
			session.getTransaction().commit();
			session.close();
		} catch (HibernateException e) {
			throw new OperationException("Unable to create new post. Try again later");
		}

	}

	public Post getPostById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Set<Post> getAllPosts() {
		try (Session session = sessionFactory.getCurrentSession()) {
			session.beginTransaction();
			CriteriaBuilder builder = PersistenceManager.INSTANCE.getEntityManager().getCriteriaBuilder();
			CriteriaQuery<Post> criteria = builder.createQuery(Post.class);
			Root<Post> root = criteria.from(Post.class);

			criteria.select(root);
			posts.addAll(PersistenceManager.INSTANCE.getEntityManager().createQuery(criteria).getResultList());
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	public void deletePost(long id) {
		// TODO Auto-generated method stub

	}

}
