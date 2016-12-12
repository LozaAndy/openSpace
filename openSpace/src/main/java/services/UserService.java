package services;

import java.util.List;

import models.User;

public interface UserService {
	
	public void addUser();
	public void updateUser();
	public User getUser(int id);
	public List<User> getUserList();
	public void deleteUser(int id);

}
