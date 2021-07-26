# Disable-IAM-User-from-accessing-console
## Flow Daigram 
![image](https://user-images.githubusercontent.com/63298380/126997173-a3b64b65-345a-42a0-a67a-25acefee652d.png)
### Usage
This script will list all the IAM user and then users will select IAM users which needs to be disabled from accessing the AWS management console. Users can type in bulk IAM users or one user. If then that users will try to access AWS console for that particular user it will not be able to do so. These users if have access key and secret key then they have the option of accessing them in programmatic way by entering access key and secret key.

For listing use -l

![image](https://user-images.githubusercontent.com/63298380/126998632-7ebddd33-307d-41a5-b925-4991d9f83f30.png)

For any help or to know more about it use -h
![image](https://user-images.githubusercontent.com/63298380/126998785-a1f81446-9066-4263-b36a-aa1eb288a8bc.png)

### Steps that will disable the users access are
1. Run the script . It will list the IAM users.

![image](https://user-images.githubusercontent.com/63298380/127007092-c34396c8-659b-41a6-954d-d670257ce0dd.png)

2. Type the IAM user name which needs to be disable.One can write one user or more than one sepearted by space.In given description one user is disabled.

![image](https://user-images.githubusercontent.com/63298380/127007365-489fb17c-570c-4c34-a0c4-3e2390b280af.png)

3. As it can be seen that both users are disabled.
If we check on the dashboard to verify it will show disable for both of the users.

For muskan user-

![image](https://user-images.githubusercontent.com/63298380/127007711-95654760-a99e-4167-87df-02d7216c2f18.png)


For mj user-

![image](https://user-images.githubusercontent.com/63298380/127007761-bee0843c-9518-429d-8395-9d5bf7c5d6fd.png)

5. Now it will ask for programmatic access to that user if it have access key and secret key then go ahead otherwise type no.

![image](https://user-images.githubusercontent.com/63298380/127007838-a2466292-ccfa-45c5-ab1b-c3ef0a386e0c.png)



### Programmatic access to the user having access key and secret key

If  a user has access key and secret key then it can have programmatic access.
The program will ask for the same , if it is yes then enter the access key and secret key ,if no it will exit and other than that will give an error of wrong choice.

For yes it will look like

![image](https://user-images.githubusercontent.com/63298380/126998997-bb96925f-7937-4704-8ba0-a57e5e4d2efa.png)
 
 For no-
 
 ![image](https://user-images.githubusercontent.com/63298380/126999281-41e4d0b6-0e28-4fc6-8fe8-2b055c83c03b.png)

For other-

![image](https://user-images.githubusercontent.com/63298380/126999353-74b6762a-24cf-4e76-b363-0eb967c992e0.png)









