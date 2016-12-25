package services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import models.Post;


public interface PostService {

	public void createPost(HttpServletRequest req);
	public Post getPostById(long id);
	public List<Post> getAllPosts();
	public void deletePost(long id);
}
