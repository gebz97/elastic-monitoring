SELECT instance_number,instance_name,host_name,version,startup_time,status,archiver,logins,shutdown_pending,database_status,active_state,blocked,instance_mode,edition,database_type FROM v$instance

SELECT sid,serial#,username,status,program,action,event FROM v$session WHERE username IS NOT NULL 

SELECT begin_time,end_time,metric_name,value,metric_unit FROM v$sysmetric

SELECT event,total_waits,total_timeouts,time_waited,average_wait,cpu,wait_class FROM v$system_event WHERE event NOT LIKE 'SQL*Net%'

SELECT * FROM dba_tablespace_usage_metrics

SELECT column_name FROM all_tab_columns WHERE table_name = 'v$instance';

SELECT column_name FROM all_tab_columns WHERE table_name LIKE '%instance%' OR table_name LIKE '%session%' OR table_name LIKE '%sysmetric%' OR table_name LIKE '%dba_tablespace_usage_metrics%' OR table_name LIKE '%system_event%';

SELECT column_name, data_type 
FROM all_tab_columns 
WHERE data_type IN ('RAW', 'BLOB');
