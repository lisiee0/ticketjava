/* 해당 년도 출력하기 위해 올해 년도를 가져오는 자바 스크립트 */

	$(document).ready(function() {

		var date = new Date();
		var selYear = date.getFullYear();

		// 현재년도를 기준으로 호출
		getYears(selYear);

		// 현재 년도를 select 함.
		$('#yearBox').val(selYear);

		// 바뀐 년도를 기준으로 다시 option을 세팅함
		$('#yearBox').change(function() {
			var chgYear = $(this).val();
			getYears(chgYear);
			$('#yearBox').val(chgYear);
		});
	});

	function getYears(getY) {

		// 기존 optopn을 삭제함
		$("#yearBox option").remove();

		// 올해 기준으로 -2년부터 +5년을 보여줌.
		var stY = Number(getY) - 2;
		var enY = Number(getY) + 5;
		for (var y = stY; y <= enY; y++) {
			$('#yearBox').append(
					"<option value='"+ y +"'>" + y + " 년" + "</option>");
		}
	}
	