package stats;

import object.PointSetting;
import enums.Positions;

public class PlayerTeam implements Player{
	private String Name;
	private Positions position = Positions.TEAM;
	private int week;
	private int wins;
	private int losses;
	private int towersWon;
	private int towersLost;
	private int dragons;
	private int barons;
	private double score;
	
	public void calculateScore(PointSetting setting){
		this.score = 0.0;
		this.score += wins * setting.getWin();
		this.score += losses * setting.getLoss();
		this.score += towersWon * setting.getTowerWon();
		this.score += towersLost * setting.getTowerLoss();
		this.score += dragons * setting.getDragon();
		this.score += barons * setting.getBaron();		
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public Positions getPosition() {
		return position;
	}

	public void setPosition(Positions position) {
		this.position = position;
	}

	public int getWeek() {
		return week;
	}

	public void setWeek(int week) {
		this.week = week;
	}

	public int getWins() {
		return wins;
	}

	public void setWins(int wins) {
		this.wins = wins;
	}

	public int getLosses() {
		return losses;
	}

	public void setLosses(int losses) {
		this.losses = losses;
	}

	public int getTowersWon() {
		return towersWon;
	}

	public void setTowersWon(int towersWon) {
		this.towersWon = towersWon;
	}

	public int getTowersLost() {
		return towersLost;
	}

	public void setTowersLost(int towersLost) {
		this.towersLost = towersLost;
	}

	public int getDragons() {
		return dragons;
	}

	public void setDragons(int dragons) {
		this.dragons = dragons;
	}

	public int getBarons() {
		return barons;
	}

	public void setBarons(int barons) {
		this.barons = barons;
	}
}
