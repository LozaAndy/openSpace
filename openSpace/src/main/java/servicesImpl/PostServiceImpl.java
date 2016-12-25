package servicesImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import models.Post;
import services.PostService;
import utils.HibernateUtils;

public class PostServiceImpl implements PostService {

	SessionFactory sessionFactory = HibernateUtils.getSessionFactory();
	Session session = sessionFactory.getCurrentSession();

	Post post = new Post();

	public void createPost(HttpServletRequest req) {
		// req.getSession().getAttribute("currentUser"); - there I planning to
		// save info about current User
		session.beginTransaction();
		post.setSummary(req.getParameter("inputSummary"));
		post.setText(req.getParameter("inputText"));
		// post.setImage(req.getParameter("image")); - should be modified
		// according to technology of image loading
		// same with video upload

	}

	public Post getPostById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Post> getAllPosts() {
		// TODO Auto-generated method stub
		return null;
	}

	public void deletePost(long id) {
		// TODO Auto-generated method stub

	}

}
