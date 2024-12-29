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
