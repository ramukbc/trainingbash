#!/bin/bash
echo check the os version is it ubuntu or linux,centos
echo checking....
lsb_release -a >> file30.txt
if [ $? == 0 ]
then
echo your os version is ubuntu 
sleep 5
echo you can use apt-get for installing the softwares
echo please give the package name
read $pk
echo please wait sytem is checking the software is avilable or not
echo checking...........
sleep 1
echo .........
dpkg  --list | grep '$pk'  >>file30.txt
if [ $? != 0 ]
then 
sudo apt-get -y install $pk
else
echo you enter the package is allready in the system.
fi
else 
echo your os versin is centos
echo you can use yum for installing the packages.
fi


  
