# Earthlink-Telecommunication-DevOps-Challenge
These are the explanation of all the task each of the task show you how to run the task or what are the prerequisite to do before you start the tasks.
## Task 1
This solution is only has been tested on Ubuntu OS , there are many way to connect via SSH to the machine or network device you want in our case we only uses `sshpass` this allow us to provide password along with a ssh connection 

In order this task to work your Network device should allow SSH so you need to enable the SSH connection from first if it is disable otherwise you should good to go.

There are couple of the Environment variable to initialize before running the `auto-connect.sh` bash command , these are the variable to initialize :

    SSH_PASS ,USERNAME ,HOST_IP ,DEVICE_NAME ,DEVICE_PASS

In the terminal run this command:

For example
```
export HOST_IP="192.168.1.20" 
export SSH_PASS="!355degw" 
export USERNAME="root"
export DEVICE_NAME="TP-Link_E5CR"
export DEVICE_PASS="earthlink@2300"
```
After you initialize all the environment variable you will need this command to run the the script

```
bash auto-connect.sh
```

> Note that you need to be inside in the current directory that contain the file or choose the path of the file also note that  if you do this manually without pipeline if you close your terminal you need to export all the environment variables again 


## Task 2
The following dockerfile allows you to run a .NET core web app version 5 and above in the file i have used .NET version 6 for both SDK and aspnet i have tried on .NET 5 it also worked but it better to use the version that suitable for you application.

To run the Dockerfile for .NET core web app is to place the Dockerfile in the root of the application folder then you need to build the image run this command to build your image:

> Note please make sure you have docker installed on your machine and it is running.

```
docker build -t Earthlink-Telecommunication -f dockerfile .
```
Your image name will be `Earthlink-Telecommunication` you can change that from above command after the `-t`

After that you need to run your application simply run this command to run your application by default the application will run on Port `5000` you can change that from the file or by running the command with `-p` make sure your image name be the same as the one you build.
```
docker run -d Earthlink-Telecommunication
```

## Task 3
I have created a document in the repository please refer to that to see the documentation named `kubernetes.pdf`
