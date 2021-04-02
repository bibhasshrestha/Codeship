FROM ubuntu:18.04
RUN apt-get update && apt-get install -y dos2unix curl 
ADD codeship-integration.sh /home/codeship-integration.sh
RUN chmod +x /home/codeship-integration.sh
RUN dos2unix /home/codeship-integration.sh
RUN bash /home/codeship-integration.sh
