# Клонирование репозитория
cd /opt
sudo git clone https://github.com/Zufo77/Netology.git
cd Netology/05-virt-04-docker-in-practice/shvirtd-example-python

# Запуск контейнеров
sudo docker compose up -d --build

# Вывод IP-адреса
echo "Check the service: http://$(curl -s ifconfig.me):8090"
