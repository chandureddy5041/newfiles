	$(document).ready(function() {

	var i=1;
	var listSize=$( "#lessonThree ul li" ).size();
	var ans = " ";
	
			$('#lessonThree li:first').addClass('active');
			
			$("a.next").click(function(){
				$("div#ans").html("");
				i++;
				if(i>listSize){i=listSize;alert("no next question");}
				ans = $('div#lessonThree input:radio[id="question_'+i+'"]:checked').val();
			$("div#ans").html(ans);
	
				var $toHighlight = $('.active').next().length > 0 ? $('.active').next() : $('#lessonThree li').last();
				$('.active').removeClass('active');
				$toHighlight.addClass('active');
				});
		
			$("a.prev").click(function(){
				$("div#ans").html("");
				i--;
				if(i<1){i=1;alert("no prev question");}
				ans = $('div#lessonThree input:radio[id="question_'+i+'"]:checked').val();
			$("div#ans").html(ans);
				var $toHighlight = $('.active').prev().length > 0 ? $('.active').prev() : $('#lessonThree li').first();
				$('.active').removeClass('active');
				$toHighlight.addClass('active');
				
	
			});
			$('div#lessonThree input:radio[class="radio_grp"]').click(function () {
			ans = $('div#lessonThree input:radio[id="question_'+i+'"]:checked').val();
			$("div#ans").html(ans);
		});


			
					});	
