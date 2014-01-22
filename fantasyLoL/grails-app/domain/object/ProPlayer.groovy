package object

import enums.Positions

class ProPlayer {

	String name
	int week
	ProTeam team
	Positions position
	int kills
	int deaths
	int assists
	int cs
	Profile profile
	
	static belongsTo = [team:Team]
	
	static constraints = {
		team nullable: true
	}

	double calculateScore(PointSetting setting){
		double score = 0.0
		score += kills * setting.getKill()
		score += deaths * setting.getDeath()
		score += assists * setting.getAssist()
		score += cs / setting.getCs();
		return score;
	}
}
