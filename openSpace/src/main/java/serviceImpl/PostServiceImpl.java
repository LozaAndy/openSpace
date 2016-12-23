package serviceImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import models.Post;
import services.DataService;
import utils.HibernateUtils;

public class PostServiceImpl implements DataService<Post> {
	
	SessionFactory sessionFactory = HibernateUtils.getSessionFactory();
	Session session = sessionFactory.getCurrentSession();
	

	public void addData(HttpServletRequest req) {
	
		// req.getSession().getAttribute("currentUser"); - there I planning to save info about current User
		session.beginTransaction();
		Post post = new Post();
		post.setSummary(req.getParameter("inputSummary"));
		post.setText(req.getParameter("inputText"));
		//post.setImage(req.getParameter("image")); - should be modified according to technology of image loading
		// same with video upload
		
		
	}

	public Object getById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getByCredentials(String login, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Post> getAllData() {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteData(long id) {
		// TODO Auto-generated method stub
		
	}

	public Object getData(HttpServletRequest req) {
		// TODO Auto-generated method stub
		return null;
	}

}
