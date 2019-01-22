<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome to Strokes Gained Calculator</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="/css/styles.css" />
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<script src="/js/mainStrokes.js" type="text/javascript"></script>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark navigation-bar">
		<a class="navbar-brand text-white" href="#">Strokes Gained</a>
	  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	    	<span class="navbar-toggler-icon toggle-button-size"></span>
	  	</button>
	  	
	  	<div class="collapse navbar-collapse" id="navbarText">
	    	<ul class="navbar-nav mr-auto">
	      		<li class="nav-item">
	        		<a class="nav-link text-white" href="#">Calculator</a>
	      		</li>
	      		<li class="nav-item">
	        		<a class="nav-link text-white" href="#">How it works</a>
	      		</li>
	    	</ul>
			<ul class="navbar-nav">
	    		<li class="nav-item">
	    			<a href="#" class="nav-link text-white">Sign Up</a>
	    		</li>
	    		<li class="nav-item">
	    			<a href="#" class="nav-link text-white">Log In</a>
	    		</li>	    		
	    	</ul>
	  	</div>
	</nav>
	
	<div class="container-fluid">
		<p class="my-4 text-center main-message">
			Calculate your strokes gained against the average of PGA tour pros
		</p>			
		<div class="card mx-auto" style="width: 30rem;">
  			<div class="card-body">
				<p id="holeNumber" data-hole-number="1" class="text-center h5">Hole #1</p>
				<div class="row">
					<div class="col-6">
						<form>
							<div class="form-group row">
					    		<label class="mt-1 col-6" for="holeYardage">Total Yards:</label>
					    		<input id="holeYardage" class="col-6 form-control form-control-sm" type="number" placeholder="400" min="1" autofocus>
							</div>
							<div class="form-group row">
					    		<label class="mt-1 col-6" for="par">Par:</label>
								<select class="col-6 form-control form-control-sm" id="par" disabled>
					      			<option>3</option>
					      			<option selected>4</option>
					      			<option>5</option>
					    		</select>
							</div>
				  		</form>
					</div>
					<div class="col-6">
						<div class="mt-1 row">
							<p class="ml-1 px-0 col-7 text-center">PGA Stroke Avg: </p>
							<p class="px-0 col" id="pgaStrokes">--</p>
						</div>
					</div>
				</div>	
  				<!-- shot info -->
  				<div id="shotsInfo">
	  				<div class="singleShots">
	  					<table class="table table-borderless mb-1">
	  						<tbody>
	  							<tr>
	  								<td class="pb-1 pt-0 px-0">First Stroke</td>
	  							</tr>
	  							<tr>
	  								<td class="w-25 p-0">							
	  									<select style="width: 85%" class="form-control form-control-sm strokes" id="shotType" disabled>
											<option value="--" selected hidden>Lie</option>
							      			<option value="Fairway">Fairway</option>
							      			<option value="Rough">Rough</option>
							      			<option value="Sand">Sand</option>
							      			<option value="Recovery">Recovery</option>
							      			<option value="Green">Green</option>
							      			<option value="Penalty">Penalty</option>
							      			<option value="OB">OB</option>
				    					</select>
				    				</td>
				    				<td class="w-50 p-0">
				    					<label for="shotRange">Remaining Yards:</label>
				    					<input style="width: 30%" type="number" class="text-center ml-2 mt-0 yd-remaining" id="shotRange" min="5" max="600" disabled/>
				    				</td>
				    				<td class="w-25 p-0">
										<i style="margin-top: 3px;" id="addShot" class="grow material-icons lime">add_circle</i>
				    				</td>
	  							</tr>
	  						</tbody>
	  					</table>
	  					<p id="displayStrokeGained">Stroke gained/loss on this shot: </p>
					</div>
  				</div>
  			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>