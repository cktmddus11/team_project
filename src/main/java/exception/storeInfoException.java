package exception;

public class storeInfoException extends RuntimeException {
	private String url;
	public storeInfoException(String msg, String url) {
		super(msg);
		this.url = url;
	}
	public String getUrl() {
		return url;
	}
}
