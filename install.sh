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

do_install()
{
	create_directories
	create_bins
	create_groups
}

do_install
