Tiva Proposal Manager
=====================

0. OBJECTIVE

	0. To manage user proposals to execute scripts with root access.

0. INSTALLING

	0. Run the "install.sh" script.

		>  # ./install.sh

0. RUNNING

	0. Any file putted in "/usr/share/tiva/proposals/news" is treated as a
	proposal.

		> $ cp my_proposal /usr/share/tiva/proposals/news

	0. Any user in "tiva_manager" group can check a proposal.

		0. Take a look to the proposal.

			> $ cat /usr/share/tiva/proposals/[proposal_id]

		0. Approve it if you agree.

			> $ touch > /usr/share/tiva/proposals/actions/approve_[proposal_id]

	0. When all users in "tiva_manager" group approved a proposal, it is
	executed.

0. UNINSTALLING
