#! /bin/sh

remove_directories()
{
	rm -rf /usr/share/tiva
}

remove_bins()
{
	rm /usr/sbin/tivapmd
}

remove_groups()
{
	delgroup tiva_manager
}

do_uninstall()
{
	remove_directories
	remove_bins
	remove_groups
}

do_uninstall
