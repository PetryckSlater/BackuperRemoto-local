  #!/bin/bash
  
  echo "---------------------------------------------------"
	echo -e "Instalação? Caso deseje instalar as pastas digite 4 caso não escolha entre: \n1)Cria a pasta config \n2)Cria a pasta save_backup \n3)Arquivo log criado "
	echo "---------------------------------------------------"
	read b_o
	#Criar o config
	if [ $b_o -eq 1 ]; then
	echo "Arquivo sendo removido residual..."
	rm -rf config
	sleep 3
	echo "Arquivo config esta sendo criado..."
	mkdir config
	echo "Arquivo restaurado com sucessor"
	sleep 3
	#criar save_backup
	elif [ $b_o -eq 2 ]
	then
	echo "Arquivo sendo removido residual..."
	rm -rf save_backup
	sleep 3
	mkdir save_backup
	echo "Arquivo save_backup esta sendo criado..."
	sleep 3
	echo "Arquivo restaurado com sucessor"
	#criar log
	elif [ $b_o -eq 3 ]
	then
	echo "Arquivo sendo removido residual..."
	rm -f log.txt
	sleep 3
	touch log.txt
	echo "Arquivo log esta sendo criado..."
	sleep 3
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
	#sair
	else 
	return 0
	fi
