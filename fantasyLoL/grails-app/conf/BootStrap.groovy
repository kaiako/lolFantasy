import enums.Positions;
import object.Account
import object.League
import object.PointSetting
import object.ProPlayer
import object.ProTeam
import object.Profile
import object.Settings
import object.Team
import object.TeamMember
import security.Role;
import security.User;
import security.UserRole;
import utils.MatchingUtils;

class BootStrap {

    def init = { servletContext ->
		
      def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
      def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
	  
      def testUser = new User(username: 'test', password: 'password')
      testUser.save(flush: true)
	  
	  def testAdminUser = new User(username: 'admin', password: 'password')
	  testAdminUser.save(flush: true)

      UserRole.create(testAdminUser, adminRole, true)
	  UserRole.create(testUser, userRole, true)

      assert User.count() == 2
      assert Role.count() == 2
      assert UserRole.count() == 2
	  	  
	  def jordan = new User(username: 'jordan', password: 'p')
	  jordan.save(failOnError : true, flush : true)
	  
	  def adam = new User(username: 'adam', password: 'p')
	  adam.save(failOnError : true, flush : true)
	  
	  def jarom = new User(username: 'jarom', password: 'p')
	  jarom.save(failOnError : true, flush : true)
	  
	  def jerrick = new User(username: 'jerrick', password: 'p')
	  jerrick.save(failOnError : true, flush : true)
	  
	  def jershon = new User(username: 'jershon', password: 'p')
	  jershon.save(failOnError : true, flush : true)
	  
	  def sterling = new User(username: 'sterling', password: 'p')
	  sterling.save(failOnError : true, flush : true)
	  
	  def nathan = new User(username: 'nathan', password: 'p')
	  nathan.save(failOnError : true, flush : true)
	  
	  def manawa = new User(username: 'manawa', password: 'p')
	  manawa.save(failOnError : true, flush : true)
	  
	  UserRole.create(jordan, userRole, true)
	  UserRole.create(adam, userRole, true)
	  UserRole.create(jarom, userRole, true)
	  UserRole.create(jerrick, userRole, true)
	  UserRole.create(jershon, userRole, true)
	  UserRole.create(sterling, userRole, true)
	  UserRole.create(nathan, userRole, true)
	  UserRole.create(manawa, userRole, true)
		  
	  def account1 = new Account(firstName: 'jordan', middleName: 'k', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'jordan_laimana.jpg', user: jordan ).save(failOnError : true, flush : true)
	  def account2 = new Account(firstName: 'adam', middleName: 'c', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'adam_laimana.jpg', user: adam ).save(failOnError : true, flush : true)
	  def account3 = new Account(firstName: 'jarom', middleName: 'h', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'genericUser.jpg', user: jarom ).save(failOnError : true, flush : true)
	  def account4 = new Account(firstName: 'jerrick', middleName: 'j', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'default_user.jpg', user: jerrick ).save(failOnError : true, flush : true)
	  def account5 = new Account(firstName: 'jershon', middleName: 's', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'Hershey.jpg', user: jershon ).save(failOnError : true, flush : true)
	  def account6 = new Account(firstName: 'sterling', middleName: 'c', lastName: 'cornish',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'default_user.jpg', user: sterling ).save(failOnError : true, flush : true)
	  def account7 = new Account(firstName: "nathan", middleName: 'c', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'default_user.jpg', user: nathan ).save(failOnError : true, flush : true)
	  def account8 = new Account(firstName: "manawale'a", middleName: 'c', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'default_user.jpg', user: manawa ).save(failOnError : true, flush : true)
		   
	 jordan.setAccount(account1)
	 jordan.save(failOnError : true, flush : true)
	 adam.setAccount(account2)
	 adam.save(failOnError : true, flush : true)
	 jarom.setAccount(account3)
	 jarom.save(failOnError : true, flush : true)
	 jerrick.setAccount(account4)
	 jerrick.save(failOnError : true, flush : true)
	 jershon.setAccount(account5)
	 jershon.save(failOnError : true, flush : true)
	 sterling.setAccount(account6)
	 sterling.save(failOnError : true, flush : true)
	 nathan.setAccount(account7)
	 nathan.save(failOnError : true, flush : true)
	 manawa.setAccount(account8)
	 manawa.save(failOnError : true, flush : true)
	  
	  def league = new League(name:'Laimanas', week:1, teams: null, settings: null).save(failOnError : true, flush : true)
	  
	  def topSetting = new PointSetting(position: Positions.TOP, league: league, assist:1, cs: 20, death: -1, kill: 1, 
		  baron: 0, dragon: 0, win: 0, loss: 0, towerLoss: 0, towerWon: 0).save(failOnError : true, flush : true)
	  def midSetting = new PointSetting(position: Positions.MID, league: league, assist:1, cs: 20, death: -1, kill: 1, 
		  baron: 0, dragon: 0, win: 0, loss: 0, towerLoss: 0, towerWon: 0).save(failOnError : true, flush : true)
	  def jungleSetting = new PointSetting(position: Positions.JUNGLE, league: league, assist:1, cs: 20, death: -1, kill: 1, 
		  baron: 0, dragon: 0, win: 0, loss: 0, towerLoss: 0, towerWon: 0).save(failOnError : true, flush : true)
	  def adcSetting = new PointSetting(position: Positions.ADC, league: league, assist:1, cs: 20, death: -1, kill: 1, 
		  baron: 0, dragon: 0, win: 0, loss: 0, towerLoss: 0, towerWon: 0).save(failOnError : true, flush : true)
	  def supportSetting = new PointSetting(position: Positions.SUPPORT, league: league, assist:1, cs: 20, death: -1, kill: 1, 
		  baron: 0, dragon: 0, win: 0, loss: 0, towerLoss: 0, towerWon: 0).save(failOnError : true, flush : true)
	  def teamSetting = new PointSetting(position: Positions.TEAM, league: league, assist:0, cs: 0, death: 0, kill: 0, 
		  baron: 1, dragon: 1, win: 1, loss: -1, towerLoss: 1, towerWon: 1).save(failOnError : true, flush : true)
	  
	  def settings = new Settings(top: topSetting, mid: midSetting, jungle: jungleSetting, adc: adcSetting, support: supportSetting,
		   proteam: teamSetting).save(failOnError : true, flush : true)
	  
	  league.setSettings(settings)
	  league.save(failOnError : true, flush : true)
	  def teamLogo = new Profile(fileName: 'gambit_logo.png', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)
	  def teamMembers = new Profile(fileName: 'gambit_members.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)
	  def gambit = new ProTeam(name: "Gambit Gaming", teamLogo: teamLogo, teamMembers: teamMembers, week: 1, wins: 2, losses: 0, barons: 3, dragons: 4, towersLost: 5, towersWon: 20
		   ).save(failOnError : true, flush : true)
	  def gambit2 = new ProTeam(gambit,2,0,12,4,2,5).save(failOnError : true, flush : true)
	  def gambit3 = new ProTeam(gambit2,1,1,6,12,2,4).save(failOnError : true, flush : true)
	  def gambit4 = new ProTeam(gambit3,1,1,12,12,1,6).save(failOnError : true, flush : true)
	  def gambit5 = new ProTeam(gambit4,2,0,12,1,4,5).save(failOnError : true, flush : true)
	  def gambit6 = new ProTeam(gambit5,0,2,1,12,0,0).save(failOnError : true, flush : true)
	  def gambit7 = new ProTeam(gambit6,2,0,15,12,3,7).save(failOnError : true, flush : true)
	  def gambit8 = new ProTeam(gambit7,2,0,12,13,3,6).save(failOnError : true, flush : true)
	  def gambit9 = new ProTeam(gambit8,1,1,10,12,2,4).save(failOnError : true, flush : true)
	  def gambit10 = new ProTeam(gambit9,0,2,3,22,1,1).save(failOnError : true, flush : true)
	  def gambit11 = new ProTeam(gambit10,1,1,14,11,3,2).save(failOnError : true, flush : true)
	  def gambit12 = new ProTeam(gambit11,2,0,20,4,5,5).save(failOnError : true, flush : true)
	  
	  def alexProfile = new Profile(fileName: 'alex_ich.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def alex_ich = new ProPlayer(name: "Aleksei Ichetovkin", alias:"Alex Ich", position: Positions.MID, proTeam: gambit, profile: alexProfile, week: 1, kills: 10, deaths: 5,
		  assists: 3, cs: 400).save(failOnError : true, flush : true)
      def alex_ich2 = new ProPlayer(alex_ich, 4, 2, 13, 200).save(failOnError : true, flush : true)
      def alex_ich3 = new ProPlayer(alex_ich2, 4, 2, 13, 300).save(failOnError : true, flush : true)
      def alex_ich4 = new ProPlayer(alex_ich3, 6, 12, 2, 400).save(failOnError : true, flush : true)
      def alex_ich5 = new ProPlayer(alex_ich4, 14, 5, 2, 400).save(failOnError : true, flush : true)
      def alex_ich6 = new ProPlayer(alex_ich5, 4, 0, 13, 200).save(failOnError : true, flush : true)
      def alex_ich7 = new ProPlayer(alex_ich6, 1, 2, 9, 100).save(failOnError : true, flush : true)
      def alex_ich8 = new ProPlayer(alex_ich7, 6, 1, 2, 300).save(failOnError : true, flush : true)
      def alex_ich9 = new ProPlayer(alex_ich8, 3, 3, 3, 300).save(failOnError : true, flush : true)
      def alex_ich10 = new ProPlayer(alex_ich9, 7, 5, 1, 300).save(failOnError : true, flush : true)
      def alex_ich11 = new ProPlayer(alex_ich10, 5, 6, 10, 200).save(failOnError : true, flush : true)
      def alex_ich12 = new ProPlayer(alex_ich11, 8, 9, 1, 400).save(failOnError : true, flush : true)
		  
	  def darienProfile = new Profile(fileName: 'darien.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def darien = new ProPlayer(name: "Evgeny Mazaev", alias:"darien", position: Positions.TOP, proTeam: gambit, profile: darienProfile, week: 1, kills: 5, deaths: 5,
		  assists: 3, cs: 400).save(failOnError : true, flush : true)
	  
	  def diamondproxProfile = new Profile(fileName: 'diamondprox.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def diamondprox = new ProPlayer(name : "Danil Reshetnikov", alias:"DiamondProx", position: Positions.JUNGLE, proTeam: gambit, profile: diamondproxProfile, week: 1, kills: 5, deaths: 8,
		  assists: 8, cs: 250).save(failOnError : true, flush : true)
	  
	  def edwardProfile = new Profile(fileName: 'edward.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def edward = new ProPlayer(name : "Edward Abgaryan", alias:"Edward", position: Positions.SUPPORT, proTeam: gambit, profile: edwardProfile, week: 1, kills: 2, deaths: 8,
		  assists: 23, cs: 20).save(failOnError : true, flush : true)
	  
	  def genjaProfile = new Profile(fileName: 'genja.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def genja = new ProPlayer(name : "Evgeny Andryushin", alias:"Genja", position: Positions.ADC, proTeam: gambit, profile: genjaProfile, week: 1, kills: 20, deaths: 15,
		  assists: 3, cs: 400).save(failOnError : true, flush : true)
	  
	  def jordanTeam = new Team(name:"jordan team",week: 1, wins: 0, losses: 0, rank: 1,placeholder:1 , account: account1, league: league,)
	  		.addToMembers(new TeamMember(proPlayer:alex_ich).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:darien).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:diamondprox).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:edward).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:genja).save(failOnError : true))
	  		.addToMembers(new TeamMember(proTeam:gambit).save(failOnError : true))
			.save(failOnError : true, flush : true)	  
		  
	  def adamTeam = new Team(name:"adam team",week: 1, wins: 0, losses: 0, rank: 2,placeholder:2 ,  account: account2, league: league,)
	  		.addToMembers(new TeamMember(proPlayer:alex_ich).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:darien).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:diamondprox).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:edward).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:genja).save(failOnError : true))
	  		.addToMembers(new TeamMember(proTeam:gambit).save(failOnError : true))
			.save(failOnError : true, flush : true)	  
	  
	  def jaromTeam = new Team(name:"jarom team",week: 1, wins: 0, losses: 0, rank: 3,placeholder:3 , account: account3, league: league)
	  		.addToMembers(new TeamMember(proPlayer:alex_ich).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:darien).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:diamondprox).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:edward).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:genja).save(failOnError : true))
	  		.addToMembers(new TeamMember(proTeam:gambit).save(failOnError : true))
			.save(failOnError : true, flush : true)	  
	  
	  def jerrickTeam = new Team(name:"jerrick team",week: 1, wins: 0, losses: 0, rank: 4,placeholder:4 , account: account4, league: league,)
	  		.addToMembers(new TeamMember(proPlayer:alex_ich).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:darien).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:diamondprox).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:edward).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:genja).save(failOnError : true))
	  		.addToMembers(new TeamMember(proTeam:gambit).save(failOnError : true))
			.save(failOnError : true, flush : true)	  
	  
	  def jershonTeam = new Team(name:"jershon team",week: 1, wins: 0, losses: 0, rank: 5,placeholder:5 , account: account5, league: league,)
	  		.addToMembers(new TeamMember(proPlayer:alex_ich).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:darien).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:diamondprox).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:edward).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:genja).save(failOnError : true))
	  		.addToMembers(new TeamMember(proTeam:gambit).save(failOnError : true))
			.save(failOnError : true, flush : true)	  
	  
	  def sterlingTeam = new Team(name:"sterling team",week: 1, wins: 0, losses: 0, rank: 6 ,placeholder:6 , account: account6, league: league,)
	  		.addToMembers(new TeamMember(proPlayer:alex_ich).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:darien).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:diamondprox).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:edward).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:genja).save(failOnError : true))
	  		.addToMembers(new TeamMember(proTeam:gambit).save(failOnError : true))
			.save(failOnError : true, flush : true)	  
	  
	  def nathanTeam = new Team(name:"nathan team",week: 1, wins: 0, losses: 0, rank: 7,placeholder:7 , account: account7, league: league,)
	  		.addToMembers(new TeamMember(proPlayer:alex_ich).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:darien).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:diamondprox).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:edward).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:genja).save(failOnError : true))
	  		.addToMembers(new TeamMember(proTeam:gambit).save(failOnError : true))
			.save(failOnError : true, flush : true)	  
	  
	  def manawaTeam = new Team(name:"manawale'a team",week: 1, wins: 0, losses: 0, rank: 8,placeholder:8 , account: account8, league: league)
	  		.addToMembers(new TeamMember(proPlayer:alex_ich).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:darien).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:diamondprox).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:edward).save(failOnError : true))
	  		.addToMembers(new TeamMember(proPlayer:genja).save(failOnError : true))
	  		.addToMembers(new TeamMember(proTeam:gambit).save(failOnError : true))
			.save(failOnError : true, flush : true)	   
	  
	  def teams = [jordanTeam, adamTeam, jaromTeam, jerrickTeam, jershonTeam, sterlingTeam, nathanTeam, manawaTeam] as List<Team>
	  
	  league.setSettings(settings)
	  league.addTeams(teams)
	  MatchingUtils.matchAll(league);
	  league.save(failOnError : true, flush : true)
	  
	  account1.addTeams(teams)
	  account1.save(failOnError : true, flush : true)
	  account2.addToTeams(adamTeam).save(failOnError : true, flush : true)
	  account3.addToTeams(jaromTeam).save(failOnError : true, flush : true)
	  account4.addToTeams(jerrickTeam).save(failOnError : true, flush : true)
	  account5.addToTeams(jershonTeam).save(failOnError : true, flush : true)
	  account6.addToTeams(sterlingTeam).save(failOnError : true, flush : true)
	  account7.addToTeams(nathanTeam).save(failOnError : true, flush : true)
	  account8.addToTeams(manawaTeam).save(failOnError : true, flush : true)
	  
    }
	
    def destroy = {
    }
}
