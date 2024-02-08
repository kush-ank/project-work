COntrol file - load a file to table according to the structure provided inside

16052023 (DDMMYYYY)
16-MAY-2023 (DD-MON-YYYY)


infile 'aqwerty/abc.txt'
append into table XYZ 
field terminated by ',' trailing nullcols
(
customer_name,
address,
date_of_birth    date 'DD-MON-YYYY'
state
state_ind        substr(:state,1,3)
)



.ctl



insert into tablename (flds1, flds2, flds3)
select dsdvds,SDGS,SEGS FROM TB1 JOIN TB2 JOIN TB3;

EXIT;



insert_job: cmd1_name  job_type: CMD
command: path/abc.sh
machine: server_name
owver: pqr
permission: gx, wx
condition: s(cmd2_name), fw(file1)
description: ""
std_out_file: ""
std_err_file: ""
alarm_if_fail: 1
timezone:

insert_job:       E_cmd
job_type:         CMD
description:      "Run Product Load Box"
owner:            @[DB_USER]
machine:          @[AUTOSYS_SERVER]
permission:       gx,wx
date_conditions:  yes
days_of_week:     all
start_times:      "05:00"
condition:        s(C_cmd), s(B_cmd), s(A_cmd)
description: "job runs"
std_out_file: "pathname/result.out"
std_err_file: "pathname/result.err"
alarm_if_fail: 1
timezone: EST
