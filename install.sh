sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER
docker run -d -p 8000:8000 --name django-app rithwik504/basic-project:latest
