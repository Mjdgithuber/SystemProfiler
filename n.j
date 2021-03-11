[global]
;direct=1
;runtime=15
ioengine=posixaio
size=256M
numjobs=1
iodepth=1
per_job_logs=0

[read_4k]
rw=randread
bs=4k
write_bw_log=read_4k
write_iops_log=read_4k
;write_lat_log=read_4k

[read_32k]
rw=randread
bs=32k
write_bw_log=read_32k
write_iops_log=read_32k
;write_lat_log=read_32k

[write_4k]
rw=randwrite
bs=4k
write_bw_log=write_4k
write_iops_log=write_4k
;write_lat_log=write_4k

[write_32k]
rw=randwrite
bs=32k
write_bw_log=write_32k
write_iops_log=write_32k
;write_lat_log=write_32k

[rw_4k]
rw=randrw
bs=4k
write_bw_log=rw_4k
write_iops_log=rw_4k
;write_lat_log=rw_4k

[rw_32k]
rw=randrw
bs=32k
write_bw_log=rw_32k
write_iops_log=rw_32k
;write_lat_log=rw_32k

[rw_70_4k]
rw=randrw
bs=4k
rwmixread=70
write_bw_log=rw_4k
write_iops_log=rw_4k
;write_lat_log=rw_4k

[rw_70_32k]
rw=randrw
bs=32k
rwmixread=70
write_bw_log=rw_32k
write_iops_log=rw_32k
;write_lat_log=rw_32k

[rw_30_4k]
rw=randrw
bs=4k
rwmixread=30
write_bw_log=rw_4k
write_iops_log=rw_4k
;write_lat_log=rw_4k

[rw_30_32k]
rw=randrw
bs=32k
rwmixread=30
write_bw_log=rw_32k
write_iops_log=rw_32k
;write_lat_log=rw_32k

[iops]
rw=randrw
bs=32k
rwmixread=30
