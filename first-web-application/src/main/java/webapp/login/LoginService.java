package webapp.login;

public class LoginService {

	public boolean isUserValid(String user,String password) {
		// here dummy authentication
		// in real time in a data base system or to really a authentication system
		// to find out a user name or password can store
		
		if(user.equals("in28minutes") && password.equals("dummy")) 
			return true;
		return false;
	}
}
