   while :
   do
   if [[ !  -f "/bin/zip" ]] ||[[ !  -f "/bin/git" ]] || [[ ! -f "/bin/unzip" ]] || [[ ! -f "/bin/node" ]] || [[ ! -f "/bin/python" ]] || [[ ! -f "/bin/figlet" ]] #4 
   then
   apt-get install git
   apt-get install nodejs
   apt-get install python
   apt-git install figlet
   apt-get install unzip
   apt-get install zip
   fi
   clear
   N=0
   setterm -foreground red
   echo  
   echo
   figlet Albion Desenvolvedor
   echo 
   echo 
   echo
   echo  
   setterm -foreground red 
   echo  "     menu de opcões"
   echo
   setterm -foreground default
  #setterm -foreground blue
   echo  "0  - sair"
   echo  "1  - Instalar o chat-bot Albion"
   echo  "2  - Desintalar o chat-bot Albion"
   echo  "3  - informações"
   echo  "4  - Reconectar ( ler QR Novamente ) "
   echo  "5  - FAZER BACKUP"
   echo  "6  - RESTAURÁ BACKUP"
   echo  "7  - Deletar BACKUP"
   echo  "8  - Corrigir error"
   echo
    setterm -foreground red 
   read -p "Informe uma opção valida entre 0 e 8 : " pergunta
   setterm -foreground default
if [ "$pergunta" = "0" ]  #f
then
N=1
clear 
break
fi 
if [ "$pergunta" = "1" ] #f
then
N=1

#INSTALAÇÃO ANDROID

cd $HOME
if [[ -d "wb2" ]] 
then
echo  "Não será possivel instalar o chat-bot use a opção 2"
break
fi #3
git clone https://github.com/arthur-vinicios/wb2.git
cd wb2
unzip Albion.zip
cd Albion
bash install.sh
echo cd $HOME/wb2>>/data/data/com.termux/files/usr/etc/bash.bashrc
echo bash ini.sh>>/data/data/com.termux/files/usr/etc/bash.bashrc
fi #INSTALA
if [ "$pergunta" = "2" ]  #f
then
N=1

cd $HOME
if [[ -d "wb2" ]]
then
rm -rf wb2
echo "ARQUIVO DELETADO"
sleep 2
else
 echo "ARQUIVO NÃO ENCONTRADO, NÃO FOI POSSIVEL DELETAR "
sleep 2
fi
fi #2



if [ "$pergunta" = "3" ] # NÃO INICIAR JUNTO
then
N=1
setterm -foreground green
echo
echo "wb2 versão: 1.8 
Criada para chat-bot Albion 
Versão do chat-bot: 0.1.62 
Contato: +55 (16) 9 9946-9735"
echo
echo
sleep 5
fi # 4
if [ "$pergunta" = "4" ] #RECONECTAR
then
N=1

cd $HOME
if [[ -d "wb2" ]]
then
cd wb2
rm -rf Albion.json
else
  echo  "Não há instalação do Chat-bot Albion aqui." 
fi
fi #5
if [ "$pergunta" = "5" ] #backup
then
N=1
cd $HOME
if [[  -f "Backup_of_bot/Albion_backup.zip" ]]
then
echo "infelizmente não é possivel fazer backup, apague o ultimo backup usando o opção 7"
sleep 5
fi
clear
setterm -foreground green
echo  "Backup iniciado"
setterm -foreground default
zip Albion_backup.zip *
mv Albion_backup.zip $HOME/Backup_of_bot
if [[  -f "Backup_of_bot/Albion_backup.zip" ]]
then
echo "Backup feito com sucesso"
sleep 5
fi
fi #7
if [ "$pergunta" = "6" ] #restaurar
then
N=1
cd $HOME
if [[  -f "Backup_of_bot/Albion_backup.zip" ]]
then
echo "RSTAURANDO"
cd Backup_of_bot
mv Albion_backup.zip $HOME/wb2
cd $HOME/wb2
unzip  Albion_backup.zip
fi
fi #8
if [ "$pergunta" = "7" ] #deletar
then
N=1
cd $HOME
if [[  -f "Backup_of_bot/Albion_backup.zip" ]]
then
cd $HOME/Backup_of_bot
rm -rf Albion_backup.zip
else
echo  "Backup não encontrado"
fi

fi #9
if [ "$pergunta" = "8" ] #deletar
then
N=1
apt install p7zip-full
cd $HOME
cd $HOME/wb2
git clone https://github.com/arthur-vinicios/error.git
cd error
mv node_modules.7z  $HOME/wb2
cd $HOME/wb2
7z x node_modules.7z
rm -rf node_modules.7z
rm -rf error
echo "Correção aplicada"

fi
if [ ! "$N" ] || [ "$N" ] 
then
if [ "$N" != "1" ]
then
clear
echo "O Systema Não reconhece esse comando"
sleep 6
fi
fi
done


