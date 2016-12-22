package services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface DataService<T> {
	
	public void addData(HttpServletRequest req);
	public Object getById(long id);
	public Object getByCredentials(String login, String password);
	public List<T> getAllData();
	public void deleteData(long id);

}
