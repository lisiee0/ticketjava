$(document).ready(function(){
	/*
		v:vip
		r:r
		s:s
		a:a
		b:c
		o:사용중(occupied)
		_:미사용
		c:선택된(chosen)
		n:none
	*/
	var seatMap = [
		'nnnnvvnvvvovnoonnnn',
		'nnnnovnvvvvvnovnnnn',
		'nnvvvvnvovvvnvvovnn',
		'nnrrvvnvoovvnvvrrnn',
		'nnrrrrnoorrrnrrrrnn',
		'ssoosonsssoonsoosss',
		'ssoossnsssssnsssoss',
		'aaaaaanaaaaanaaooaa',
		'nnnnnnnnnnnnnnnnnnn',
		'aaaaaanaaaaanaaaaaa',
		'aaaaaanaooaanaaaaaa',
		'boobbbnbbbbbnbbbobb',
		'bbbbbbnbbbbbnboobbb',
		'bbbbbbnbbbbbnbbbbbb',
	];
	
	
	var count=0;
	var section = String.fromCharCode(65);
	
	for(var line=0; line<seatMap.length; line++) {
		
		$("#seatArea").append('<tr id="line'+line+'"></tr>');
		for(var seat of seatMap[line]){
			render(seat, line);
		} 
	}
	
	function render(seat,line){
		if(seat == "n"){
			$('#line'+line).append('<td><input class="n" type="checkbox" id="seat'+count+'"disabled><label for="seat'+count+'"></label> </td>');
		}
		else if(seat == "c"){
			$('#line'+line).append('<td><input type="checkbox" id="seat'+count+'"checked> <label for="seat'+count+'"></label></td>');
		}
		else if(seat == "o"){
			$('#line'+line).append('<td><input type="checkbox" id="seat'+count+'"disabled><label for="seat'+count+'"></label> </td>');
		}
		else if(seat =="v"){
			$('#line'+line).append('<td><input class="v" type="checkbox" id="seat'+count+'"><label for="seat'+count+'"></label> </td>');
		}
		else if(seat =="r"){
			$('#line'+line).append('<td><input class="r" type="checkbox" id="seat'+count+'"><label for="seat'+count+'"></label> </td>');
		}
		else if(seat =="s"){
			$('#line'+line).append('<td><input class="s" type="checkbox" id="seat'+count+'"><label for="seat'+count+'"></label> </td>');
		}
		else if(seat =="a"){
			$('#line'+line).append('<td><input class="a" type="checkbox" id="seat'+count+'"><label for="seat'+count+'"></label> </td>');
		}
		else{
			$('#line'+line).append('<td><input class="b" type="checkbox" id="seat'+count+'"><label for="seat'+count+'"></label> </td>');
		}
		
		count++;
	}
	
});
	