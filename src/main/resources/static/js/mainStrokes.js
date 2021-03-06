// ajax function to get initial strokes
function getStrokeGained(yards, shotType, callback) {
	$.ajax({
		method: "GET",
		url: "http://localhost:8080/getStrokeGained?yards=" + yards + "&shotType=" + shotType,
		success: function(data) {
			var pgaStroke = data.pgaStroke
			callback(data.pgaStroke);
		}
	})
}

function changePGAStrokeAvg(pgaStroke) {
	if(pgaStroke === undefined) {				
		$("#pgaStrokes").text("N/A");
	} else {
		$("#pgaStrokes").text(pgaStroke);
		var holeNumber = $("#holeNumber").data("hole-number");
		var info = JSON.parse(localStorage.getItem("info"));
		info[holeNumber]["yardage"] = $("#holeYardage").val();
		info[holeNumber]["pgaStroke"] = pgaStroke
		info[holeNumber]["par"] = $("#par").val();
		localStorage.setItem("info", JSON.stringify(info));
	}
}

function addCurrentShotStrokeGained(pgaStroke) {
	var preShot = Number($("#pgaStrokes").text());
	var strokeGained = calculateStrokeGained(preShot, pgaStroke);
	$("#displayStrokeGained").append(strokeGained);
}

function calculateStrokeGained(preShot, postShot) {
	console.log(preShot, postShot);
	//	Pre-shot value – Post-shot strokes-to-hole value – 1.00 = strokes gained value
	var strokeGained = preShot - postShot - 1;
	console.log(strokeGained);
	return parseFloat(strokeGained.toFixed(5));
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
	// initialize local storage objects for each hole
	var info = { 1: {}, 2: {}, 3: {}, 4: {}, 5: {}, 6: {}, 7: {}, 8: {}, 9: {}, 10: {}, 11: {}, 12: {},	13: {}, 14: {}, 15: {}, 16: {}, 17: {}, 18: {}};
	localStorage.setItem("info", JSON.stringify(info));
	
	$("#holeYardage").keyup(function() {
		var yards = $(this).val();

		// check that input is positive
		if($(this).val() > 0) {
			$("#par").prop("disabled", false);
			$(".strokes").prop("disabled", false);
			getStrokeGained(yards, "Tee", changePGAStrokeAvg);
		} else {
			$("#par").prop("disabled", true);
			$(".strokes").prop("disabled", true);
			$("#shotRange").prop("disabled", true);
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
			$("#shotRange").prop("min", range[0]);
			$("#shotRange").prop("max", range[1]);
			$("#shotRange").prop("value", range[0]);
			$("output").html(range[0]);
		}
	})
	
	$("#par").change(function() {
		var holeNumber = $("#holeNumber").data("hole-number");
		var info = JSON.parse(localStorage.getItem("info"));
		info[holeNumber]["par"] = $(this).val();
		localStorage.setItem("info", JSON.stringify(info));
		console.log(info[holeNumber]);
	})
	
	
	$("#addShot").click(function() {
		getStrokeGained($("#shotRange").val(), $("#shotType").val(), addCurrentShotStrokeGained);
		$("#shotsInfo").append($('<div></div>').load("/templates/hole-template.html"));
	})
})