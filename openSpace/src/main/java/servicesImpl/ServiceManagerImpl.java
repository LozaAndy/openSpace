package servicesImpl;

import services.ServiceManager;
import services.UserService;

public class ServiceManagerImpl implements ServiceManager {

	public UserService getUserService() {
		
		return new UserSeviceImpl();
	}

}
