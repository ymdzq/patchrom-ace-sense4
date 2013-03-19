#!/system/bin/sh
/system/xbin/virtuous_oc
# Kernel tweaks for MSN7x30 based devices (HTC Desire HD)

	echo "conservative" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "200000" > /sys/devices/system/cpu/cpu0/cpufreq/conservative/sampling_rate
	echo "90" > /sys/devices/system/cpu/cpu0/cpufreq/conservative/up_threshold
	echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "20000" > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
	echo "60" > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
	echo "30" > /sys/devices/system/cpu/cpufreq/ondemand/down_differential
  echo "1" > /sys/block/mmcblk1/queue/rotational
  echo "0" > /sys/block/mtdblock1/queue/rotational
  echo "0" > /sys/block/mtdblock2/queue/rotational
  echo "0" > /sys/block/mtdblock3/queue/rotational
  echo "0" > /sys/block/mtdblock4/queue/rotational
  echo "0" > /sys/block/mtdblock5/queue/rotational 
  sync


# Enable ZRAM compressed memory (kernel must support ZRAM feature!)
if [ -e /sys/block/zram0/disksize ] ; then
	$LOG -p i "Enabling compressed RAM functionality (ZRAM)"
	echo $((100*1024*1024)) > /sys/block/zram0/disksize
	busybox mkswap /dev/block/zram0
	busybox swapon /dev/block/zram0
fi

# Other kernel tweaks
	mount -t debugfs none /sys/kernel/debug
	echo "NO_NORMALIZED_SLEEPER" > /sys/kernel/debug/sched_features
	echo "NO_NEW_FAIR_SLEEPERS" > /sys/kernel/debug/sched_features
	umount /sys/kernel/debug
	echo "0" > /proc/sys/kernel/panic_on_oops
	echo "0" > /proc/sys/kernel/tainted

# Virtual Memory tweaks
	#echo "0" > /proc/sys/vm/swappiness (default is 60)
	#echo "70" > /proc/sys/vm/vfs_cache_pressure (default is 100)
	#echo "3000" > /proc/sys/vm/dirty_expire_centisecs (default is 200)
	#echo "1000" > /proc/sys/vm/dirty_writeback_centisecs (default is 500)
	echo "20" > /proc/sys/vm/dirty_ratio
	echo "5" > /proc/sys/vm/dirty_background_ratio
	echo "1" > /proc/sys/vm/oom_kill_allocating_task
	echo "4096" > /proc/sys/vm/min_free_kbytes
	echo "0" > /proc/sys/vm/panic_on_oom

# Network tweaks
	echo "1" > /proc/sys/net/ipv4/tcp_tw_reuse
	echo "1" > /proc/sys/net/ipv4/tcp_sack
	echo "1" > /proc/sys/net/ipv4/tcp_tw_recycle
	echo "1" > /proc/sys/net/ipv4/tcp_window_scaling
	echo "5" > /proc/sys/net/ipv4/tcp_keepalive_probes
	echo "30" > /proc/sys/net/ipv4/tcp_keepalive_intvl
	echo "30" > /proc/sys/net/ipv4/tcp_fin_timeout

# Increase readahead buffers on MMC devices
	echo "1024" > /sys/block/mmcblk0/bdi/read_ahead_kb
	echo "1024" > /sys/block/mmcblk1/bdi/read_ahead_kb
	
SLEEP=120

if [ -e /data/.battery-calibrated ] ; then
        exit 0
fi

(
while : ; do
        LEVEL=$(cat /sys/class/power_supply/battery/capacity)
        CUR=$(cat /sys/class/power_supply/battery/batt_current)
        if [ "$LEVEL" == "100" ] && [ "$CUR" == "0" ] ; then
                log -p i -t battery-calibration "*** LEVEL: $LEVEL CUR: $CUR***: calibrating..."
                rm -f /data/system/batterystats.bin
                touch /data/.battery-calibrated
                exit 0
        fi
        # log -p i -t battery-calibration "*** LEVEL: $LEVEL CUR: $CUR ***: sleeping for $SLEEP s..."
        sleep $SLEEP
done
) &

sysctl -p

sync;
