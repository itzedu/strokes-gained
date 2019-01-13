<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome to Strokes Gained Calculator</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/styles.css" />
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
				<form>
					<p class="text-center h5">Hole #1</p>
			  		<div class="form-group row">
			    		<label class="col-sm-3 col-form-label" for="holeYardage">Total Yards:</label>
			    		<input style="padding: 0 12px" id="holeYardage" class="col-sm-3 form-control" type="number" >
					</div>
			  		<div class="form-group">
			    		<label for="exampleFormControlSelect1">Example select</label>
			    		<select class="form-control" id="exampleFormControlSelect1">
			      			<option>1</option>
			      			<option>2</option>
			      			<option>3</option>
			      			<option>4</option>
			      			<option>5</option>
			    		</select>
			  		</div>
				</form>
  			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>