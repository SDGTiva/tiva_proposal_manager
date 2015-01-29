#! /bin/sh

create_directories()
{
	mkdir -p /usr/share/tiva/proposals/actions
	mkdir -p /usr/share/tiva/proposals/news
	chmod a+w /usr/share/tiva/proposals/news
	mkdir -p /usr/share/tiva/acts
}

create_bins()
{
	cp sbin/tivapmd /usr/sbin/tivapmd
}

do_install()
{
	create_directories
	create_bins
}

do_install
