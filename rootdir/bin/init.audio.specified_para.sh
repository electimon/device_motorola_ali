#!/vendor/bin/sh

notice()
{
	echo "$*"
	echo "$scriptname: $*" > /dev/kmsg
}

path=/vendor/etc/acdbdata
device=common
# For ali retid carrier, use seprate parameter files.
if [ "`getprop ro.carrier`" == "retid" ]
then
	device=retid
fi
index=0
for file in $(ls $path/$device/); do
    setprop persist.vendor.audio.calfile$index $path/$device/$file
    index=$((index+1))
done
notice "carrier: [`getprop ro.carrier`], calfile6: [`getprop persist.audio.calfile6`]"
