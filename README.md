# devops-task


Create an file named file.txt, create an user sampleuser. Change the ownership of the file to sampleuser


Switch to sample user in terminal then change the permission of the file.txt to the user and group as rwx


//command to change the user file
touch file.txt

sudo useradd -m -p password sampleuser

sudo chown -R sampleuser:sampleuser file.txt 

sudo -u sampleuser -p password

sudo chmod +x file.txt


![user-change](https://user-images.githubusercontent.com/65504920/165276372-127a2a58-70c7-4353-a6cd-b35ead5edc61.png)



Increase the open file limit


![inc-file](https://user-images.githubusercontent.com/65504920/165276906-94214388-5285-4675-be28-86f7d43d90f3.png)



Increase the swapsize by adding new swap storage

//commands to incresse the swap size

free -m
 swapon -s
 dd if=/dev/zero of=/swap_file bs=1G count=1
 sudo fallocate -l 1G /swap_file
 chmod 600 /swap_file
 mkswap /swap_file
 echo "swap_file  swap   swap   defaults   0 0" >> /etc/fstab
 swapon /swap_file


![swap-ex](https://user-images.githubusercontent.com/65504920/165277021-979e0c5c-10ac-4b66-9415-570dfbf7b7f9.png)


Remove the swap storage

![rm-swap](https://user-images.githubusercontent.com/65504920/165277188-068e2bbb-fb2c-4ff4-940f-3aa1d27c788d.png)


Write an script that will read the file content.txt that contains the 
names,age,job title and print the value in this order “name(age) – 
jobtitle”

awk '{ printf "%s(%s)-%s\n", $1,$2,$3 }' contact.txt

![align-script](https://user-images.githubusercontent.com/65504920/165277383-7a95665e-24a9-4e1f-b387-07fe3cb43c41.png)


install the apache httpd server(centos preferred), and the home page should say “SoftwareAG”


![apache2-html](https://user-images.githubusercontent.com/65504920/165277690-06f1fdd4-3d82-49fa-a9d7-7c8123ed8389.png)


**Docker**


Create an docker volume named sampledata

Spin up an ubuntu docker container, mount the sampledata docker volume. Pass
 the env variable os=ubuntu to the docker container when bringing it up

Create an dir names /sampledir mount it to an nginx:1.19.0 docker container

Create an docker file to create an image with httpd2 server in it, on running 
the image as an container the server should start up


![doc-vol](https://user-images.githubusercontent.com/65504920/165278124-5482ed87-94b7-4d88-b799-0648389c7d57.png)


Create an container out of the image you created in earlier step expose the 80 port to the parent host

![port-mapping](https://user-images.githubusercontent.com/65504920/165278363-6d37ae87-348e-4f52-9c95-17c2e014ef0e.png)


Create an bridge network and spin up two containers in the network one with the image you created


![bridge-net](https://user-images.githubusercontent.com/65504920/165278177-80b22f06-fef7-414b-b303-a0e84c108e15.png)
