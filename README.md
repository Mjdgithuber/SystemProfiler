# System Profiler

## System Under Test
All of the following tests were performed on a Dell Poweredge Server with 2 sockets and 8 memory channels.  Between the two Xeons there are a total of 32 logical cores available for the tests.  As far secondary memory goes, there are a total of 8 SAS 7.2K drives in a RAID 10 configuration.  It is also important to note that the RAID controller is  enterprise-class with a large on-board cache vastly increasing the performance.

## FIO Tests for Secondary Memory SAS Drives
### Bandwidth vs. Latency for Different R/W Configurations

![](lat_v_bw/r4k.png)
![](lat_v_bw/r32k.png)
![](lat_v_bw/r70_4k.png)
![](lat_v_bw/r70_32k.png)
![](lat_v_bw/r50_4k.png)
![](lat_v_bw/r50_32k.png)
![](lat_v_bw/r30_4k.png)
![](lat_v_bw/r30_32k.png)
![](lat_v_bw/w4k.png)
![](lat_v_bw/w32k.png)

### R/W Configurations vs. Bandwidth
![](etc/blocksize_v_bandwidth.png)

## Intel Tests for Main Memory
### Memory Bandwidth for Different R/W Configurations
![](etc/intel_bandwidth_configs.png)

As can be seen in the plot, there isn't a massive difference between different read vs. write configurations and overall bandwidth.  This is expected because main memory is random access and has fixed timing.  I was a little surprised to see that all reads were among the slowest tested.  Please also note that the bandwidth on a server is substantially larger than desktop/laptop systems due to having many more memory channels.  

### Local vs. Remote Bandwidth
![](etc/intel_local_v_remote.png)

Each socket on a server will have a number of "local" channels, and will sometimes need to read/write to a "remote" channel that belongs to another socket.  NUMA standxs for non-uniform memory access and typically is going to be slower than accessing data local to the socket.  Remote accesses are speed up by having more logical cores, so I suspect that this is the reason why reading from a non-local channel had more bandwidth (but should have more latency).
