package object

import enums.Positions

class ProPlayer {

	String name
	String alias;
	int week
	ProTeam proTeam
	Positions position
	int kills
	int deaths
	int assists
	int cs
	Profile profile
	
	static constraints = {
		name nullable:true
	}
	//increments week just for testing
	ProPlayer(ProPlayer player, int kills, int deaths, int assists, int cs){
		this.week = player.week + 1
		this.name = player.name
		this.alias = player.alias
		this.proTeam = player.proTeam
		this.position = player.position
		this.profile = player.profile
		this.kills = kills
		this.deaths = deaths
		this.assists = assists
		this.cs = cs		
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
