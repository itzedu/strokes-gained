// ajax function to get initial strokes
function getInitialAverage(yards, shotType) {
	$.ajax({
		method: "GET",
		url: "http://localhost:8080/getInitialAvg?yards=" + yards + "&shotType=" + shotType,
		success: function(data) {
			console.log(data.pgaStroke);
			var pgaStroke = data.pgaStroke
			if(pgaStroke === undefined) {				
				$("#pgaStrokes").text("Unavailable");
			} else {
				$("#pgaStrokes").text(data.pgaStroke);
			}
		}
	})	
}


$(document).ready(function() {
	$("#holeYardage").keyup(function() {
		var yards = $(this).val();

		// check that input is positive
		if($(this).val() > 0) {
			$("#par").prop("disabled", false);
			$(".strokes").prop("disabled", false);
			$(".yd-remaining").prop("disabled", false);
			getInitialAverage(yards, "Tee");
		} else {
			$("#par").prop("disabled", true);
			$(".strokes").prop("disabled", true);
			$(".yd-remaining").prop("disabled", true);
		}
	})
	
	$(".strokes").change(function() {
//		alert("hello");
	})
})