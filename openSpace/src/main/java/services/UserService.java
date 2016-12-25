package services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import models.User;

public interface UserService {

	public void createUser(HttpServletRequest req);
	public User getUserById(long id);
	public User getUserByCredentials(String login, String password);
	public List<User> getAllUsers();
	public void deleteUser(long id);
	
}
