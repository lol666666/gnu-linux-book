#!/bin/bash
# Written By: LavenLiu
# Date: 2013-01-08
def_colors () {
  # Attributes
  normal='\033[0m';bold='\033[1m';dim='\033[2m';under='\033[4m'
  italic='033[3m'; notalic='\033[23m'; blink='\033[5m';
  reverse='\033[7m'; conceal='\033[8m'; nobold='\033[22m';
  nounder='\033[24m'; noblink='\033[25m'
  
  # Foreground
  black='\033[30m'; red='\033[31m'; green='\033[32m'; yellow='\033[33m'
  blue='\033[34m'; magenta='\033[35m'; cyan='\033[36m'; white='\033[37m'

  # Background
  bblack='\033[40m'; bred='\033[41m'
  bgreen='\033[42m'; byellow='\033[43m'
  bblue='\033[44m'; bmagenta='\033[45m'
  bcyan='\033[46m'; bwhite='\033[47m'
}

def_colors
clear
hostname=`cat /proc/sys/kernel/hostname`
echo
echo -e "System Report for $white$hostname$normal on `date`"
echo
processor=`grep 'model name' /proc/cpuinfo | cut -d: -f2 | cut -c2-`
nisdomain=`cat /proc/sys/kernel/domainname`
cache=`grep 'cache size' /proc/cpuinfo | awk '{print $4,$5}'`
bogomips=`grep 'bogomips' /proc/cpuinfo | awk '{print $3}'`
vendor=`grep 'vendor_id' /proc/cpuinfo`
echo -e "Hostname: $white$hostname$normal NIS Domain: $white$nisdomain$normal"
if [ "`echo $vedner | grep -i intel`" ]
then
   cpu_color=$blue
elif [ "`echo $vender | grep -i amd`" ]
then
   cpu_color=$green
fi

echo -e "Processor: $cpu_color$processor$normal"
echo -e "Running at $white$bogomips$normal bogomips with \
$white$cache$normal cache"
echo
osrelease=`cat /proc/sys/kernel/osrelease`
rev=`cat /proc/sys/kernel/version | awk '{print $1}'`
da_date=`cat /proc/sys/kernel/version | cut -d\  -f2-`
upsec=`awk '{print $1}' /proc/uptime`
uptime=`echo "scale=2;$upsec/86400" | bc`
echo -e "OS Type: $white$ostype$normal Kernel: \
$white$osrelease$normal"
echo -e "Kernel Compile $white$rev$normal on \
$white$da_date$normal"
echo -e "Uptime: $magenta$uptime$normal days"
set `grep MemTotal /proc/meminfo`
tot_mem=$2; tot_mem_unit=$3
set 'grep MemFree /proc/meminfo'
free_mem=$2; fre_mem_unit=$3
perc_mem_used=$((100-(100*free_mem/tot_mem)))
set `grep SwapTotal /proc/meminfo`
tot_swap=$2; tot_swap_unit=$3
perc_swap_used=$((100-(100*free_swap/tot_swap)))
if [ $perc_mem_used -lt 80 ]
then
   mem_color=$green
elif [ $perc_mem_used -ge 80 -a $perc_mem_used -lt 90 ]
then
   mem_color=$yellow
else
   mem_color=$red
fi
if [ $perc_swap_used -lt 80 ]
then
   swap_color=$green
elif [ $perc_swap_used -ge 80 -a $perc_swap_used -lt 90 ]
then
   swap_color=$yellow
else
   swap_color=$red
fi

echo -e "Memory: $white$tot_mem$normal $tot_mem_unit Free: $white$free_mem$normal \
$fre_mem_unit $Used: $mem_color$perc_mem_used$normal"
echo -e "Swap: $white$tot_swap$normal $tot_swap_unit Free: $white$free_swap$normal \
$fre_swap_unit $Used: $swap_color$perc_swap_used$normal"
echo
set `cat /proc/loadavg`
one_min=$1
five_min=$2
fifteen_min=$3
echo -n "Load Avderage:"
for ave in $one_min $five_min $fifteen_min
do
   int_ave=`echo $ave | cut -d. -f1`
   if [ $int_ave -lt 1 ] ; then
      echo -en "$green$ave$normal "
   elif [ $int_ave -ge 1 -a $int_ave -lt 5 ] ; then
      echo -en "$yellow$ave$normal "
   else
      echo -en "$red$ave$normal"
   fi
done
echo
running=0; sleeping=0; stopped=0; zombie=0
for pid in /proc/[1-9]*
do
   procs=$((procs+1))
   stat=`awk '{print $3}' $pid/stat`
   case $stat in
   R) running=$((running+1));;
   S) sleeping=$((sleeping+1));;
   T) stopped=$((stopped+1));;
   Z) zombie=$((zombie+1));;
   esac
done
echo -n "Process Count: "
echo -e "$white$process$normal total $white$running$normal running \
$white$sleep$normal sleeping $white$stopped$normal stopped \
$white$zombie$normal zombie"
echo
