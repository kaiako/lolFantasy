package object

import security.User

class Account {
	
	User user;
	String email;
	Long accountId;
	int wins;
	int losses;
	File profilePicture;
	List<Team> teams;
	
}
