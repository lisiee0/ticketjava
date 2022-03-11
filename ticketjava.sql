insert into product(prod_no,
                    posterpath) 
            values(100,
                    '임시 데이터'
);

insert into detail(DETAIL_NO, prodpath, castingpath, addedpath) 
            values(100,'임시저장1', '임시캐스팅', '임시부가정보');
            
            
rollback;


insert into product	(prod_no, posterpath) 
            	values			(100, 
                
                'C:\javaStudy\upload\1646963653846f5522bc8-3b0b-412f-8c70-148389fc7e34.zip'
                );