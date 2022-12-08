#Aviso! Alterar ipp e user para o da maquina a ser ultilizada colocar ambos em str

#!/bin/bash
	echo "---------------------------------------------------"
	echo "Aguardando... "
	loca="/home/Documentos"
	echo "---------------------------------------------------"
	echo "A pasta sera [ $loca ] "
	#Ip
	echo "---------------------------------------------------"
	echo "O ip: "
	ipp="192.168.1.12"
	ping -c 1 $ipp
	echo "O ip selecionado foi: $ipp"
	echo "---------------------------------------------------"
	
	#senha
	#echo "---------------------------------------------------"
	#echo "Digite sua senha: "
	#read -s pass
	#echo " Não vacile! "
	#echo "---------------------------------------------------"

	#user
	echo "---------------------------------------------------"
	echo "nome do usuario: "
	user="aluno"
	echo "usuario $user configurado..."
	nome=$user$ipp
	mkdir $user$ipp
	echo "---------------------------------------------------"

	#definidor
	echo "---------------------------------------------------"
	echo "Arquivo Configs criadas"
	echo "$user $ipp save_backup/$loca" >> config/configs.txt
	arb=$(pwd)
	echo "---------------------------------------------------"

	#Enviar as paginas
	echo "A pasta remota sera: $arb "
	sshpass -p "ifpb" scp -r $user@$ipp:$loca $arb/$nome
	echo "$arb/$nome"
	date_format=$(date "+%d-%m-%Y")
	arquivo_final=$user-$date_format

	#comprimidor
	echo "comprimindo..." 
	tar -cvzf $arquivo_final.tgz $nome
	mv $arquivo_final.tgz save_backup
	echo "---------------------------------------------------"
	echo "arquivo $arquivo_final movido."
	echo "---------------------------------------------------"
	ls -lh save_backup/
	rm -rf $nome
