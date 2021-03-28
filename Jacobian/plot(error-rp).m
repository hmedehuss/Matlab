load('C:\Program Files (x86)\Mission Planner\logs\HEXAROTOR\1\2017-01-30\PID_without_tuning.tlog.mat')
t=error_rp_mavlink_ahrs_t(:,1);
t=t-t(1);
t=t*1000;
