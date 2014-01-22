package object

class League {
	
	String name;
	static hasMany = [teams : Team]
	Settings settings;
	
    static constraints = {
    	settings nullable:true 
    	teams nullable:true 
	}
	
	def calculatePoints(Team team){
		double total=0.0;
		
	}

}
