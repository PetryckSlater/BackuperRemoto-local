#Aviso! Alterar ipp e user para o da maquina a ser ultilizada colocar ambos em str

#!/bin/bash
	echo "---------------------------------------------------"
	echo "Aguardando... "
	loca="/Documentos"
	echo "---------------------------------------------------"
	echo "A pasta sera [ $loca ] "
	#Ip
	echo "---------------------------------------------------"
	echo "O ip: "
	ipp=$(hostname -I)
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
	user="ifpb"
	echo "usuario $user configurado..."
	nome=$user$ipp
	mkdir $user$ipp
	echo "---------------------------------------------------"

	#definidor
	echo "---------------------------------------------------"
	echo "Arquivo Configs criadas"
	echo "$user $pass $ipp save_backup/$loca" >> config/configs.txt
	arb=$(pwd)
	echo "---------------------------------------------------"

	#Enviar as paginas
	echo "A pasta remota sera: $arb "
	scp -r $user@$ipp:$loca $arb/$nome
	echo "$arb/$nome"
	date_format=$(date "+%d-%m-%Y")
	arquivo_final=$user-$date_format

	#comprimidor
	echo "comprimindo..." 
	echo "-"
	echo "--"
	echo "---"
	echo "----"
	tar -cvzf $arquivo_final.tgz $nome
	mv $arquivo_final.tgz save_backup
	echo "---------------------------------------------------"
	echo "arquivo $arquivo_final movido."
	echo "---------------------------------------------------"
	ls -lh save_backup/
	rm -rf $nome
