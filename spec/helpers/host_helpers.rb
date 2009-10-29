module HostHelpers
  def ifconfig_eth0
<<RUBY_HERE
eth0      Link encap:Ethernet  HWaddr 00:0c:29:14:d1:e9  
          inet addr:192.168.157.129  Bcast:192.168.157.255  Mask:255.255.255.0
          inet6 addr: fe80::20c:29ff:fe14:d1e9/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:3436 errors:0 dropped:0 overruns:0 frame:0
          TX packets:526 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:783465 (783.4 KB)  TX bytes:70731 (70.7 KB)
RUBY_HERE

    
  end
end