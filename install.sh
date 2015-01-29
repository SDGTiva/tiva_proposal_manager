#! /bin/sh

create_directories()
{
	mkdir -p /usr/share/tiva/proposals/actions
	chmod a+w /usr/share/tiva/proposals
	mkdir -p /usr/share/tiva/acts
}

do_install()
{
	create_directories
}

do_install
