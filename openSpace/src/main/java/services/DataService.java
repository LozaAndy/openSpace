package services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface DataService<T> {
	
	public void addData(HttpServletRequest req);
	public Object getData(int id);
	public List<T> getAllData();
	public void deleteData(int id);

}
