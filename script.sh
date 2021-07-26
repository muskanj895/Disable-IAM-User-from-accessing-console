#!/bin/bash
Help()
{
        cat << EOF

Usage: To disable IAM user from accessing AWS console.

Description:

1)List all the IAM users present in the account.
2)Ask for the IAM user need to be disabled it can be single or in bulk.
3)Then press Enter.
4)having access key and secret key gives programmatic access.

 options: 

      -h       show help
      -l       list IAM user present in account
Examples:

     List of users : 
            mj  
            muskan

User muskan needs to  be disabled.
Type muskan and press "Enter".

output- muskan user is disabled from accessing console.

For programmatic access type yes and enter access key and secret key.

Need valid IAM user from the list itself!!

EOF
}
list()
{
        echo "IAM Users present in the account"
        aws iam list-users --output table --query 'Users[*].UserName'
}

while getopts ":hl" option; dolist
         exit;;
         \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done


echo "Below is the list of all IAM users"
echo
aws iam list-users --output table --query 'Users[*].UserName'
echo
echo "Select the user whose console access needs to be disable"
read -a arr
for user_name in ${arr[@]}
do
aws iam delete-login-profile --user-name $user_name
done

echo
echo
for user_name in ${arr[@]}
do
echo "$user_name is disabled to access Management console"
done
echo
echo
while true; do
    read -p "Do you have access key and secret key??" yn
    case $yn in
        [Yy]* ) echo "Enter access key ,secret key and region";
                echo
                aws configure;
                echo "Now this user has programmatic accsess";
                echo 
                break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

   case $option in
      h) # display Help
         Help
         exit;;
 l) #list users
