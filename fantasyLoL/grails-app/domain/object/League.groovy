package object

class League {
	
	String name;
	static hasMany = [teams : Team]
	Settings settings;
	int week;
	
    static constraints = {
    	settings nullable:true 
    	teams nullable:true 
	}
	
    static mapping = {
        teams lazy: false
        settings lazy: false
    }
	
	def calculatePoints(Team team){
		double total=0.0;
		
	}
	
	def void addTeams(List<Team> listTeams){
		for(Team team : listTeams){
			this.addToTeams(team)
		}
	}

}
