package services;

import java.util.List;

public interface DataService<T> {
	
	public void addData();
	public Object getData(int id);
	public List<T> getAllData();
	public void deleteData(int id);

}
