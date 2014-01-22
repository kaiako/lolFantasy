import enums.Positions;
import object.Account
import object.League
import object.PointSetting
import object.ProPlayer
import object.ProTeam
import object.Profile
import object.Settings
import object.Team
import security.Role;
import security.User;
import security.UserRole;

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
		   wins:1, losses: 1, profilePicturePath: 'images/profile', teams: null, user: testUser ).save(failOnError : true, flush : true)
	  def account2 = new Account(firstName: 'adam', middleName: 'c', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'images/profile', teams: null, user: testUser ).save(failOnError : true, flush : true)
	  def account3 = new Account(firstName: 'jarom', middleName: 'h', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'images/profile', teams: null, user: testUser ).save(failOnError : true, flush : true)
	  def account4 = new Account(firstName: 'jerrick', middleName: 'j', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'images/profile', teams: null, user: testUser ).save(failOnError : true, flush : true)
	  def account5 = new Account(firstName: 'jershon', middleName: 's', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'images/profile', teams: null, user: testUser ).save(failOnError : true, flush : true)
	  def account6 = new Account(firstName: 'sterling', middleName: 'c', lastName: 'cornish',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'images/profile', teams: null, user: testUser ).save(failOnError : true, flush : true)
	  def account7 = new Account(firstName: "nathan", middleName: 'c', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'images/profile', teams: null, user: testUser ).save(failOnError : true, flush : true)
	  def account8 = new Account(firstName: "manawale'a", middleName: 'c', lastName: 'laimana',email: 'fake@email.com',
		   wins:1, losses: 1, profilePicturePath: 'images/profile', teams: null, user: testUser ).save(failOnError : true, flush : true)
	  
	  def league = new League(name:'Laimanas', teams: null, settings: null).save(failOnError : true, flush : true)
	  
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
	  
	  def gambit = new ProTeam(name: "Gambit Gaming", week: 1, wins: 2, losses: 0, barons: 3, dragons: 4, towersLost: 5, towersWon: 20,
		   score: 0).save(failOnError : true, flush : true)
	  
	  def alexProfile = new Profile(fileName: 'alex_ich.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def alex_ich = new ProPlayer(name: "Aleksei Ichetovkin", position: Positions.MID, team: gambit, profile: alexProfile, week: 1, kills: 10, deaths: 5,
		  assists: 3, cs: 400, score: 0).save(failOnError : true, flush : true)
		  
	  def darienProfile = new Profile(fileName: 'darien.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def darien = new ProPlayer(name: "Evgeny Mazaev", position: Positions.TOP, team: gambit, profile: darienProfile, week: 1, kills: 5, deaths: 5,
		  assists: 3, cs: 400, score: 0).save(failOnError : true, flush : true)
	  
	  def diamondproxProfile = new Profile(fileName: 'diamondprox.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def diamondprox = new ProPlayer(name : "Danil Reshetnikov", position: Positions.JUNGLE, team: gambit, profile: diamondproxProfile, week: 1, kills: 5, deaths: 8,
		  assists: 8, cs: 250, score: 0).save(failOnError : true, flush : true)
	  
	  def edwardProfile = new Profile(fileName: 'edward.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def edward = new ProPlayer(name : "Edward Abgaryan", position: Positions.SUPPORT, team: gambit, profile: edwardProfile, week: 1, kills: 2, deaths: 8,
		  assists: 23, cs: 20, score: 0).save(failOnError : true, flush : true)
	  
	  def genjaProfile = new Profile(fileName: 'genja.jpg', profileDir: 'images/profile', teamDir: "gambit").save(failOnError : true, flush : true)				   
	  def genja = new ProPlayer(name : "Evgeny Andryushin", position: Positions.ADC, team: gambit, profile: genjaProfile, week: 1, kills: 20, deaths: 15,
		  assists: 3, cs: 400, score: 0).save(failOnError : true, flush : true)
	  
//	  gambit.calculateScore(teamSetting)
//	  gambit.save(failOnError : true, flush : true)
//	  
//	  alex_ich.calculateScore(midSetting)
//	  alex_ich.save(failOnError : true, flush : true)
//	  
//	  darien.calculateScore(topSetting)
//	  darien.save(failOnError : true, flush : true)
//	  
//	  diamondprox.calculateScore(jungleSetting)
//	  diamondprox.save(failOnError : true, flush : true)
//	  
//	  edward.calculateScore(supportSetting)
//	  edward.save(failOnError : true, flush : true)
//	  
//	  genja.calculateScore(adcSetting)
//	  genja.save(failOnError : true, flush : true)
	  
	  def players = [alex_ich, darien, diamondprox, edward, genja, gambit]
	  
	  def jordanTeam = new Team(name:"jordan team", wins: 0, losses: 0, rank: 1, account: account1, league: league,)
	  		.addToProPlayers(alex_ich)
	  		.addToProPlayers(darien)
	  		.addToProPlayers(diamondprox)
	  		.addToProPlayers(edward)
	  		.addToProPlayers(genja)
			.addToProTeams(gambit)
			.save(failOnError : true, flush : true)	  
		  
	  def adamTeam = new Team(name:"adam team", wins: 0, losses: 0, rank: 2, account: account2, league: league,)
	  		.addToProPlayers(alex_ich)
	  		.addToProPlayers(darien)
	  		.addToProPlayers(diamondprox)
	  		.addToProPlayers(edward)
	  		.addToProPlayers(genja)
			.addToProTeams(gambit)
			.save(failOnError : true, flush : true)	  
	  
	  def jaromTeam = new Team(name:"jarom team", wins: 0, losses: 0, rank: 3, account: account3, league: league)
	  		.addToProPlayers(alex_ich)
	  		.addToProPlayers(darien)
	  		.addToProPlayers(diamondprox)
	  		.addToProPlayers(edward)
	  		.addToProPlayers(genja)
			.addToProTeams(gambit)
			.save(failOnError : true, flush : true)	  
	  
	  def jerrickTeam = new Team(name:"jerrick team", wins: 0, losses: 0, rank: 4, account: account4, league: league,)
	  		.addToProPlayers(alex_ich)
	  		.addToProPlayers(darien)
	  		.addToProPlayers(diamondprox)
	  		.addToProPlayers(edward)
	  		.addToProPlayers(genja)
			.addToProTeams(gambit)
			.save(failOnError : true, flush : true)	  
	  
	  def jershonTeam = new Team(name:"jershon team", wins: 0, losses: 0, rank: 5, account: account5, league: league,)
	  		.addToProPlayers(alex_ich)
	  		.addToProPlayers(darien)
	  		.addToProPlayers(diamondprox)
	  		.addToProPlayers(edward)
	  		.addToProPlayers(genja)
			.addToProTeams(gambit)
			.save(failOnError : true, flush : true)	  
	  
	  def sterlingTeam = new Team(name:"sterling team", wins: 0, losses: 0, rank: 6, account: account6, league: league,)
	  		.addToProPlayers(alex_ich)
	  		.addToProPlayers(darien)
	  		.addToProPlayers(diamondprox)
	  		.addToProPlayers(edward)
	  		.addToProPlayers(genja)
			.addToProTeams(gambit)
			.save(failOnError : true, flush : true)	  
	  
	  def nathanTeam = new Team(name:"nathan team", wins: 0, losses: 0, rank: 7, account: account7, league: league,)
	  		.addToProPlayers(alex_ich)
	  		.addToProPlayers(darien)
	  		.addToProPlayers(diamondprox)
	  		.addToProPlayers(edward)
	  		.addToProPlayers(genja)
			.addToProTeams(gambit)
			.save(failOnError : true, flush : true)	  
	  
	  def manawaTeam = new Team(name:"manawale'a team", wins: 0, losses: 0, rank: 8, account: account8, league: league)
	  		.addToProPlayers(alex_ich)
	  		.addToProPlayers(darien)
	  		.addToProPlayers(diamondprox)
	  		.addToProPlayers(edward)
	  		.addToProPlayers(genja)
			.addToProTeams(gambit)
			.save(failOnError : true, flush : true)	  
	  
	  def teams = [jordanTeam, adamTeam, jaromTeam, jerrickTeam, jershonTeam, sterlingTeam, nathanTeam, manawaTeam] as List<Team>
	  
	  league.setSettings(settings)
//	  league.setTeams(teams)
	  league.save(failOnError : true, flush : true)
	  
    }
	
    def destroy = {
    }
}
