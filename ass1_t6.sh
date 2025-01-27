# In a Bash script, you can handle signals such as Ctrl+C (which sends a SIGINT signal) using the trap command. 
#The trap command allows you to define a custom action that should be taken when a signal is received by the script.

#!/bin/bash

# Define a function to handle SIGINT (Ctrl+C)
handle_sigint() {
    echo "Ctrl+C was pressed. Handling it..."
    
    exit 1  # Exit with status 1 to indicate abnormal termination
}

# Trap the SIGINT signal and call the handle_sigint function
trap handle_sigint SIGINT

# Infinite loop to keep the script running
echo "Running... Press Ctrl+C to trigger the signal handler."
while true; 
do
    sleep 1  # Simulating some work
done
