package object

import security.User

class Team {
	
	String name;
	int wins;
	int losses;
	League league;
	Account account;
	int rank;
	static hasMany = [proPlayers: ProPlayer, proTeams: ProTeam]
	
    static constraints = {
    }
	
	def calculateScore(Settings setting){
		
		double score = 0;
		for(player in players){
			score += player.calculateScore(setting.getPositionSetting(player.position))
		}
		return score;
	}
}
