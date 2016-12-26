package exceptions;

public class ValidationException extends Exception {

	private static final long serialVersionUID = 7705170608745225174L;
	
	public ValidationException(String message) {
		super(message);
	}

}
