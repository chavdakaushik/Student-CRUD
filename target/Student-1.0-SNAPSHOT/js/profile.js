$(document).ready(function() {
	$(".edit").on("click", function() {
		$(".description-td .description")
			.attr("contenteditable", "true")
			.focus();
		
		$(".update").show(200);
	})
	
	$(".update").on("click", function() {
		$(".description-td .description").removeAttr("contenteditable");
		$(".update").hide(200);
	})
})