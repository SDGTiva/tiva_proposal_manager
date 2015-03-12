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

remove_scripts()
{
	rm /etc/init.d/tivapmd
	update-rc.d tivapmd remove
}

do_uninstall()
{
	remove_directories
	remove_bins
	remove_groups
	remove_scripts
}

do_uninstall
