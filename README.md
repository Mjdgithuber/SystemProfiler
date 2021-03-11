# System Profiler

## System Under Test
All of the following tests were performed on a Dell Poweredge Server with 2 sockets and 8 memory channels.  Between the two Xeons there are a total of 32 logical cores available for the tests.  As far secondary memory goes, there are a total of 8 SAS 7.2K drives in a RAID 10 configuration.  It is also important to note that the RAID controller is  enterprise-class with a large on-board cache vastly increasing the performance.

## FIO Tests for Secondary Memory SAS Drives
### Bandwidth vs. Latency for Different R/W Configurations

![](lat_v_bw/r30_32k.png)
