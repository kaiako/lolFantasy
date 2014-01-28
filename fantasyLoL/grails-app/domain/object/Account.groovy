package object

import java.util.List;

import security.User

class Account {
	
	String firstName
	String middleName
	String lastName
	User user
	String email
	int wins
	int losses
	String profilePicturePath
	static hasMany = [teams : Team ]
	
	static constraints = {
		teams nullable : true
	}
	
    static mapping = {
        teams lazy: false
    }
	
	def void addTeams(List<Team> listTeams){
		for(Team team : listTeams){
			this.addToTeams(team)
		}
	}
	
}
