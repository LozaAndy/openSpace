package services;

import java.util.List;

import models.Post;

public interface PostService {
	
	public void addPost();
	public Post getPost(int id);
	public List<Post> getAllPost();
	public void deletePost(int id);

}
