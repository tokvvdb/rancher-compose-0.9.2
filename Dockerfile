FROM ubuntu

RUN  apt update && \
     apt install -y wget && \
     wget https://github.com/rancher/rancher-compose/releases/download/v0.9.2/rancher-compose-linux-amd64-v0.9.2.tar.gz && \
     tar -xvf rancher-compose-linux-amd64-v0.9.2.tar.gz && \
     rm rancher-compose-linux-amd64-v0.9.2.tar.gz && \
     cp rancher-compose-v0.9.2/rancher-compose /usr/bin/ && \
     rm -r rancher-compose-v0.9.2

CMD ["bash"]
