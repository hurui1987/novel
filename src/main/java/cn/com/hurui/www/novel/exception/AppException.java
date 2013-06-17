package cn.com.hurui.www.novel.exception;

public class AppException extends RuntimeException {

	public AppException(){
		super();
	}
	
	public AppException(String message){
		super(message);
	}
	
	public AppException(Throwable cause){
		super(cause);
	}
}
