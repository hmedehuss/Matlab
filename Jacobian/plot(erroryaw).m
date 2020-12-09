t=error_rp_mavlink_ahrs_t(:,2);
t=t-t(1);
t=t*1000;
plot(t,error_yaw_mavlink_ahrs_t(:,2))