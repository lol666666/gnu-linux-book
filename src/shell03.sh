#!/bin/bash

# Written By: LavenLiu
# Date: 2014-02-13
# Mail:  air.man.six@gmail.com

# 把服务器IP地址的最后一个字段存放到一个数组中
server_list=(90 110 225 231 233 235 249 251 252)

# 计算服务器数量
how_many=$(( ${#server_list[@]} - 1 ))

myloop=0

while [ ${myloop} -lt ${how_many} ] ;
do
	ping -c1 192.168.18.${server_list[${myloop}]} &> /dev/null
	if [ "$?" -eq 0 ] ; then
		echo "Server 192.168.18.${server_list[${myloop}]} is alive"
	else
		echo "Server 18.${server_list[${myloop}]} is down! Contact the adminstrator..."
	fi
	let "myloop = ${myloop} + 1"
done
