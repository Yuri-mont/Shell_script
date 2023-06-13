#!/bin/bash
#in this code when it's runned it will receive three parameters first one the local port for create the container; the second one is the token/ password to acess the jupyter container; the third one is the name of the container in this case will be the company-id of the user.
docker run -d --name $3 --mount src="dir_for_image",target=dir_for_image,type=bind \
  -p $1:8888 dir \
  jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root \
    --NotebookApp.token=$2
    

echo "link = http://:"$1 
echo "token = "$2
