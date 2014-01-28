<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="layout" content="main"/>
    <title>User Home Page</title>
</head>

<body>
    	<content tag="main">
    	
    		<!-- users profile/win/loss -->
    		<div class="row">
	    		<div class="col-lg-3 col-sm-3">
	        		<img src="${resource(dir: 'img' , file:account.profilePicturePath)}" id="profilePic" alt="ProfilePic" class="hidden-xs img-responsive pull-left">
	        	</div>
	        	<div class="col-lg-1 col-lg-offset-2 well well-sm" align="center">
	        	<h2>${account.wins }</h2>
	        	</div>
	        	<div class="col-lg-3 ">
	        		<h2 align="center">${account.user.username}<br>
	        		Overall Win-Loss</h2>
	        	</div>
	        	<div class="col-lg-1 well well-sm" align="center">
	        	<h2>${account.losses }</h2>
	        	</div>
    		</div>
    		
    		<!-- player search bar -->

					<div class="row">
				        <div class="col-lg-5 col-lg-offset-8">
				            <form id="custom-search-form" class="form-search form-horizontal">
				                <div class="input-group col-lg-4">
				                    <input type="text" class="search-query" placeholder="Search Players">
				                    <span class="input-group-btn">
	                                    <button type="submit" class="btn btn-default search-btn">
	                                    	<span class="glyphicon glyphicon-search"></span>
	                                    </button>
                                	</span>
				                </div>
				            </form>
				        </div>
					</div>

    		
	    	<!-- user's team pages -->
	    	<div class="panel-body" style="background:black; font-size:16px; font-weight:bold; color:#FFFFFF;">
	    		<div class="col-lg-2 col-lg-offset-1" style="padding-left: 20px;">Your Team</div>
	    		<div class="col-lg-2 col-lg-offset-2">League</div>
	    		<div class="col-lg-2 col-lg-offset-2">Opp.Team</div>	    		
	    	</div>
	    	<div class="panel-group" id="accordion">
	    	<g:each in="${account.teams}" var="team" status="i">
				  <div class="panel panel-default">
				    <div class="panel-heading">
				      <h4 class="panel-title">
				        <a data-toggle="collapse" data-parent="#accordion" href="#collapse${i}">
				          <div class="col-lg-2 col-lg-offset-1" >${team.name}</div>
				        </a>
				        <g:link controller="home" action="league" params='[leagueId:"${team.league.id}"]'><div class="col-lg-2 col-lg-offset-2">${team.league.name}</div></g:link>
				        <a data-toggle="collapse" data-parent="#accordion" href="#collapse${i}">			        
				      	<g:if test="${ team.isBYE()}">					      	
				          <div class="col-lg-2 col-lg-offset-2" ><i>BYE</i></div>
				      	</g:if>
				      	<g:if test="${ !team.isBYE()}">	
				          <div class="col-lg-2 col-lg-offset-2" >${team.opponent.name}</div>
				       	</g:if>
				        </a>
				      </h4>
				    </div>
				<g:if test="${i == 0 }">
				    <div id="collapse0" class="panel-collapse collapse in">
				</g:if>
				<g:if test="${i != 0 }">
				    <div id="collapse${i}" class="panel-collapse collapse">
				</g:if>
				      <div class="panel-body col-lg-6">
				      
				      <!--Your Team-->
				      
				       <table class="table table-responsive">  
					        <thead>
					          <tr><!-- various points -->
					            <th>Player</th>  
					            <th>Position</th>  
					            <th>Kills</th>  
					            <th>Assists</th>  
					            <th>Deaths</th> 
					            <th>CS</th> 
					            <th>Score</th>
					          </tr>  
					        </thead>
					        <tbody>  
					        <g:each in="${team.members}" var="member">
					        	<g:if test="${member.proPlayer != null }">
						          <tr><!-- da table -->
						           <th><g:link controller="home" action="player" params='[leagueId : "${team.league.id}" , alias : "${member.proPlayer.alias}"]'>
						           	${member.proPlayer.alias}
						           	</g:link></th>
						           <th>${member.proPlayer.position}</th>
						           <th>${member.proPlayer.kills}</th> 
						           <th>${member.proPlayer.assists}</th> 
						           <th>${member.proPlayer.deaths}</th>
						           <th>${member.proPlayer.cs}</th> 
						           <th>${member.proPlayer.calculateScore(team.league.settings.getPositionSetting(member.proPlayer.position)) }
						          </tr>
					        	</g:if>
					        </g:each>  
					        </tbody>  
					   </table>					   
				       <table class="table table-responsive">  
					        <thead>
					          <tr><!-- various points -->
					            <th>Team</th>  
					            <th>Wins</th>  
					            <th>Losses</th>  
					            <th>Barons</th> 
					            <th>Dragons</th> 
					            <th>Towers W/L</th> 
					            <th>Score</th> 
					          </tr>  
					        </thead>
					        <tbody>  
					        <g:each in="${team.members}" var="member">
					        	<g:if test="${member.proTeam != null }">
						          <tr><!-- da table -->
						           <th><g:link controller="home" action="proTeam" params='[leagueId : "${team.league.id}", name : "${member.proTeam.name}"]'>
						           	${member.proTeam.name}
						           	</g:link></th>
						           <th>${member.proTeam.wins}</th>
						           <th>${member.proTeam.losses}</th>
						           <th>${member.proTeam.barons}</th>
						           <th>${member.proTeam.dragons}</th>
						           <th>${member.proTeam.towersWon}/${member.proTeam.towersLost}</th>
						           <th>${member.proTeam.calculateScore(team.league.settings.getPositionSetting(member.proTeam.position)) }
						          </tr>
					        	</g:if>
					        </g:each>  
					        </tbody>  
					   </table>
				      </div>
				      
				      <!--Opponent Team-->
				      <g:set var="team" value="${team.opponent}"/>  
				      <div class="panel-body col-lg-6">
				      <g:if test="${ !team.isBYE()}">		    
				       <table class="table table-responsive">  
					        <thead>
					          <tr><!-- various points -->
					            <th>Player</th>  
					            <th>Position</th>  
					            <th>Kills</th>  
					            <th>Assists</th>  
					            <th>Deaths</th> 
					            <th>CS</th> 
					            <th>Score</th>
					          </tr>  
					        </thead>
					        <tbody>  
					        <g:each in="${team.members}" var="member">
					        	<g:if test="${member.proPlayer != null }">
						          <tr><!-- da table -->
						           <th><g:link controller="home" action="player" params='[leagueId : "${team.league.id}" , alias : "${member.proPlayer.alias}"]'>
						           	${member.proPlayer.alias}
						           	</g:link></th>
						           <th>${member.proPlayer.position}</th>
						           <th>${member.proPlayer.kills}</th> 
						           <th>${member.proPlayer.assists}</th> 
						           <th>${member.proPlayer.deaths}</th>
						           <th>${member.proPlayer.cs}</th> 
						           <th>${member.proPlayer.calculateScore(team.league.settings.getPositionSetting(member.proPlayer.position)) }
						          </tr>
					        	</g:if>
					        </g:each>  
					        </tbody>  
					   </table>					   
				       <table class="table table-responsive">  
					        <thead>
					          <tr><!-- various points -->
					            <th>Team</th>  
					            <th>Wins</th>  
					            <th>Losses</th>  
					            <th>Barons</th> 
					            <th>Dragons</th> 
					            <th>Towers W/L</th> 
					            <th>Score</th> 
					          </tr>  
					        </thead>
					        <tbody>  
					        <g:each in="${team.members}" var="member">
					        	<g:if test="${member.proTeam != null }">
						          <tr><!-- da table -->
						           <th><g:link controller="home" action="proTeam" params='[leagueId : "${team.league.id}", name : "${member.proTeam.name}"]'>
						           	${member.proTeam.name}
						           	</g:link></th>
						           <th>${member.proTeam.wins}</th>
						           <th>${member.proTeam.losses}</th>
						           <th>${member.proTeam.barons}</th>
						           <th>${member.proTeam.dragons}</th>
						           <th>${member.proTeam.towersWon}/${member.proTeam.towersLost}</th>
						           <th>${member.proTeam.calculateScore(team.league.settings.getPositionSetting(member.proTeam.position)) }
						          </tr>
					        	</g:if>
					        </g:each>  
					        </tbody>  
					   </table>
					   </g:if>
				      </div>
				    </div>
				  </div>
			</g:each>
			</div><!-- user's team pages end -->
		</content>

<!-- javascript -->
</body>
</html>
