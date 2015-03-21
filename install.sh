#! /bin/sh

#################################################################################
#  SDGTive Script Desenvolvido por Computiva S.A - https://github.com/SDGTiva   #
#################################################################################
clear
	echo "Olá $USER, este script vai instalar o SDGTive Manager no seu computador 
        (Debian, Ubuntu ou Linux Mint) -- Pressione Enter para iniciar --"
	read key
	if [ $key == $key ]
		then
			echo "Vamos prosseguir com a instalação do SDGTiva..."	
			sleep 2
			echo "Digite a sua senha de usuário"
			
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
clear
echo "A instalação foi concluída!"
fi
