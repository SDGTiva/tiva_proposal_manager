Tiva Proposal Manager v1.0.1
============================

0. OBJECTIVE

	0. To manage user proposals to execute scripts with root access.

0. INSTALLING

	0. Install orgdoc dependency.

		> https://github.com/Computiva/orgdoc

	0. Run the "install.sh" script.

		>  # ./install.sh

0. RUNNING

	0. Put a script in "/usr/share/tiva/proposals".

	0. Sign the script using orgdoc.

		> $ odsign script.sh

	0. When everyone signed the script, it is runned with root privileges.

0. UNINSTALLING

	0. Run the "uninstall.sh" script.

		>  # ./uninstall.sh
