package services;


import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import exceptions.OperationException;
import models.Post;


public interface PostService {

	public void createPost(HttpServletRequest req) throws OperationException;
	public Post getPostById(long id);
	public Set<Post> getAllPosts();
	public void deletePost(long id);
}
