function usb_montage

{
	find / proc/scsi/ -path '/proc/scsi/usb_storage*' -type f | xargs grep -l
'attached: oui'
}
fucntion usb_demontage 
{
	echo $1 | awk -F"[-/]" n=$(NF-1);
	print "/dev/sd" substr("abcdefghijklmnopqrstuvwxyz", n+1, 1)}
}
