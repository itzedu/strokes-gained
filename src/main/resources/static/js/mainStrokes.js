$(document).ready(function() {
	$("#holeYardage").change(function() {
		var yards = $(this).val();

		// check that input has a value
		if($(this).val() !== "") {
			$("#par").removeAttr("disabled");
		} else {
			$("#par").attr("disabled", true);
		}
	})
})