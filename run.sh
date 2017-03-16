#! /bin/bash

#создание папок
mkdir "public"
mkdir "uploads"
mkdir "etc"
cd public
mkdir "img"
mkdir "css"
mkdir "js"

#перемещение файлов
cd ..
mv "nginx.conf" "etc/nginx.conf"
mv "hello_conf.py" "etc/hello.py"

#запуск сервера
bash /home/box/web/init.sh
