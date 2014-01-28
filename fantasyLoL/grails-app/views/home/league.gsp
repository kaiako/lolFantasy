<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="layout" content="main"/>
    <title>League Page</title>
</head>

<body>
    	<content tag="main">
			<!-- user's team pages -->
		    <div class="panel-group" id="accordion">
			  <div class="panel panel-default">
			    <div class="panel-heading" align="center">
			      <h4 class="panel-title">				 
			         <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
			          ${league.name}
			        </a>
			      </h4>
			    </div>
			    <div id="collapseOne" class="panel-collapse collapse in">
			      <div class="panel-body">
			       <table class="table table-responsive">  
				        <thead>
				          <tr><!-- various points -->	
				          	 <th>Rank</th>  
				          	 <th>Team Name</th>  
					         <th>User Name</th> 
					         <th>League Record</th> 					         
					         <th>Opponent</th> 
					     </tr>  
					   </thead>
					   <tbody>
					   <g:each in="${league.teams.sort{it.rank}}" var="team">  
					     <tr><!-- da table -->
					         <th>${team.rank}</th>
					         <th><a href="javascript:teamModal(${team.id},${team.account.id})">${team.name}</a></th>
					         <th>${team.account.user.username}</th> 
					         <th>${team.wins} - ${team.losses}</th> 
					         <th>-</th> 
					     </tr>  
					     </g:each>
					   </tbody>  
					 </table>
				   </div>
				 </div>
			   </div>
			</div><!-- user's team pages end -->
   		</content>

<!-- javascript -->
	<content tag="script">
		<script>			
			function teamModal(teamId, accountId){
				$.ajax({
				  url: "${createLink(controller : 'ajax', action: 'team')}",
				  type: 'POST',
				  data: {accountId: accountId, teamId: teamId},
				  context: document.body
				}).done(function(result) {
				  $('#modalViewPort' ).html(result);
				  $('#mainModal').modal('show');		
				});	
			};
		</script>
	</content>
</body>
</html>
