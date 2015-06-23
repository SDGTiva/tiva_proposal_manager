#! /bin/sh

create_directories()
{
	mkdir -p /usr/share/tiva/proposals/pubkeys
	mkdir -p /usr/share/tiva/proposals/signatures
	chmod -R a+wt /usr/share/tiva/proposals
	mkdir -p /usr/share/tiva/acts/log
}

create_bins()
{
	cp sbin/tivapmd /usr/sbin/tivapmd
}

create_scripts()
{
	cp init.d/tivapmd /etc/init.d/tivapmd
	update-rc.d tivapmd defaults
}

do_install()
{
	create_directories
	create_bins
	create_scripts
}

do_install
