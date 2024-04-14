stress --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 0.98;}' < /proc/meminfo)k --vm-keep -m 1
