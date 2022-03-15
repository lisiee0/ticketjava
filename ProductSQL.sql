			insert into 	product	(prod_no, prodName, prodType,
								beginShow, endShow, beginRez,
								endRez,  viewTime, viewGrade,
								notice, posterpath, cancelInfo,
								showTime) 
                    values 	(99, 'name', 3,
                            '2022-03-04', '2022-03-17', '2022-03-04',
                            '2022-03-04', 55, 1,
                            '공지사항', '', '공지사항',
                            to_date('23:40','HH24:MI'));
                            
rollback;