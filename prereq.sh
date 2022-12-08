  #!/bin/bash
  
  echo "---------------------------------------------------"
	echo -e "Instalação? Caso deseje instalar as pastas digite 4 caso não escolha entre: \n1)Cria a pasta config \n2)Cria a pasta save_backup \n3)Arquivo log criado \n4) criar Pastas padrão \n5) instalar ssh e dependecias(Executar em modo ROOT)"
	echo "---------------------------------------------------"
	read b_o
	#Criar o config
	if [ $b_o -eq 1 ]; then
	echo "Arquivo sendo removido residual..."
	rm -rf config
	echo "Arquivo config esta sendo criado..."
	mkdir config
	echo "Arquivo restaurado com sucessor"
	#criar save_backup
	elif [ $b_o -eq 2 ]
	then
	echo "Arquivo sendo removido residual..."
	rm -rf save_backup
	mkdir save_backup
	echo "Arquivo save_backup esta sendo criado..."
	echo "Arquivo restaurado com sucessor"
	#criar log
	elif [ $b_o -eq 3 ]
	then
	echo "Arquivo sendo removido residual..."
	rm -f log.txt
	touch log.txt
	echo "Arquivo log esta sendo criado..."
	echo "Arquivo Criado com sucessor"
	#Instalador das pastas
	elif [ $b_o -eq 4 ]
	then
	echo "Construindo pastas padrão!"
	mkdir config
	echo "pasta config criada.."
	mkdir save_backup
	echo "pasta save_backup criada.."
	touch config.txt
	echo "arquivo config criado.."
	mv config.txt config
	echo "Arquivo log.txt criado"
	touch log.txt
	elif [ $b_o -eq 5 ]
	then
	echo " Instalação do SSH e dependencias"
	echo "Execute em modo Root!"
	apt install openssh-server
	apt install openssh-client
	systemctl start sshd
	echo "executado com sucesso!"
	
	#sair
	else 
	return 0
	fi
