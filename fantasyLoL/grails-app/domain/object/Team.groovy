package object

import security.User

class Team {
	
	String name
	int week
	int wins
	int losses
	League league
	Account account
	Team opponent
	int rank
	int placeholder
	static hasMany = [members : TeamMember]
	
    static constraints = {
		opponent nullable:true 
    }
    static mapping = {
        members lazy: false
		sort "rank"
    }
	
	def double calculateTotalScore(Settings setting){
		
		double score = 0.0;
		for(member in members){
			score += member.calculateScore(setting.getPositionSetting(member.getPosition()))
		}
		return score;
	}
	
	def boolean isBYE(){
		return opponent == null
	}
}
