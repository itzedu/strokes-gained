// ajax function to get initial strokes
function getInitialAverage(yards, shotType) {
	$.ajax({
		method: "GET",
		url: "http://localhost:8080/getInitialAvg?yards=" + yards + "&shotType=" + shotType,
		success: function(data) {
			var pgaStroke = data.pgaStroke
			if(pgaStroke === undefined) {				
				$("#pgaStrokes").text("Unavailable");
			} else {
				$("#pgaStrokes").text(data.pgaStroke);
			}
		}
	})	
}

function getYardageRange(shotType) {
//	yardages
//	tee 100-600 by 1
//	recovery 100-600 by 1
//	fairway 5-600 by 1
//	rough 5-600 by 1
//	sand 5-600 by 1
//	green 1-90 by 1
	var ranges = {
		"tr": [100, 600],
		"frs": [5, 600],
		"g": [1, 90]
	}
	
	if(shotType === "Tee" || shotType == "Recovery") {
		return ranges.tr;
	} else if(shotType == "Fairway" || shotType == "Rough" || shotType == "Sand") {
		return ranges.frs;
	} else {
		return ranges.g;
	}
}

$(document).ready(function() {
	$("#holeYardage").keyup(function() {
		var yards = $(this).val();

		// check that input is positive
		if($(this).val() > 0) {
			$("#par").prop("disabled", false);
			$(".strokes").prop("disabled", false);
			getInitialAverage(yards, "Tee");
		} else {
			$("#par").prop("disabled", true);
			$(".strokes").prop("disabled", true);
		}
	})
	
	$(".strokes").change(function() {
		var lie = $(this).val();
		var range;
		
		if(lie === "OB") {
			console.log("OB");
		} else if(lie === "Penalty") {
			console.log("Penalty");
		} else {
			range = getYardageRange(lie);
			$("#shotRange").prop("disabled", false);
			$("#rangeWrapper").attr("data-range-min", range[0]);
			$("#rangeWrapper").attr("data-range-max", range[1]);
			$("#shotRange").attr("min", range[0]);
			$("#shotRange").attr("value", range[0]);
			$("#shotRange").attr("max", range[1]);
			$("output").html(range[0]);
		}
	})
})