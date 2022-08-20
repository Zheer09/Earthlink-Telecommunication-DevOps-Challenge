# Earthlink-Telecommunication-DevOps-Challenge
These are the explanation of all the task each of the task show you how to run the task or what are the prerequisite to do before you start the tasks.
## Task 1
In this task there are couple of the Environment variable to initialize before running the `Nano-M5.sh` bash command , these are the variable to initialize :

In the terminal run this command:

HOST_IP
```
export HOST_IP="YOUR IP ADDRESS OF THE NANOSTATION M5" 

export HOST_IP="192.168.1.20" 
```



## Task 2
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
