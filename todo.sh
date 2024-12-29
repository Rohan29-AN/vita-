#!/bin/bash
echo "TODO LIST"
TODO_DIR="$HOME/.todo"
TASKS_FILE="$TODO_DIR/tasks.txt"

#Check if TODO_DIR exists
if [ ! -d "$TODO_DIR" ]; then
    mkdir -p "$TODO_DIR"
fi

#Check if TASKS_FILE exists
if [ ! -f "$TASKS_FILE" ]; then
    touch "$TASKS_FILE"
fi

#Functions to list all tasks
list_tasks() {
    echo -e "Tasks :"
    nl -w2 -s". " "$TASKS_FILE"
}

#Add task
add_task() {
    echo "$1" >> "$TASKS_FILE"
    echo "Task added: $1"
}
# Mark a task as complete
mark_done() {
    sed -i "${1}s/^/[DONE] /" "$TASKS_FILE"
    echo "Task $i marked as complete"
}


# Delete a task
delete_task() {
    sed -i "${1}d" "$TASKS_FILE"
    echo "Task $1 deleted."
}

case "$1" in
  add)
    shift
    add_task "$*"
    ;;
  list)
    list_tasks
    ;;
  done)
    mark_done "$2"
    ;;
  delete)
    delete_task "$2"
    ;;
esac
#Happy birthday to me (2024)

