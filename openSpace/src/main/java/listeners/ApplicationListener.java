package listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import serviceImpl.ServiceManager;

public class ApplicationListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		ServiceManager.getInstance(sce.getServletContext());

	}

	public void contextDestroyed(ServletContextEvent sce) {
	

	}

}
