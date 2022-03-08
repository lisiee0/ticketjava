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
	
	var seatMap = [];
	
	var sectionA = [
		'vvvv',
		'vvvv',
		'rrrr',
		'rrrr',
		'ssss',
		'ssss',
		'aaaa'
		
	];
	seatMap.push(sectionA);
	
	var sectionB = [
		'vvvvvv',
		'vvvvvv',
		'rrrrrr',
		'rrrrrr',
		'rrrrrr',
		'aaaaaa',
		'bbbbbb'
	];
	seatMap.push(sectionB);
	
	var sectionC = [
		'vvvv',
		'vvvv',
		'rrrr',
		'rrrr',
		'ssss',
		'ssss'
	];
	seatMap.push(sectionC);
	
	
	var sectionD = [
		'vvvv',
		'vvvv',
		'rrrr',
		'rrrr',
		'ssss',
		'ssss'
	];
	seatMap.push(sectionD);
	
	var sectionE = [
		'vvvvvvvvvvvv',
		'vvvvvvvvvvvv',
		'rrrrrrrrrrrr',
		'rrrrrrrrrrrr',
		'ssssssssssss',
		'ssssssssssss'
	];
	seatMap.push(sectionE);
	
	var seatno=0;
	for(var section = 0; section < seatMap.length; section++ ){
		
		var sectionCh = String.fromCharCode(section+65);
		$("#seatPlanDiv").append('<table id="seatArea'+sectionCh+'"> <tr> <th class="center" colspan="100%">'+ sectionCh +' </tr></thead> </table>');
	
		
		for(var col=0; col<seatMap[section].length; col++) {
			
			$('#seatArea'+sectionCh).append('<tr id="col'+col+'"></tr>');
			/*for(var seat of seatMap[section][col]){
				render(seat, col, sectionCh);
			} */
			var num=1;
			for(var s=0; s<=seatMap[section][col].length;s++){
				
				if(s<seatMap[section][col].length){
					render(seatMap[section][col][s], col, sectionCh);
				}
				else{
					renderCol(col, sectionCh);
				}
					
			}
		}
	
	}
	
	function render(seat,col, sectionCh){
		if(seat == "n"){
			$('#seatArea'+sectionCh+' #col'+col).append('<td><input class="n" type="checkbox" id="seat'+seatno+'"disabled><label for="seat'+seatno+'"></label> </td>');
		}
		else if(seat == "c"){
			$('#seatArea'+sectionCh+' #col'+col).append('<td><input type="checkbox" id="seat'+seatno+'"checked> <label for="seat'+seatno+'"></label></td>');
		}
		else if(seat == "o"){
			$('#seatArea'+sectionCh+' #col'+col).append('<td><input type="checkbox" id="seat'+seatno+'"disabled><label for="seat'+seatno+'"></label> </td>');
		}
		
		/*else if(seat =="v"){
			$('#seatArea'+sectionCh+' #col'+col).append('<td><input class="v" type="checkbox" id="seat'+seatno+'"><label for="seat'+seatno+'"></label> </td>');
		}
		else if(seat =="r"){
			$('#seatArea'+sectionCh+' #col'+col).append('<td><input class="r" type="checkbox" id="seat'+seatno+'"><label for="seat'+seatno+'"></label> </td>');
		}
		else if(seat =="s"){
			$('#seatArea'+sectionCh+' #col'+col).append('<td><input class="s" type="checkbox" id="seat'+seatno+'"><label for="seat'+seatno+'"></label> </td>');
		}
		else if(seat =="a"){
			$('#seatArea'+sectionCh+' #col'+col).append('<td><input class="a" type="checkbox" id="seat'+seatno+'"><label for="seat'+seatno+'"></label> </td>');
		}*/
		else{
			$('#seatArea'+sectionCh+' #col'+col).append(
				'<td><input class="'+seat+'" type="checkbox" id="seat'+seatno+
				'" data-section="'+sectionCh+'" data-col="'+(col+1)+'" data-num="'+num+'" ><label for="seat'+seatno+'"></label> </td>'
			);
		}
		
		if(seat != "num"){
			num++;
		}
		
		seatno++;
	}
	
	function renderCol(col, sectionCh) {
		$('#seatArea'+sectionCh+' #col'+col).append('<td class="colno">'+(col+1)+'</td>');
		seatno++;
	}
	
});
	