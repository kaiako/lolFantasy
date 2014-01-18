<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="layout" content="main"/>
    <title>User Home Page</title>
</head>

<body>
	<div style="width:100%;" class="container">
    	<content tag="main">
    	
    		<!-- users profile/win/loss -->
    		<div class="row">
	    		<div class="col-lg-3 col-sm-3">
	        		<img src="${resource(dir: 'img' , file:'Hershey.jpg')}" id="profilePic" alt="ProfilePic" class="hidden-xs img-responsive pull-left">
	        	</div>
	        	<div class="col-lg-1 col-lg-offset-2 well well-sm" align="center">
	        	<h2>0</h2>
	        	</div>
	        	<div class="col-lg-3 ">
	        		<h2 align="center">HolyCrap11<br>
	        		Overall Win-Loss</h2>
	        	</div>
	        	<div class="col-lg-1 well well-sm" align="center">
	        	<h2>100</h2>
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
		    	<div class="panel-group" id="accordion">
				  <div class="panel panel-default">
				    <div class="panel-heading">
				      <h4 class="panel-title">
				        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
				          TEAM NAME
				        </a>
				      </h4>
				    </div>
				    <div id="collapseOne" class="panel-collapse collapse in">
				      <div class="panel-body">
				       <table class="table table-responsive">  
					        <thead>
					          <tr><!-- various points -->
					            <th>Player</th>  
					            <th>Kill</th>  
					            <th>Assist</th>  
					            <th>Creep Score</th>
					            <th>Towers Won</th> 
					            <th>Towers Lost</th> 
					            <th>Win/Loss</th> 
					          </tr>  
					        </thead>
					        <tbody>  
					          <tr><!-- da table -->
					           <th></th>
					           <th></th> 
					           <th></th> 
					           <th></th>
					           <th></th> 
					           <th></th> 
					           <th></th> 
					          </tr>  
					        </tbody>  
					   </table>
				      </div>
				    </div>
				  </div>
			</div><!-- user's team pages end -->
		</content>
    	
   
   
   
</div> <!-- end container -->

<!-- javascript -->
</body>
</html>
