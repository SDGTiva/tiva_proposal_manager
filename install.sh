#! /bin/sh

create_directories()
{
	mkdir -p /usr/share/tiva/proposals/actions
	chmod a+w /usr/share/tiva/proposals/actions
	mkdir -p /usr/share/tiva/proposals/news
	chmod a+w /usr/share/tiva/proposals/news
	mkdir -p /usr/share/tiva/acts/log
}

create_bins()
{
	cp sbin/tivapmd /usr/sbin/tivapmd
}

create_groups()
{
	addgroup tiva_manager
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
	create_groups
	create_scripts
}

do_install
