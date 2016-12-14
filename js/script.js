var cq = 1;

$(document).ready(function(){
	
	var tot = $('.qwrap').length;
	$('.question').hide();
	$('.para').hide();
	$('#insert').hide();
	$('.fwrap').hide();
	$('.qwrap').hide().first().show();
	$('.qwrap').each(function(){
		$('#navBar > ul').append( '<li>' + ( $(this).index() + 1 ) + '</li>' );
	});
	
	$('#ins').click(function(){$('#insert').show();});
	$('#qnv').click(function(){$('.question').show();$('.para').hide();});
	$('#rc').click(function(){
		$('.question').show();
		$('.para').show();
		});
	
	$('#nextBtn').click(function(){
		nq = cq+1;
		if( nq > tot ){
			return false;
		}else{
			showQuest( nq );
			
		}
		increment();
	});
	
	
	$('#prevBtn').click(function(){
		nq = cq-1;
		if( nq < 1 ){
			return false;
		}else{
			showQuest( nq );
		}
	});
	
	$('#navBar li').click(function(){
		showQuest( $(this).index() + 1 );
	});
		
	$('.cycle .ele:gt(0)').hide();
    setInterval(function(){
      $('.cycle :first-child').fadeOut('slow')
         .next('.ele').fadeIn('slow')
         .end().appendTo('.cycle');}, 
      5000);
	
	showQuest( 1 );
	
});

function showQuest( no ){
	
	var prevQ = $('.qwrap:visible').index();
	
	$('.qwrap').hide();
	$('#qwrap'+no).fadeIn();
	
	$('#navBar li').eq( prevQ ).removeClass( 'qactive' );
	
	if( typeof $('.qwrap').eq( prevQ ).find( 'input[type=radio]:checked' ).val() !== 'undefined' ){
		$( '#navBar li').eq( prevQ ).addClass( 'qattend' );
	}
	
	$('#navBar li').eq( no-1 ).addClass( 'qactive' );
	
	cq = no;
}
var score;
function increment(){
	$('#opt').click(function(){
		score++;
			
	}
			);
	
}
function timer(time)
{
$('.infobox').countdown({
    date: +(new Date) + time,
    render: function(data) {
      $(this.el).text( data.min + ' : ' + data.sec  );
    },
    onEnd: function() {
      $(this.el).addClass('ended');
     // $('.leftCol').hide();
     // $('.lwrap').hide();
      $('.qwrap').hide();
      $('.qnav').hide();
      $('.rightCol').hide();
      $('.fwrap').show();      
      //$('#paraframe').hide();
    }
});}

function insert(c)
{
	if(c==0)
		{
		$('.question').show();
		$('.para').hide();
		}
	if(c==1)
		{
		$('.question').show();
		$('.para').show();
		}
}
