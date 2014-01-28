package object

import com.sun.istack.internal.Nullable;

import enums.Positions

class ProTeam {
	
	String name
	Positions position = Positions.TEAM
	int week
	int wins
	int losses
	int towersWon
	int towersLost
	int dragons
	int barons
	Profile teamLogo
	Profile teamMembers
	
	ProTeam(ProTeam proTeam, int wins, int losses, int towersWon, int towersLost, int dragons, int barons){
		this.name = proTeam.name
		this.teamLogo = proTeam.teamLogo
		this.teamMembers = proTeam.teamMembers
		this.week = proTeam.week + 1
		this.wins = wins
		this.losses = losses
		this.towersWon = towersWon
		this.towersLost = towersLost
		this.dragons = dragons
		this.barons = barons
	}
	
	static constraints = {
		teamLogo nullable : true
		teamMembers nullable : true
	}
	
	def double calculateScore(PointSetting setting){
		double score = 0.0
		score += wins * setting.getWin()
		score += losses * setting.getLoss()
		score += towersWon * setting.getTowerWon()
		score += towersLost * setting.getTowerLoss()
		score += dragons * setting.getDragon()
		score += barons * setting.getBaron()
		return score;
	}

}
