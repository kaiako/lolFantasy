package fantasylol

import grails.plugin.springsecurity.SpringSecurityService
import object.Account
import object.League;
import object.PointSetting;
import object.ProPlayer
import object.ProTeam
import object.Profile;
import object.Team
import object.TeamMember;
import security.User
import stats.PlayerPerson;
import stats.PlayerTeam;

class HomeController {
	
	SpringSecurityService springSecurityService
	
	def index(){
		render(view:"welcome");
	}
	
	def player(){
		def players = ProPlayer.findAllWhere(alias : params.alias)
		League league = League.get(params.leagueId)
		[players: players, league: league]
		
	}
	
	def proTeam(){		
		def proTeams = ProTeam.findAllWhere(name : params.name)
		League league = League.get(params.leagueId)
		[proTeams: proTeams, league: league]
	}
	
	def league(){
		League league = League.get(params.leagueId)
		def teams = league.teams.sort{it.rank}
		[league : league, teams : teams]
	}
	
	def user(){
		Account account = ((User) springSecurityService.getCurrentUser()).getAccount()
//		Set<Team> teams = account.teams
//		def teamList = account.teams.asList()
//		def playerList = []
//		for(Team team in teamList){
//			def list = team.members.asList()
//			for(TeamMember member in list){
//				if(member.proPlayer != null){
//					playerList.add(member.proPlayer)
//				} else {
//					playerList.add(member.proTeam)
//				}
//			}
//		} 
//		
//		[account:account, teams : teamList]
		[account:account]
	}
}
