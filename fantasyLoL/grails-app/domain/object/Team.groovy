package object

import security.User
import stats.Player;


class Team {
	
	private Long team_id;
	private String name;
	private int wins;
	private int losses;
	private League league;
	private User user;
	private int Rank;
	def Players = {};
	
    static constraints = {
    }
	
	def calculateScore(Settings setting){
		double score = 0;
		for(Player player in Players){
			score += player.calculateScore(setting.getPositionSetting(player.position));
		}
		return score;
	}
}
