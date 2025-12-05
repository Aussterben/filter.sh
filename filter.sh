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

opciones(){
  case $1 in 
    -f)
      read -p "[+] Escribe el nombre del archivo que deseas buscar, Ej: '/etc/passwd': " file
      echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los archivo(s): ${endColour}\n"
      sleep 0.5
      find / -type f -iname *$file* 2>/dev/null
        if [ -r $file ]; then
          cat $file
        fi
      echo -e "\n${redColour}[+] Version: 3.0${endColour}"
      exit 0
      ;;
    -d)
      read -p "[+] Escribe el nombre del directorio que deseas buscar, Ej: 'Desktop': " directorio
      echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los directorio(s): ${endColour}\n"
      sleep 0.5
      find / -type d -iname *$directorio* 2>/dev/null
      echo -e "\n${redColour}[+] Version 3.0${endColour}"
      exit 0
      ;;
    -p)
      read -p "[+] Escribe el permiso del archivo o directorio, ej (755): " perms 
      echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los archivo(s) o directorio(s): ${endColour}\n"
      sleep 0.5
      find / -perm $perms 2>/dev/null
      echo -e "\n${redColour}[+] Version 3.0"
      exit 0
      ;;
    -pf)
      read -p "[+] Escribe el permiso del archivo, ej (755): " perm
      read -p "[+] Escribe el nombre del archivo, ej (/etc/passwd): " name2
      echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los archivo(s):${endColour}\n"
      sleep 0.5
      find / -type f -perm $perm -iname *$name2* 2>/dev/null
      echo -e "\n${redColour}[+] Version 3.0${endColour}"
      exit 0
      ;;
    -pd)
      read -p "[+] Escribe el nombre del permiso, ej (755): " perm_directory
      read -p "[+] Escribe el nombre del directorio, ej (Desktop): " perm_directory_name
      echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los directorio(s):${endColour}\n"
      sleep 0.5
      find / -type d -perm $perm_directory -iname *$perm_directory_name* 2>/dev/null
      echo -e "\n${redColour}[+] Version 3.0${endColour}"
      exit 0
      ;;
    -g)
      read -p "[+] Escribe el nombre del grupo, ej (root): " group
      echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los directorios(s) o archivo(s):${endColour}\n"
      sleep 0.5
      find / -group $group 2>/dev/null
      echo -e "\n${redColour}[+] Version 3.0${endColour}"
      exit 0 
      ;;
    -gd)
      read -p "[+] Escribe el nombre del grupo, ej (root): " group_directory
      read -p "[+] Escribe el nombre del directorio, ej (Desktop): " directory_group
      echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los directorios(s):${endColour}\n"
      sleep 0.5
      find / -group $group_directory -type d -iname *$directory_group* 2>/dev/null
      echo -e "\n${redColour}[+] Version 3.0${endColour}"
      exit 0
      ;;
    -gf)
      read -p "[+] Escribe el nombre del grupo, ej (root): " group_file
      read -p "[+] Escribe el nombre del archivo, ej (/etc/passwd): " file_group
      echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los archivo(s):${endColour}\n"
      find / -group $group_file -type f -iname *file_group* 2>/dev/null
      echo -e "\n${redColour}[+] Version 3.0${endColour}"
      exit 0 
      ;;
    -u)
      read -p "[+] Escribe el nombre del usuario, ej (root): " user
      echo -e "\n${yellowColour}[+]${endColour}${grayColour} Mostrando el/los archivo(s) y/o directorio(s):${endColour}\n"
      find / -user $user 2>/dev/null
      echo -e "\n${redColour}[+] Version 3.0${endColour}"
      exit 0 
      ;;
    *)
      echo -e "${yellowColour}[+]${endColour}${grayColour} Panel de Uso:${endColour}"
      echo -e "\n\t${blueColour}-f)${endColour}${grayColour} Te ayuda a buscar archivos y coincidencias"
      echo -e "\t${blueColour}-d)${endColour}${grayColour} Te ayuda a buscar por directorios y coincidencias${endColour}"
      echo -e "\t${blueColour}-pf)${endColour}${grayColour} Te ayuda a buscar por permisos, nombre y coincidencias"
      echo -e "\t${blueColour}-pd)${endColour}${grayColour} Te ayuda a buscar por permisos, directorios y coincidencias"
      echo -e "\t${blueColour}-p)${endColour}${grayColour} Te ayuda a buscar por permisos"
      echo -e "\t${blueColour}-u)${endColour}${grayColour} Te ayuda a buscar por usuarios"
      echo -e "\t${blueColour}-g)${endColour}${grayColour} Te ayuda a buscar por grupos"
      echo -e "\t${blueColour}-gd)${endColour}${grayColour} Te ayuda a buscar por grupos y directorios"
      echo -e "\t${blueColour}-gf)${endColour}${grayColour} Te ayuda a buscar por grupos y archivos"
      echo -e "\n${redColour}[+] Version 3.0${endColour}"
  esac
}

opciones $1
