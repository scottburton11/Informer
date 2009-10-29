module ProcessHelpers
  
  def ps_aux
<<RUBY_HERE
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.2   5236   576 ?        Ss   Oct27   0:01 /sbin/init
root         2  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        S<   Oct27   0:00 [migration/0]
root         4  0.0  0.0      0     0 ?        S<   Oct27   0:00 [ksoftirqd/0]
root         5  0.0  0.0      0     0 ?        S<   Oct27   0:00 [watchdog/0]
root         6  0.0  0.0      0     0 ?        S<   Oct27   0:00 [events/0]
root         7  0.0  0.0      0     0 ?        S<   Oct27   0:00 [khelper]
root         8  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kstop/0]
root         9  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kintegrityd/0]
root        10  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kblockd/0]
root        11  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kacpid]
root        12  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kacpi_notify]
root        13  0.0  0.0      0     0 ?        S<   Oct27   0:00 [cqueue]
root        14  0.0  0.0      0     0 ?        S<   Oct27   0:17 [ata/0]
root        15  0.0  0.0      0     0 ?        S<   Oct27   0:00 [ata_aux]
root        16  0.0  0.0      0     0 ?        S<   Oct27   0:00 [ksuspend_usbd]
root        17  0.0  0.0      0     0 ?        S<   Oct27   0:00 [khubd]
root        18  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kseriod]
root        19  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kmmcd]
root        20  0.0  0.0      0     0 ?        S<   Oct27   0:00 [btaddconn]
root        21  0.0  0.0      0     0 ?        S<   Oct27   0:00 [btdelconn]
root        22  0.0  0.0      0     0 ?        S    Oct27   0:00 [pdflush]
root        23  0.0  0.0      0     0 ?        S    Oct27   0:00 [pdflush]
root        24  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kswapd0]
root        25  0.0  0.0      0     0 ?        S<   Oct27   0:00 [aio/0]
root        26  0.0  0.0      0     0 ?        S<   Oct27   0:00 [ecryptfs-kthrea]
root        29  0.0  0.0      0     0 ?        S<   Oct27   0:00 [pciehpd]
root        30  0.0  0.0      0     0 ?        S<   Oct27   0:00 [scsi_eh_0]
root        31  0.0  0.0      0     0 ?        S<   Oct27   0:00 [scsi_eh_1]
root        32  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kstriped]
root        33  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kmpathd/0]
root        34  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kmpath_handlerd]
root        35  0.0  0.0      0     0 ?        S<   Oct27   0:00 [ksnapd]
root        36  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kondemand/0]
root        37  0.0  0.0      0     0 ?        S<   Oct27   0:00 [krfcommd]
root       220  0.0  0.0      0     0 ?        S<   Oct27   0:00 [mpt_poll_0]
root       334  0.0  0.0      0     0 ?        S<   Oct27   0:00 [scsi_eh_2]
root       753  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kjournald]
root       873  0.0  0.1  16660   368 ?        S<s  Oct27   0:00 /sbin/udevd --daemon
root      1056  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kgameportd]
root      1189  0.0  0.0      0     0 ?        S<   Oct27   0:00 [kpsmoused]
root      2344  0.0  0.1   3944   488 tty4     Ss+  Oct27   0:00 /sbin/getty 38400 tty4
root      2345  0.0  0.1   3944   488 tty5     Ss+  Oct27   0:00 /sbin/getty 38400 tty5
root      2346  0.0  0.2   4024   608 ?        Ss   Oct27   0:00 /bin/sh /etc/init.d/rc 2
root      2351  0.0  0.1   3944   488 tty2     Ss+  Oct27   0:00 /sbin/getty 38400 tty2
root      2355  0.0  0.1   3944   488 tty3     Ss+  Oct27   0:00 /sbin/getty 38400 tty3
root      2356  0.0  0.1   3944   488 tty6     Ss+  Oct27   0:00 /sbin/getty 38400 tty6
root      2418  0.0  0.2   3944   576 ?        Ss   Oct27   0:00 /usr/sbin/acpid -c /etc/acpi/events -s /var/run/acpid.socket
syslog    2452  0.0  0.2  12376   560 ?        Ss   Oct27   0:00 /sbin/syslogd -u syslog
root      2470  0.0  0.1   8204   460 ?        S    Oct27   0:00 /bin/dd bs 1 if /proc/kmsg of /var/run/klogd/kmsg
klog      2472  0.0  0.1   6612   468 ?        Ss   Oct27   0:00 /sbin/klogd -P /var/run/klogd/kmsg
103       2491  0.0  0.3  21388   944 ?        Ss   Oct27   0:00 /bin/dbus-daemon --system
lp        2700  0.0  0.1  12432   344 ?        Ss   Oct27   0:00 /usr/sbin/lpd -s
root      2761  0.0  0.2  66292   648 ?        Ss   Oct27   0:00 /usr/sbin/winbindd
root      2783  0.0  0.2  66292   552 ?        S    Oct27   0:00 /usr/sbin/winbindd
root      2791  0.0  1.2  41912  3028 ?        Ssl  Oct27   0:01 /usr/sbin/console-kit-daemon
avahi     2979  0.0  0.5  31884  1344 ?        Ss   Oct27   0:00 avahi-daemon: running [minibuntu.local]
avahi     2980  0.0  0.1  31764   436 ?        Ss   Oct27   0:00 avahi-daemon: chroot helper
daemon    3030  0.0  0.1  16524   432 ?        Ss   Oct27   0:00 /usr/sbin/atd
root      3055  0.0  0.3  19972   744 ?        Ss   Oct27   0:00 /usr/sbin/cron
root      3081  0.0  0.2   4024   636 ?        S    Oct27   0:00 /bin/sh /etc/rc2.d/S99rc.local start
root      3085  0.0  0.2   4024   556 ?        S    Oct27   0:00 /bin/sh -e /etc/rc.local
scott     3086  0.0  0.3  41904   952 ?        S    Oct27   0:00 su - scott -c startx
scott     3094  0.0  0.4  10864  1096 ?        S    Oct27   0:00 /bin/bash /usr/bin/startx
scott     3125  0.0  0.2  15384   732 ?        S    Oct27   0:00 xinit /etc/X11/xinit/xinitrc -- /etc/X11/xinit/xserverrc :0 -auth /tmp/serverauth.zhFytCmJHA
root      3129  0.0  7.8 113644 19372 tty7     Ss+  Oct27   0:04 /usr/bin/X11/X -nolisten tcp
scott     3285  0.0  1.1 147216  2776 ?        S    Oct27   0:00 x-session-manager
scott     3300  0.0  2.5  61232  6356 ?        S    Oct27   0:00 xterm
scott     3309  0.0  0.0      0     0 ?        Z    Oct27   0:00 [sh] <defunct>
scott     3312  0.0  0.2  35940   604 ?        Ss   Oct27   0:00 /usr/bin/ssh-agent /usr/bin/dbus-launch --exit-with-session x-session-manager
scott     3315  0.0  0.2  23824   608 ?        S    Oct27   0:00 /usr/bin/dbus-launch --exit-with-session x-session-manager
scott     3316  0.0  0.2  21256   616 ?        Ss   Oct27   0:00 //bin/dbus-daemon --fork --print-pid 5 --print-address 7 --session
scott     3317  0.0  1.3  20856  3316 pts/0    Ss   Oct27   0:00 bash
scott     3331  0.0  0.5  26536  1256 ?        S    Oct27   0:00 /usr/lib/xfconfd
scott     3343  0.0  3.9 146812  9572 ?        S    Oct27   0:02 xfwm4
scott     3344  0.0  0.9 121080  2432 ?        S    Oct27   0:00 xfsettingsd
scott     3346  0.0  1.3 132040  3228 ?        S    Oct27   0:00 xfce4-panel
scott     3348  0.0  1.3 155268  3204 ?        S    Oct27   0:00 Thunar --daemon
scott     3350  0.0  6.3 218876 15500 ?        S    Oct27   0:01 xfdesktop
scott     3365  0.0  1.2 154408  3112 ?        S    Oct27   0:00 xfce4-settings-helper
scott     3380  0.0  0.3  17544   888 ?        S    Oct27   0:00 /usr/lib/gamin/gam_server
105      11449  0.0  1.5  35392  3808 ?        Ss   Oct27   0:01 /usr/sbin/hald
root     11450  0.0  0.4  15816  1212 ?        S    Oct27   0:00 hald-runner
root     11481  0.0  0.8  28484  2032 ?        S    Oct27   0:00 hald-addon-input: Listening on /dev/input/event1 /dev/input/event0 /dev/input/event3
root     11544  0.0  0.8  28484  2044 ?        S    Oct27   0:01 hald-addon-storage: polling /dev/sr0 (every 2 sec)
root     11547  0.0  0.8  28484  2020 ?        S    Oct27   0:00 hald-addon-storage: no polling on /dev/fd0 because it is explicitly disabled
105      11552  0.0  0.8  32392  2016 ?        S    Oct27   0:00 hald-addon-acpi: listening on acpid socket /var/run/acpid.socket
root     11629  0.0  0.0      0     0 ?        S<   Oct27   0:00 [vmhgfs]
root     11647  0.0  0.0      0     0 ?        S<   Oct27   0:00 [vmmemctl]
root     11761  0.0  0.5  23112  1440 ?        Ss   Oct27   0:19 /usr/lib/vmware-tools/sbin64/vmware-guestd --background /var/run/vmware-guestd.pid
root     29894  0.0  0.2   6488   676 ?        Ss   12:36   0:00 dhclient3 -e IF_METRIC=100 -pf /var/run/dhclient.eth0.pid -lf /var/lib/dhcp3/dhclient.eth0.leases eth0
root     29960  0.0  0.8  18964  2020 pts/0    S+   12:37   0:00 -bash
root     30190  0.0  0.4  48940  1204 ?        Ss   12:39   0:00 /usr/sbin/sshd
root     30211  0.0  1.3  80804  3372 ?        Ss   12:39   0:00 sshd: scott [priv]
scott    30219  0.0  0.7  80804  1740 ?        S    12:39   0:00 sshd: scott@pts/1
scott    30235  0.0  1.4  20860  3672 pts/1    Ss   12:39   0:00 -bash
root     30268  0.0  0.8  18992  2040 pts/1    S    12:39   0:00 -bash
root     31641  2.0  0.4  15172  1136 pts/1    R+   14:00   0:00 ps aux
RUBY_HERE
  end
  
end