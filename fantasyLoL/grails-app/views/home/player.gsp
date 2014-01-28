<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="layout" content="main"/>
    <title>Player Information</title>
</head>

<body> 

    	<content tag="header">
    		Player Page
    	</content>
    	
    	<content tag="main">
    	
    		<!-- users profile/win/loss -->
    		<g:set var="player" value="${players.get(0)}"/>
    		<div class="row">
	    		<div class="col-lg-offset-1 col-lg-3 col-sm-3">
	    			<g:set var="imagePath">
	    				<g:resource dir='${player.profile.profileDir +"/"+ player.profile.teamDir}' file = '${player.profile.fileName}' />
	    			</g:set>
	        		<img src="${imagePath}" id="profilePic" alt="ProfilePic" class="hidden-xs img-responsive pull-left">
	        	</div>	        	
	    		<div class="col-lg-8 col-sm-5">
	    			<h1>${player.alias }</h1>
	    			<br>
	    			<h2>${player.proTeam.name }</h2>
	    			<br>
	    			<h2>${league.name }</h2>
	    		</div>
    		</div>
    		
    		<table class="table table-responsive">  
		        <thead>
		          <tr><!-- various points -->
		            <th>Week</th>  
		            <th>Kills</th>  
		            <th>Deaths</th>
		            <th>Assists</th>  
		            <th>Creep Score</th>
		            <th>Score</th>
		          </tr>  
		        </thead>
		        <tbody> 
				<g:each in="${players}" var="player" >
		          <tr><!-- da table -->
		           <td>${player.week}</td> 
		           <td>${player.kills}</td>
		           <td>${player.deaths}</td> 
		           <td>${player.assists}</td> 
		           <td>${player.cs}</td>
		           <td>${player.calculateScore(league.settings.getPositionSetting(player.position)) }</td> 
		          </tr>  
				</g:each>
		        </tbody>  
		   </table>
    		
		</content>

<!-- javascript -->
</body>
</html>
