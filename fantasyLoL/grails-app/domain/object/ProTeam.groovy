package object

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
	double score
	
	static belongsTo = [team:Team]
	
	static constraints = {
		team nullable: true
	}
	
	void calculateScore(PointSetting setting){
		this.score = 0.0
		this.score += wins * setting.getWin()
		this.score += losses * setting.getLoss()
		this.score += towersWon * setting.getTowerWon()
		this.score += towersLost * setting.getTowerLoss()
		this.score += dragons * setting.getDragon()
		this.score += barons * setting.getBaron()
	}

}
