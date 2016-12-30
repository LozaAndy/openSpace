package services;


import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import exceptions.OperationException;
import models.Post;


public interface PostService {

	public void createPost(HttpServletRequest req) throws OperationException;
	public Post getPostById(long id) throws OperationException;
	public Set<Post> getAllPosts(long id) throws OperationException;
	public void deletePost(Post post) throws OperationException;
}
