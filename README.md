# Disable-IAM-User-from-accessing-console
## Flow Daigram 
![image](https://user-images.githubusercontent.com/63298380/126997173-a3b64b65-345a-42a0-a67a-25acefee652d.png)
### Usage
To list all the IAM user and then selecting users which needs to be disabled. It can be in bulk or one user. If we then try to access AWS console for that particular user then it will not be able to do so.

For listing use -l
![image](https://user-images.githubusercontent.com/63298380/126998632-7ebddd33-307d-41a5-b925-4991d9f83f30.png)

For any help or to know more about it use -h
![image](https://user-images.githubusercontent.com/63298380/126998785-a1f81446-9066-4263-b36a-aa1eb288a8bc.png)

### Programmatic access to the user having access key and secret key

If  a user has access key and secret key then it can have programmatic access.
The program will ask for the same , if it is yes then enter the access key and secret key ,if no it will exit and other than that will give an error of wrong choice.

For yes it will look like

![image](https://user-images.githubusercontent.com/63298380/126998997-bb96925f-7937-4704-8ba0-a57e5e4d2efa.png)
 
 For no-
 
 ![image](https://user-images.githubusercontent.com/63298380/126999281-41e4d0b6-0e28-4fc6-8fe8-2b055c83c03b.png)

For other-

![image](https://user-images.githubusercontent.com/63298380/126999353-74b6762a-24cf-4e76-b363-0eb967c992e0.png)









