<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>air datepicker</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/air-datepicker/dist/css/datepicker.min.css">
<script src="${pageContext.request.contextPath}/assets/air-datepicker/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/air-datepicker/dist/js/datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/air-datepicker/dist/js/i18n/datepicker.ko.js"></script>


</head>

<body>

	<div id="rezCal" class="datepicker-here" data-language='ko'></div>

</body>


<script>


	//한개만 단순하게 만들때
	$("#rezCal").datepicker({
		language : 'ko'
	});

	//두개짜리 제어 연결된거 만들어주는 함수
	datePickerSet($("#datepicker1"), $("#datepicker2"), true); //다중은 시작하는 달력 먼저, 끝달력 2번째

	/*
	 * 달력 생성기
	 * @param sDate 파라미터만 넣으면 1개짜리 달력 생성
	 * @example   datePickerSet($("#datepicker"));
	 * 
	 * 
	 * @param sDate, 
	 * @param eDate 2개 넣으면 연결달력 생성되어 서로의 날짜를 넘어가지 않음
	 * @example   datePickerSet($("#datepicker1"), $("#datepicker2"));
	 */
	function datePickerSet(sDate, eDate, flag) {

		//시작 ~ 종료 2개 짜리 달력 datepicker	
		if (!isValidStr(sDate) && !isValidStr(eDate) && sDate.length > 0
				&& eDate.length > 0) {
			var sDay = $("#beginShow").val();
			var eDay = $("#endShow").val();

			if (flag && !isValidStr(sDay) && !isValidStr(eDay)) { //처음 입력 날짜 설정, update...			
				var sdp = sDate.datepicker().data("datepicker");
				sdp.selectDate(new Date(sDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요

				var edp = eDate.datepicker().data("datepicker");
				edp.selectDate(new Date(eDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
			}

			//시작일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
			if (!isValidStr(eDay)) {
				sDate.datepicker({
					maxDate : new Date(eDay.replace(/-/g, "/"))
				});
			}
			sDate.datepicker({
				language : 'ko',
				autoClose : true,
				onSelect : function() {
					datePickerSet(sDate, eDate);
				}
			});

			//종료일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
			if (!isValidStr(sDay)) {
				eDate.datepicker({
					minDate : new Date(sDay.replace(/-/g, "/"))
				});
			}
			eDate.datepicker({
				language : 'ko',
				autoClose : true,
				onSelect : function() {
					datePickerSet(sDate, eDate);
				}
			});

			//한개짜리 달력 datepicker
		} else if (!isValidStr(sDate)) {
			var sDay = sDate.val();
			if (flag && !isValidStr(sDay)) { //처음 입력 날짜 설정, update...			
				var sdp = sDate.datepicker().data("datepicker");
				sdp.selectDate(new Date(sDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
				console.log(sdp);
			}

			sDate.datepicker({
				language : 'ko',
				autoClose : true
			});
		}

		function isValidStr(str) {
			if (str == null || str == undefined || str == "")
				return true;
			else
				return false;
		}
	}
</script>

</html>