package fantasylol

import object.Account
import object.League
import object.Team

class AjaxController {

	/**
	 * Dependency injection for the authenticationTrustResolver.
	 */
	def authenticationTrustResolver

	/**
	 * Dependency injection for the springSecurityService.
	 */
	def springSecurityService
	
    def index() { }	
	
	def auth() {

		def config = SpringSecurityUtils.securityConfig

		if (springSecurityService.isLoggedIn()) {
			redirect uri: config.successHandler.defaultTargetUrl
			return
		}

		String view = 'auth'
		String postUrl = "${request.contextPath}${config.apf.filterProcessesUrl}"
		render view: view, model: [postUrl: postUrl,
		                           rememberMeParameter: config.rememberMe.parameter]
	}
	
	def team() {
		Team team = Team.get(params.teamId)
		Account account = Account.get(params.accountId)
		[account:account, team:team]
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
}
