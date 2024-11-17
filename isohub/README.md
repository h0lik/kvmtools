# ISO-hub скрипт скачивания iso образов.
## Описание 
Скрипт писал для домашней лаборатории, что бы не ходить по сайтам и не скачивать постоянно iso дистрибутивов.
Скрипт заточен под работу на гипервизоре QEMU/KVM.
Для правильной работы скрипта нужно создать директорию, куда будем складывать ISO-образы дистрибутивов, далее данную директорую нужно указать QEMU/KVM
что бы он видел ISO образы скаченные скриптом.
## Структура проекта 
```
.
├── isohub
├── lib
│   ├── alma
│   ├── alpine
│   ├── centos
│   ├── createpool
│   ├── debian
│   ├── evn-lib
│   ├── fedora-server
│   ├── rockly
│   └── ubuntu
├── LICENSE
└── README.md

2 directories, 12 files

```
## Установка
* 0: Для работы требуеться установленые git и wget 
```bash
# DEB linux
sudo apt install git wget 
# RPM linux
sudo dnf install git wget
```
* 1: Клонируем репозиторий 
```bash 
sudo git clone https://github.com/h0lik/isohub.git /opt/isohub
```
* 2: Делаем символьную ссылку  для упращения работы со скриптом 
```bash 
sudo ln -s /opt/isohub/isohub /usr/local/bin/isohub
```
* 3: проверяем работу скрипта
```bash 
sudo isohub -h 
# и получим вывод 
========================================
Script download ISO
========================================
ISO minimal
 -h | --help 
 -u | --update git repo
 --rockly8  | Rockly Linux 8.10 netinst
 --rockly9  | Rockly Linux 9 netinst
 --alma8    | Alma Linux 8.10 netinst
 --alma9    | Alma Linux 9 netinst
 --debina11 | Debian Linux 11 netinst
 --debian12 | Debian Linux 12 netinst
 --ubuntu-serv20.03 | Ubuntu Server 20.04 netinst
 --ubuntu-serv22.04 | Ubuntu Server 22.04 netinst
 --ubunut-serv23.04 | Ubuntu Server 23.04 netinst
 --ubuntu-serv24.04 | Ubuntu Server 24.04 netinst
 --Fedora-server39  | Fedora Server 39 netinst
 --centos9 | CentOS - 9 netinst
 --alpine  | Alpine Linux netinst
---------------------------------------
$ isohub --debain12
---------------------------------------
=======================================
```
* 1: Создайте директорию где выхотите хранить ISO образы
* 2: После запустити скрипт с флагом --create-pool
```bash
sudo isohub -c
#либо
sudo isohub --create-pool
# Скрипт у вас попросит у вас указать ему директорию которую вы создали для хранения ISO образов дистрибутивов
#Сообщение скрипта
Hello  root  ,Creating a pool storage ISO?
-Create pool storage?: # Тут вводим полный путь до хранения ISO образов в моем варианте /opt/kvms/vm/pool-iso/ у вас будет свой путь
```
* 3: И проверяем работу скрипта

## Какие дистрибутивы скачивает скрипт
* 1: Rockly Linux 8.10
* 2: Rockly Linux 9 
* 3: Alma Linux 8.10 
* 4: Alma Linux 9 
* 5: Debian Linux 11 
* 6: Debian Linux 12 
* 7: Ubuntu Server 20.04 
* 8: Ubuntu Server 22.04 
* 9: Ubuntu Server 23.04 
* 10: Ubuntu Server 24.04 
* 11: Fedora Server 39 
* 12: CentOS - 9 (dvd)
* 13: Alpine Linux 
* Важно понимать что скрипт скачивает только минимальный образ для сетевой установки.
## Работа со скриптом.
Тут все просто в терминале вводим команду:
* isohub -h скрипт выводит  справку.
* isohub --тут дистрибутив который мы хотим скачать 
и у вас начинаеться загрузка ISO образ дистрибутива в указанную вами папку.
