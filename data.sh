 #!/bin/bash


read -p "Enter Your Usarname:" User
read -p "Enter Your Full-name:" Name

INFO=$User,$Name


read -p "please, confirm that you have entered the correct information. Is everything correct [y/n]" input

case $input in
        N | n)
                exit
                ;;
        Y | y)
                echo $INFO >> employee.csv
                ;;
        *)
                exit
esac
echo "Your data has been stored successfully"
