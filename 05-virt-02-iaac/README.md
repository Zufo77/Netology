
{
    "builders": [
        {
            "type": "yandex",
            "token": "ххххх",
            "folder_id": "b1gg3o8ollsj16p6p5ng",
            "zone": "ru-central1-a",
            "image_name": "debian-11-docker",
            "image_description": "my custom debian with docker",
            "source_image_family": "debian-11",
            "subnet_id": "e9bh9i7keiij3608frth",
            "use_ipv4_nat": true,
            "disk_type": "network-hdd",
            "ssh_username": "debian"
        }
    ],
    "provisioners": [
        {
            "type": "shell",
            "inline": [
                "sudo apt-get update -y",
                "curl -fsSL https://get.docker.com -o get-docker.sh",
                "sudo sh get-docker.sh", 
                "sudo apt-get install -y -q htop", 
                "sudo apt-get install -y -q tmux"
            ]
        }
    ]
}

