#!/bin/bash

echo "	#Architecture: $(uname -a)
	#CPU physical : $(grep physical.id /proc/cpuinfo | sort -u | wc -l)
	#vCPU : $(grep processor /proc/cpuinfo | wc -l)
	#Memory Usage: $(free -m | grep Mem | awk '{printf("%d/%dMB (%.2f%%)\n", $3, $2, $3/$2*100)}')
	#Disk Usage: $(df --total -h | grep total | awk '{printf("%s/%s (%d%%)\n", $3, $2, $5)}')
	#CPU load: $(top -bn 1 | awk -F ',' 'NR==3{print $4}' | tr -d ' id' | awk '{printf("%.1f%%", 100-$1)}')
	#Last boot: $(who -b | awk '{print $3" "$4}')
	#LVM use: $(if [ $(lsblk | awk '{print $6}' | wc -l) -eq 0 ]; then echo no; else echo yes; fi)
	#Connections TCP : $(netstat | grep tcp | grep ESTABLISHED | wc -l) ESTABLISHED
	#User log: $(who | wc -l)
	#Network: IP $(ip a | grep inet | grep enp0s3 | awk '{print $2}' | awk -F '/' '{print $1}') ($(ip link show dev enp0s3 | grep link | awk '{print $2}'))
	#Sudo : $(sudo cat /var/log/sudo/sudo_log | grep COMMAND | wc -l) cmd
	" | wall


