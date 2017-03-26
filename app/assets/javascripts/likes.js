$(document).ready(function(){
	
	$('.likes_check').change(function(e){
		window.userLikes = window.userLikes.replaceAt(
		parseInt($(this).data('id')), ($(this).is(':checked') ? '1' : '0'))
	})

	$('#submit_button').click(function(e){
		e.preventDefault();
		$.ajax({
			url: '/app/likes',
			data: {
				user_likes: window.userLikes
			},
			method: 'POST',
			success: function(){
				alert('Saved')
			}
		})
	})
})


String.prototype.replaceAt=function(index, character) {
    return this.substr(0, index) + character + this.substr(index + 1, this.length);
}