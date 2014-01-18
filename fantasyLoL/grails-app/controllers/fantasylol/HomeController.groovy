package fantasylol

import object.League;
import object.PointSetting;
import object.Profile;
import stats.PlayerPerson;
import stats.PlayerTeam;

class HomeController {
	
	def index(){
		render(view:"welcome");
	}
	
	def player(){
		PlayerPerson player = new PlayerPerson()
		player.setKills(10)
		player.setDeaths(2)
		player.setAssists(4)
		player.setCs(200)
		player.setName("Alex Ich")
		player.setTeam(new PlayerTeam())
		player.setWeek(1);
		player.getTeam().setName("Gambit Gaming")
		Profile p = new Profile()
		p.setProfileDir("images/profile");
		p.setTeamDir("gambit");
		p.setFileName("alex_ich.jpg");
		player.setProfile(p)
		PointSetting setting = new PointSetting(kill:1, death:1, cs:30, assist:3)
		player.calculateScore(setting)
		League league = new League();
		league.setName("TEST LEAGUE")
		[player:player, league:league]	
		
	}
	
	def team(){
		
	}
	
	def league(){
		
	}
	
	def user(){
		
	}
}
