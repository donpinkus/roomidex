function cityNeighborhoodSelector(
	citySeletWrapperID, 
	neighborhoodCheckboxContainerClass
) {
	$(neighborhoodCheckboxContainerClass).hide();
	$(citySeletWrapperID).change(function(e){
		var selected_city_id = $(citySeletWrapperID + " option:selected").val();
		$(neighborhoodCheckboxContainerClass).hide();
		$(neighborhoodCheckboxContainerClass + '[data-city-id="' + selected_city_id + '"]')
			.show();
	});
}

$(document).ready(function(){
	var neighborhoodSelector = 
		new cityNeighborhoodSelector('#citySelect', '.neighborhoodCheckboxContainer');
});