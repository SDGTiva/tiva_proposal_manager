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

create_webobjects()
{
	mkdir -p /usr/share/tiva/webobjects
	cp -R webobjects/proposals /usr/share/tiva/webobjects/proposals
	cp -R webobjects/acts /usr/share/tiva/webobjects/acts
}

do_install()
{
	create_directories
	create_bins
	create_scripts
	create_webobjects
}

do_install
