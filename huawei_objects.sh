#!/bin/sh

case $object in

  TOTAL_YIELD)                    export OBJECTID=h@37514/I; export MULTIPLIER=1  ;; # Wh
  TOTAL_ACTIVE_POWER)             export OBJECTID=h@37516/I; export MULTIPLIER=1  ;; # W
  
esac

# for SDongle:    port:502, -s 100
# for admin-wifi: port:6607, -s 0

#30015/10H                       # SN
#30050/15H                       # OS Version
#30068/1I: 3276800 0x320000      # ProtocolVersion
#30109/1I: 20480 0x5000
#30110/1H: 20480 0x5000
#30111/1H: 3 0x3
#30112/1I: 11841557 0xb4b015
#30114/1I: 13873425 0xd3b111
#30116/1I: 14201105 0xd8b111
#30118/1I: 0 0x0
#30120/1I: 0 0x0
#30124/1I: 0 0x0
#30126/1I: 0 0x0
#30128/1I: 0 0x0
#30130/1I: 0 0x0
#30211/1I: 1908418835 0x71c02913
#30213/1I: 4222993 0x407011
#30215/1I: 15204544 0xe800c0
#30217/1I: 0 0x0
#30299/1I: 32768 0x8000
#30300/1H: 32768 0x8000
#30301/1H: 32382 0x7e7e
#30302/1H: 0 0x0
#30303/1H: 0 0x0
#30304/1H: 0 0x0
#30305/1H: 7168 0x1c00
#30306/1H: 40966 0xa006
#30307/1H: 0 0x0
#31200/10H                       # Registration key
#32014/1I: 37748 0x9374
#32015/1H: 37748 0x9374
#35102/1I: 1515465850 0x5a542c7a
#35103/1I: 32764 0x7ffc
#35104/1H: 32764 0x7ffc          # Wireless Route Access Signal Strength
#35105/1H: 0 0x0
#35111/1I: 0 0x0
#35112/1I: 0 0x0
#35113/1I: 0 0x0
#35114/1I: 0 0x0
#35115/1I: 0 0x0
#35124/1I: 4 0x4
#35125/1H: 4 0x4
#35126/1H: 2 0x2
#35307/1I: 0 0x0
#35308/1I: 0 0x0
#36032/1I: 0 0x0
#36033/1I: 0 0x0
#37410/1H: 4 0x4                 # Type
#37411/1H: 0 0x0                 # Device Search Status
#37412/1H: 12 0xc                # Device Change Sequence Number
#37428/1I: 10 0xa
#37429/1H: 10 0xa                # Maximum Number of Devices Allowed
#37498/1I:                       # Total input power (W)
#37500/1I: 4294967295 0xffffffff # Load power
#37502/1I: 2147483647 0x7fffffff # Grid power
#37504/1I: 0 0x0                 # Total Battery power
#37506/1I: 0 0x0
#37508/1I: 0 0x0
#37510/1I: 0 0x0
#37512/1I: 0 0x0
#37514/1I:                       # Total yield (Wh)
#37516/1I:                       # Total active power (W)
#37519/1I: 0 0x0
#37520/1I: 0 0x0
#40000/1I:                       # Current time
#40204/1I: 0 0x0
#40205/1I: 0 0x0
#42012/1I: 0 0x0
#42013/1I: 0 0x0
#42136/1I: 0 0x0
#42137/1I: 0 0x0
#42596/1I: 30 0x1e
#42597/1H: 30 0x1e
#42899/1I: 1 0x1
#42900/1H: 1 0x1                 # Daylight Saving Time (DST)
#42901/1H: 60 0x3c
#42902/1H: 3 0x3
#42903/1H: 26 0x1a
#42904/1H: 3 0x3
#42905/1H: 0 0x0
#42906/1H: 0 0x0
#42907/1H: 10 0xa
#42908/1H: 29 0x1d
#42909/1H: 4 0x4
#42910/1H: 0 0x0
#42911/1H: 0 0x0
#42999/1I: 2024 0x7e8
#43000/1H:                       # current year
#43001/1H:                       # current month
#43002/1H:                       # current day
#43003/1H:                       # current hour
#43004/1H:                       # current minute
#43005/1H:                       # current second
#43006/1H:                       # Time Zone
#43007/1H: 1 0x1
#43017/1I: 1 0x1
#43018/1H: 1 0x1
#43019/1H: 100 0x64
#43020/1H: 1 0x1
#43021/1I: 0 0x0
#43022/1I: 0 0x0
#43063/1I: 30 0x1e
#43064/1H: 30 0x1e               # Heartbeat Period at Application Layer
#43065/1H: 180 0xb4              # TCP Heartbeat Period
#43066/1H: 1 0x1
#43067/30H                       # NMS Server
#43097/1H: 27250 0x6a72          # NMS Server Port 1
#43098/1H: 1 0x1                 # SSL Encryption
#43099/1H: 27251 0x6a73          # NMS Server Port 2
#43100/1H: 0 0x0                 # Port Mode
#43101/1H: 1 0x1                 # Registration Status
#43134/1H: 5 0x5                 # Unsolicited Report Interval
#43135/1H: 5 0x5                 # Reported Data Record Period
#43136/1H: 1200 0x4b0
#43146/1I: 1 0x1
#43147/1H: 1 0x1
#43164/1H: 4 0x4
#43197/1H: 1 0x1
#43198/1I: 0 0x0
#43200/1I: 0 0x0
#43202/1I: 0 0x0
#43204/1I: 0 0x0
#43206/1I: 0 0x0
#43207/1I: 1 0x1
#43208/1H: 1 0x1
#43209/1I: 3232258097 0xc0a85831
#43211/1I: 4294967040 0xffffff00
#43213/1I: 3232258049 0xc0a85801
#43215/1I: 0 0x0
#43217/1I: 0 0x0
#43235/1I: 1 0x1
#43236/1H: 1 0x1
#43237/1H: 0 0x0
#43287/1I: 3232286721 0xc0a8c801
#43289/1I: 4294967040 0xffffff00
#43310/1I: 0 0x0
#43311/1H: 0 0x0                 # NTP Time Synchronization
#43312/30H                       # NTP Server Address
#43342/1H: 123 0x7b              # NTP Server Port
#43343/1H: 5 0x5                 # NTP Service Time Synchronization Interval
#43358/1I: 1 0x1
#43359/1H: 1 0x1
#43379/1I: 0 0x0
#43380/1H: 0 0x0
#43381/1H: 0 0x0
#45013/1I: 0 0x0
#45014/1H: 0 0x0
#45025/1I: 1 0x1
#45026/1H: 1 0x1
#45038/1H: 2 0x2                 # Connection Port
#45038/1I: 131072 0x20000
#46200/1I: 1515465850 0x5a542c7a
#46217/1I: 0 0x0
#46218/1I: 0 0x0
#47085/1I: 0 0x0
#47086/1I: 0 0x0
#47088/1H: 1000 0x3e8
#47298/1I: 0 0x0
#47299/1I: 0 0x0
#47399/1I: 1 0x1
#47400/1H: 1 0x1
#47401/1H: 1 0x1
#47402/11H                       # Device Operation
#47412/1I: 0 0x0
#47413/1H: 0 0x0
#47414/1H: 100 0x64
#47415/1H: 0 0x0
#47418/1H: 0 0x0
#47419/1H: 0 0x0
#47420/1H: 5 0x5
#47421/1H: 50 0x32
#47422/1I: 0 0x0
#47423/1I: 0 0x0
#47424/1I: 0 0x0
#47425/1I: 0 0x0
#47426/1I: 0 0x0
#47427/1I: 1000 0x3e8
#47428/1H: 1000 0x3e8
#47429/1H: 20 0x14
#47430/1I: 327680 0x50000
#47430/1H: 5 0x5
#47431/1H: 0 0x0
#47432/1H: 1000 0x3e8
#47433/1I: 0 0x0
#47482/1I: 1 0x1
#47483/1H: 1 0x1
#47590/1I: 30000 0x7530
#47591/1I: 0 0x0
#47592/1H: 0 0x0
#47593/1H: 35 0x23
#47594/1H: 2 0x2
#47595/1I: 0 0x0
#47597/1I: 0 0x0

