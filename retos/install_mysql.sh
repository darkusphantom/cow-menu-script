#!/bin/bash

# Instalar mysql
install_mysql() {
    sudo apt-get update
    read -s -p "Escribe tu contraseña: " passwordSudo
    echo "$passwordSudo" | sudo -S apt update
    echo "$passwordSudo" | sudo -S apt autoremove
    echo "$passwordSudo" | sudo -S apt install mysql-server
    sleep 2
    mysql --version
}

# Instalar mysql-workbench
install_mysql_workbench(){
    echo "Quieres instalar mysql-workbench?"
    sudo snap install mysql-workbench-community
}

# Configurar mysql para la contraseña del root
config_mysql_enviroment() {
    sudo mysql -u root -p
    #mysql> use mysql
    #mysql> SELECT User, Host, plugin FROM mysql.user;
    #mysql> UPDATE user SET plugin='mysql_native_password' WHERE User='root';
    #mysql> FLUSH PRIVILEGES;

    # Ingresar la nueva contraseña
    echo "Ingresa una contraseña para ingresar al root"
    mysqladmin -u root password $newpassword
}

# Si instalaste mysql-workbech, agregar este codigo
config_mysql_workbench(){
    snap connect mysql-workbench-community:password-manager-service
    snap connect mysql-workbench-community:ssh-keys
}

# Ejecución
echo "Se instalará el entorno de mysql"
install_mysql

read -s -p "¿Deseas instalar el mysql-workbench? (y/n): " acceptMysqlWorkbench

if $acceptMysqlWorkbench -eq "y"; then 
    install_mysql_workbench
fi

config_mysql_enviroment

if $acceptMysqlWorkbench -eq "y"; then 
    config_mysql_workbench
fi