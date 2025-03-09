# **Домашнее задание к занятию «Введение в Terraform»**

## **Чек-лист готовности к домашнему заданию*  
[Скриншот команды "terraform --version"](https://github.com/Zufo77/Netology/tree/main/03-ter-homeworks/01/Screenshot_for_HW01.png)

## **1. Задача 1** 
1.3. Секретное содержимое созданного ресурса random_password: "result": "LjPi4RcczaflmH0N" ("result": "B3ltvwrqVqq4tE4t")  
1.5. [Изменения в "main.tf" приложены в комментариях в файле "main_14.txt"](https://github.com/Zufo77/Netology/blob/main/03-ter-homeworks/01/main_14.txt)  
1.5. [Вывод команды "docker ps"](https://github.com/Zufo77/Netology/tree/main/03-ter-homeworks/01/Screenshot_for_HW02.png)  
1.6. [Вывод команды "docker ps"](https://github.com/Zufo77/Netology/tree/main/03-ter-homeworks/01/Screenshot_for_HW03.png)  
1.7. [Содержимое файла "terraform.tfstate"](https://github.com/Zufo77/Netology/tree/main/03-ter-homeworks/01/Screenshot_for_HW04.png)  
1.8. В "main.tf" в блоке resource "docker_image" "nginx" указано следующее свойство "keep_locally = true"  
Этот параметр означает, что после выполнения terraform destroy образ nginx:latest не будет удалён из локального хранилища Docker,  
даже если контейнеры, использующие его, будут уничтожены.  

Подтверждение из документации Terraform провайдера Docker (resource "docker_image"):  
keep_locally (Boolean, optional)  
If true, then the Docker image won't be deleted on terraform destroy or on image reference change. Defaults to false.
