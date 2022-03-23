/* starRating CSS 파일과 함께 동작 */	
	
	 /* 리뷰 별점 */
	const drawStar = (target) => {
    document.querySelector('.star span').style.width = '${target.value * 20}%';
  	};

