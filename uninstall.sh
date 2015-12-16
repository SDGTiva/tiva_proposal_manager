#! /bin/sh

remove_bins(){
	rm /usr/sbin/tivapmd
}

remove_scripts(){
	rm /etc/init.d/tivapmd
	update-rc.d tivapmd remove
}

do_uninstall(){
	remove_bins
	remove_scripts
}

do_uninstall
