
#!/bin/bash

#set -x

#create container for tasks
my_tasks="todo.txt"
my_reminders="reminder.txt"
touch "$my_tasks"
touch "$my_reminders"
while true; do
echo


echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "Select the number that suites your need: "

echo "1. Create task "
echo "2. View tasks "
echo "3. Remove task "
echo "4. View reminders "
echo "5. Exit"
read -p "Select the number that suites your need (1,2,3,4,5) " num_selected

case $num_selected in

#commenting the previous line of code case 1 to update the code with a reminder feature
#1)
#read -p "Input new task: " task
#echo " ~ $task" >> "$my_tasks"
#echo "Task added! Something new to-do!"
#;;

#new  code
1)
read -p "Input new task: " task
echo " ~ $task" >> "$my_tasks"
#adding the code toinclude the reminder feature
read -p "Do you want to add a reminder for this task? (y/n): " reply

#an if function to start the reminder

if [ "$reply" = "y" ]; then
read -p "Enter a reminder note or time to alert you (e.g 11 Saturday April 10am) : " reply_time 
echo "$task" - "$reply_time" >> "$my_reminders"
echo "Reminder saved"
fi

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
echo "Your reminders: "
cat "$my_reminders"
;;

5) 
echo "Goodbye"
break
;;

*)
echo "Wrong input!"


esac
done
