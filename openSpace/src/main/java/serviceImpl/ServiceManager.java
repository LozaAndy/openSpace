package serviceImpl;

import javax.servlet.ServletContext;

public final class ServiceManager {

	private static final String SERVICE_MANAGER = "";
	private final UserServiceImpl userServiceImpl;
	

	private ServiceManager() {
		userServiceImpl = new UserServiceImpl();

	}

	public UserServiceImpl getUserServiceImpl() {
		return userServiceImpl;
	}

	public static ServiceManager getInstance(ServletContext context) {
		ServiceManager instance = (ServiceManager) context.getAttribute(SERVICE_MANAGER);
		if (instance == null) {
			instance = new ServiceManager();
			context.setAttribute(SERVICE_MANAGER, instance);
		}
		return instance;
	}

}
