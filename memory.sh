total=$(free | grep Mem | awk '{print $2}')
free=$(free | grep Mem | awk '{print $4}')

#so to know the available space

free_percentage=$(echo "$free / $total * 100" | bc -l)
echo $free_percentage

#note bc in this statement is just a basic calculator in shell.