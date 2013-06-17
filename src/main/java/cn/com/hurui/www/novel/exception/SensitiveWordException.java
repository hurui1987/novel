package cn.com.hurui.www.novel.exception;

public class SensitiveWordException extends AppException {

	public SensitiveWordException(){

	}
	
	public SensitiveWordException(String message){
		super(message);
	}
}
