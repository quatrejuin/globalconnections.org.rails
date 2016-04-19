$(document).ready(function(){
$("table.styled tr:nth-child(odd)").addClass("alt");  // Add alt class to alternating rows on styled tables
$(".table-container td a").parent().addClass("event"); // Add event class to month view 
$(".table-container td h4").parent().parent().parent().addClass("event"); // Add event class to month view
if($("#gallery-form #select-gallery").children().length <= 2) { $(".gallery-teaser form").addClass("none"); $(".gallery select").addClass("none"); }
if($(".gallery-attachment dl.image-list dt").length > 1){$(".gallery-attachment .gallery-directional").removeClass("none");}

$(".gallery-attachment dl.image-list dt:first").addClass("active");
$(".gallery-attachment dl.image-list dd:first").addClass("active");
$(".gallery-attachment dl.image-list dt:not(.active)").addClass("none");
$(".gallery-attachment dl.image-list dd:not(.active)").addClass("none");
	
	var changeButtons = function(){
		// Change display state of buttons
		// If not first child or last child: display next and prev
		if( !$(".gallery-attachment dl.image-list dt:first").hasClass("active") && !$(".gallery-attachment dl.image-list dt:last").hasClass("active") ){
			$(".gallery-previous a").removeClass("disabled");
			$(".gallery-next a").removeClass("disabled");
		} 
		// If first child: display next, disable prev
		if( $(".gallery-attachment dl.image-list dt:first").is(".active") ){
			$(".gallery-next a").removeClass("disabled");
			$(".gallery-previous a").addClass("disabled");
		} 
		// If last child: display prev, disable next
		if( $(".gallery-attachment dl.image-list dt:last").is(".active") ){
			$(".gallery-previous a").removeClass("disabled");
			$(".gallery-next a").addClass("disabled");
		}
		
		SI_clearFooter();
	}
	
	var updateImages = function(){
		$(".gallery-attachment dl.image-list dt.active").addClass("none");
		$(".gallery-attachment dl.image-list dd.active").addClass("none");
		$(".gallery-attachment dl.image-list dt.active").removeClass("active");
		$(".gallery-attachment dl.image-list dd.active").removeClass("active");
	}
	
	$(".gallery-next a").click(function(){	
		if(!$(this).hasClass("disabled")){
			var nextImg = $(".gallery-attachment dl.image-list dd.active");
			updateImages();
			nextImg.next().removeClass("none");
			nextImg.next().next().removeClass("none");
			nextImg.next().addClass("active");
			nextImg.next().next().addClass("active");
			changeButtons();
		}
	});
	$(".gallery-previous a").click(function(){		
		if(!$(this).hasClass("disabled")){
			var prevImg = $(".gallery-attachment dl dt.active");
			updateImages();
			prevImg.prev().addClass("active");
			prevImg.prev().prev().addClass("active");
			prevImg.prev().removeClass("none");
			prevImg.prev().prev().removeClass("none");
			changeButtons();
		}
	});
	
	/* Add alt class to gallery thumbnails - Not being used yet */
	$(".gallery-thumbnails ul li:odd").addClass("alt");
	
});