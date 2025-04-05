
#!/bin/bash

#set -x

my_tasks="todo.txt"
touch "$my_tasks"

while true; do
echo


echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "Select the number that suites your need: "

echo "1. Create task "
echo "2. View tasks "
echo "3. Remove task "
echo "4. Exit"
read -p "Select the number that suites your need (1,2,3,4) " num_selected

case $num_selected in
1)
read -p "Input new task: " task
echo " ~ $task" >> "$my_tasks"
echo "Task added! Something new to-do!"
;;

2)
echo "Things to do: "
cat "$my_tasks"
;;

3)
echo "Remaining tasks: "
nl "$my_tasks"
read -p "What task are you done with? : " num_remove
sed -i "${num_remove}d" "$my_tasks"
echo "Weldone! Task removed."
;;

4) 
echo "Goodbye"
break
;;

*)
echo "Wrong input! "
;;
esac
done
