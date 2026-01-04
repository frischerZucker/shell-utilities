#!/bin/bash

shutdown-after-process () {
# Wait for a process to finish and shutdown the pc afterwards.
#
# Arguments:
#   1: name of the process

    PROCESS_NAME=$1
    # Check if a pid was supplied. If not the user can enter one.
    if [ ! "$PROCESS_NAME" ]; then
        echo "Too few arguments!"
        echo "Use 'shutdown-after-process [name of the process]'."
        return 1
    fi

    PID_OF_PROCESS=$(pgrep "$PROCESS_NAME")
    if [ ! "$PID_OF_PROCESS" ]; then
        echo "No process named '$PROCESS_NAME' exists."
        return 2
    fi

    # Periodically check if the process is still running and loop until it is not running anymore.
    while true; do  
        if ps "$PID_OF_PROCESS" &> /dev/null; then
            # Process is still running -> wait for a minute and try again.
            echo "Process $PROCESS_NAME ($PID_OF_PROCESS) is still running."
            sleep 30
        else
            # Process is not running anymore -> exit the loop and shutdown.
            break
        fi
    done

    shutdown +1
}