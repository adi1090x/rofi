#!/usr/bin/env bash

mem_info=$(</proc/meminfo)
		mem_info=$(echo $(echo $(mem_info=${mem_info// /}; echo ${mem_info//kB/})))
		for m in $mem_info; do
			case ${m//:*} in
				"MemTotal") usedmem=$((usedmem+=${m//*:})); totalmem=${m//*:} ;;
				"ShMem") usedmem=$((usedmem+=${m//*:})) ;;
				"MemFree"|"Buffers"|"Cached"|"SReclaimable") usedmem=$((usedmem-=${m//*:})) ;;
			esac
		done
		usedmem=$((usedmem / 1024))
		totalmem=$((totalmem / 1024))
		mem="${usedmem}MB / ${totalmem}MB"

## Complete summary
	if  [[ $1 = "-fi" ]]; then
    echo "  $mem"
	elif [[ $1 = "-f" ]]; then
    echo "$mem"
    
## Only used RAM
	elif  [[ $1 = "-i" ]]; then
    echo "  $usedmem MB"
	else
    echo "$usedmem MB"
	fi
