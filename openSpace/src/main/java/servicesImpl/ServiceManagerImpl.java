package servicesImpl;

import services.PostService;
import services.ServiceManager;
import services.UserService;

public class ServiceManagerImpl implements ServiceManager {

	public UserService getUserService() {
		
		return new UserSeviceImpl();
	}
	

	public PostService getPostService() {
		
		return new PostServiceImpl();
	}

}
