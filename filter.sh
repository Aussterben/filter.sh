#!/bin/bash

##############################################
#            Script By Aussterben            #
##############################################

# Recuerda dar permisos de ejecución con "chmod +x filter.sh"

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

# Lo primero que se ve tras ejecutar el script

clear
echo -e """
---------------------------------------------------------------------------------
${redColour}
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⣀⣽⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠈⣿⠁⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⣋⡇⠀⠀⠀⠀⠀⢀⠟⡄⠀⠀⠀⠀⠀⣾⣯⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢠⠴⡄⠀⠀⠀⠀⠀⠀⠈⣿⡀⠀⠀⠀⠀⠀⡸⠀⢧⠀⠀⠀⠀⠀⢀⣏⠁⠀⠀⠀⠀⠀⠀⣠⣦⡄
⠘⠓⠻⣤⡀⠀⠀⠀⠀⠀⡏⢣⠀⠀⠀⠀⢀⠇⠀⠸⡄⠀⠀⠀⠀⡜⢸⠀⠀⠀⠀⠀⠀⣠⡾⠟⠃
⠀⠀⠀⢣⠙⠦⡀⠀⠀⢠⠃⠈⢇⠀⠀⠀⡞⠀⠀⠀⢣⠀⠀⠀⡼⠁⢸⡄⠀⠀⢀⡴⠊⡞⠀⠀⠀
⠀⠀⠀⠈⡆⠀⠙⢦⠀⠸⠀⠀⠈⢆⠀⢰⠁⠀⠀⠀⠈⣇⠀⡰⠁⠀⠈⣇⠀⡰⠋⠀⢰⠀⠀⠀⠀
⠀⠀⠀⠀⢁⠀⠀⠀⠱⡇⠀⠀⠀⠈⢦⠇⠀⠀⠀⠀⠀⠘⡶⠁⠀⠀⠀⢸⠞⠀⠀⠀⡾⠀⠀⠀⠀
⠀⠀⠀⠀⢸⠀⠀⢀⣀⣀⣀⣤⣤⣤⣴⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣀⣀⣀⣀⠀⠀⠀⡇⠀⠀⠀⠀
⠀⠀⠀⠀⣼⠶⢿⣟⠛⠉⠉⢩⡟⢧⠀⠀⠀⣴⠛⣦⠀⠀⢠⠞⢫⡉⠉⠙⢛⡟⠿⠶⡷⠀⠀⠀⠀
⠀⠀⠀⠀⠹⡄⠸⣽⣃⣀⣀⣈⣿⣯⣤⣤⣤⣬⣾⣥⣤⣤⣬⣷⣯⣀⣀⣀⣻⡼⠀⢰⠃⠀⠀⠀⠀
⠀⠀⠀⠀⢼⠗⠛⠋⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠉⠛⠛⢻⡦⠀⠀⠀⠀
⠀⠀⠀⠀⠈⠉⠑⠒⠒⠂⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠒⠒⠒⠊⠉⠁
${endColour}
"""
echo -e "\n${redColour}[+]${endColour}${grayColour} Script by Aussterben${endColour}\n"

# Cancelar procesos
ctrl_c(){
  echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Cancelando Procesos...${endColour}
  sleep 0.5
  echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Procesos Cancelados!${endColour}
  tput cnorm; exit 1
}

# Llama a la función "ctrl_c"
trap ctrl_c SIGINT

read -p "[+] ¿Es un archivo? (S/n): " option
echo -e ""

if [ $option == "S" ] || [ $option == "s" ]; then
  read -p "[+] Escribe el nombre del archivo que deseas buscar, Ej: '/etc/passwd': " file
  echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los archivo(s): ${endColour}\n"
  sleep 0.5
  find / -type f -name $file 2>/dev/null
  if [ -r $file ]; then
    cat $file
  fi
  echo -e "\n${redColour}[+] Version: 1.0.0${endColour}"
  echo -e "\n---------------------------------------------------------------------------------"
  exit 0
fi

if [ $option == "N" ] || [ $option == "n" ]; then
  read -p "[+] ¿Es un directorio? (S/n): " option2
  if [ $option2 == "S" ] || [ $option2 == "s" ]; then
    read -p "[+] Escribe el nombre del directorio que deseas buscar, Ej: 'Desktop': " directorio
    echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el directorio: ${endColour}\n"
    sleep 0.5
    find / -type d -name $directorio 2>/dev/null
    echo -e "\n${redColour}[+] Version 1.0.0${endColour}"
    echo -e "\n---------------------------------------------------------------------------------"
    exit 0
  elif [ $option2 == "N" ] || [ $option2 == "n" ]; then
    echo -e "\n${redColour}[!]${grayColour}${grayColour} Operación no realizada${endColour}"
    echo -e "\n${redColour}[+] Version: 1.0.0${endColour}"
    echo -e "\n---------------------------------------------------------------------------------"
    exit 0
  fi 
fi
