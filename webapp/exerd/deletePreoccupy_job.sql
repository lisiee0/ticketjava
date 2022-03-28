grant create any job to ticketjava;

/* 프로시저 삭제 */
drop procedure "TICKETJAVA"."DELPRE";

/* job 삭제 */
BEGIN
    DBMS_SCHEDULER.DROP_JOB(job_name => '"TICKETJAVA"."DELPRE_JOB"',
                                defer => false,
                                force => false);
END;

/* delPre 프로시저 생성 */
/* 선점 후 결제가 되지 않고 8분이 지난 예매내역 삭제 */
create or replace procedure delPre
is
begin
    delete from reserve
    where rez_no in (select  distinct rez_no
                    from selseat
                    where status = 2 and (sysdate-pretime)*24*60*60 > 480);
    commit;
end delPre;

/* job 생성 */
/* 60초마다 delPre 실행 */
BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
            job_name => '"TICKETJAVA"."DELPRE_JOB"',
            job_type => 'STORED_PROCEDURE',
            job_action => 'TICKETJAVA.DELPRE',
            number_of_arguments => 0,
            start_date => NULL,
            repeat_interval => 'FREQ=SECONDLY;INTERVAL=60',
            end_date => NULL,
            enabled => FALSE,
            auto_drop => FALSE,
            comments => 'delPre_job');


    DBMS_SCHEDULER.SET_ATTRIBUTE( 
             name => '"TICKETJAVA"."DELPRE_JOB"', 
             attribute => 'logging_level', value => DBMS_SCHEDULER.LOGGING_OFF);
    
    DBMS_SCHEDULER.enable(
             name => '"TICKETJAVA"."DELPRE_JOB"');
    commit;
END;