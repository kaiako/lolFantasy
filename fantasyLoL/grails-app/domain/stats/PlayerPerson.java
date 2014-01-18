package stats;

import object.PointSetting;
import object.Profile;
import enums.Positions;

public class PlayerPerson implements Player{
		
	private String name;
	private int week;
	private PlayerTeam team;
	private Positions position;
	private int kills;
	private int deaths;
	private int assists;
	private int cs;
	private double score;
	private Profile profile;
	
	public void calculateScore(PointSetting setting){
		this.score = 0.0;
		this.score += kills * setting.getKill();
		this.score += deaths * setting.getDeath();
		this.score += assists * setting.getAssist();
		this.score += cs * setting.getCs();		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getWeek() {
		return week;
	}

	public void setWeek(int week) {
		this.week = week;
	}

	public PlayerTeam getTeam() {
		return team;
	}

	public void setTeam(PlayerTeam team) {
		this.team = team;
	}

	public Positions getPosition() {
		return position;
	}

	public void setPosition(Positions position) {
		this.position = position;
	}

	public int getKills() {
		return kills;
	}

	public void setKills(int kills) {
		this.kills = kills;
	}

	public int getDeaths() {
		return deaths;
	}

	public void setDeaths(int deaths) {
		this.deaths = deaths;
	}

	public int getAssists() {
		return assists;
	}

	public void setAssists(int assists) {
		this.assists = assists;
	}

	public int getCs() {
		return cs;
	}

	public void setCs(int cs) {
		this.cs = cs;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}
}
