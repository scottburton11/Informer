module ProcessHelpers
  
  def ps_aux
<<RUBY_HERE
%CPU %MEM COMM               PID USER
  0.0  0.0 launchd              1 root    
  0.0  0.1 kextd               10 root    
  0.0  0.1 DirectoryService    11 root    
  0.0  0.0 notifyd             12 root    
  0.0  0.1 configd             15 root    
  0.0  0.0 distnoted           20 daemon  
  0.0  0.0 mDNSResponder       27 _mdnsresponder
  0.0  0.1 securityd           37 root    
  0.0  0.0 ntpd                66 root    
  0.0  0.1 httpd               67 root    
  0.0  0.0 usbmuxd             68 _usbmuxd
  0.0  0.0 update              69 root    
  0.0  0.0 SystemStarter       70 root    
  0.0  9.4 mds                 74 root    
 13.9  0.2 loginwindow         75 scott   
  0.0  0.0 KernelEventAgent    76 root    
  0.0  0.0 kdcmond             77 root    
  0.0  0.0 hidd                79 root    
  0.0  0.0 fseventsd           80 root    
  0.0  0.0 dynamic_pager       82 root    
  0.0  0.0 diskarbitrationd    85 root    
  0.0  0.1 blued               89 root    
  0.0  0.0 autofsd             90 root    
  0.0  0.0 socketfilterfw      92 root    
  0.0  0.0 daemondo            94 root    
  0.0  0.0 daemondo            95 root    
  0.0  0.0 sh                  97 _mysql  
  0.0  0.0 DigidesignFireWi    98 root    
  0.0  0.0 memcached          111 nobody  
  1.9  3.2 WindowServer       117 _windowserver
  0.0  0.0 krb5kdc            124 root    
  0.0  0.9 coreservicesd      128 root    
  0.0  0.0 postgres           130 postgres
  0.0  1.4 mysqld             156 _mysql  
  0.0  0.0 Mbox2CS            434 root    
  0.0  0.0 globalSAN          441 root    
  0.0  0.1 qmasterd           446 root    
  0.0  0.0 hpusbmond          654 root    
  0.0  0.1 qmasterd           685 root    
  0.0  0.0 HPIO Trap Monito   694 root    
  0.0  0.0 vmnet-natd         740 root    
  0.0  0.0 vmnet-dhcpd        750 root    
  0.0  0.0 ApplicationPoolS   757 root    
  0.2  0.4 Passenger spawn    758 root    
  0.0  0.1 httpd              759 _www    
  0.0  0.0 vmnet-netifup      760 root    
  0.0  0.0 vmnet-netifup      763 root    
  0.0  0.0 vmnet-dhcpd        766 root    
  0.0  0.0 vmnet-bridge       770 root    
  0.0  0.1 aksusbd            781 root    
  0.0  0.0 postgres: writer   799 postgres
  0.0  0.0 postgres: wal wr   800 postgres
  0.0  0.0 postgres: autova   801 postgres
  0.0  0.0 postgres: stats    802 postgres
  0.0  0.0 launchd            805 scott   
  0.0  0.5 Spotlight          815 scott   
  0.0  0.1 UserEventAgent     816 scott   
  0.0  0.0 pboard             817 scott   
  0.0  0.3 Dock               818 scott   
  0.0  0.2 ATSServer          819 scott   
  0.0  0.2 coreaudiod         821 root    
  1.7  0.5 SystemUIServer     822 scott   
  0.0  1.2 Finder             824 scott   
  0.0  0.1 HPEventHandler     830 scott   
  0.0  0.1 iTunesHelper       838 scott   
  0.0  1.0 Quicksilver        926 scott   
  0.0  0.4 GrowlHelperApp    1140 scott   
  0.0  0.0 check_afp         1252 root    
  0.0  0.1 AppleSpell        1679 scott   
  0.0  0.8 Preview           1899 scott   
  0.0  1.3 TextMate          2404 scott   
  0.0  0.0 ssh-agent         2590 scott   
  0.0  0.0 ssh-agent         2687 scott   
  0.0  0.0 ssh-agent         2773 scott   
  0.0  0.0 ssh-agent         2872 scott   
  0.0  0.0 ssh-agent         2906 scott   
  0.0  0.0 ssh-agent         2950 scott   
  0.0  0.0 ssh-agent         2965 scott   
  0.0  0.0 ssh-agent         2998 scott   
  0.0  0.0 ssh-agent         3086 scott   
  0.0  0.0 ssh-agent         3167 scott   
  0.0  0.0 ssh-agent         3190 scott   
  0.0  0.0 ssh-agent         3658 scott   
  0.0  0.0 ssh-agent         3701 scott   
  0.0  0.0 ssh-agent         3724 scott   
  0.0  0.0 ssh-agent         4302 scott   
  0.0  0.0 ssh-agent         4354 scott   
  0.0  0.0 ssh-agent         4829 scott   
  0.0  0.0 ssh-agent         4843 scott   
  0.0  0.0 syslogd           5096 root    
  0.0  0.0 ssh-agent         5309 scott   
  0.0  0.1 httpd             7996 _www    
  0.0  0.6 compressord       8793 scott   
  0.0  0.3 qmasterqd         8794 scott   
  0.0  0.0 ssh-agent         8956 scott   
  1.0  0.5 Terminal         10296 scott   
  0.0  0.1 mdworker         10336 _spotlight
  0.0  2.8 firefox-bin      10719 scott   
  0.0  0.3 mdworker         10882 scott   
  0.0  0.6 backupd          10890 root    
  0.5  0.1 diskimages-helpe 11032 root    
  0.0  2.1 iTunes           11039 scott   
  0.0  0.0 hdiejectd        11044 root    
  0.0  0.1 AppleMobileDevic 11057 scott   
  0.0  0.1 PlugSuit Agent   11616 scott   
  0.0  0.0 ssh-agent        11870 scott   
  0.0  0.0 login            11520 root    
  0.0  0.0 -zsh             11521 scott   
  1.4  0.5 ruby             12093 scott   
  0.0  0.0 login            10297 root    
  0.0  0.0 -zsh             10299 scott   
  0.0  0.0 login            10300 root    
  0.0  0.0 -zsh             10303 scott   
  0.0  0.0 login            12043 root    
  0.0  0.0 -zsh             12045 scott   
  0.0  0.0 man              12058 scott   
  0.0  0.0 sh               12061 scott   
  0.0  0.0 sh               12062 scott   
  0.0  0.0 sh               12067 scott   
  0.0  0.0 less             12068 scott   
  0.0  0.0 login            12071 root    
  0.0  0.0 -zsh             12072 scott   
  0.0  0.0 ps               12100 root
RUBY_HERE
  end
  
end