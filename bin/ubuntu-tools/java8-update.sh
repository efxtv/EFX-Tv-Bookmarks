#!/bin/bash

# Java 8 as default 
java_alternatives=$(update-alternatives --list java)
java_8_path="java-8"
line_number=0
found=false

for path in $java_alternatives; do
    line_number=$((line_number + 1))
    if [[ $path == *$java_8_path* ]]; then
        found=true
        break
    fi
done

if $found; then
#    echo "Setting Java 8 as the default (option $line_number)..."
    sudo update-alternatives --set java $(echo $java_alternatives | awk -v n=$line_number '{print $n}')  1 > '/dev/null' 2>&1
#    sudo update-alternatives --set javac $(echo $java_alternatives | awk -v n=$line_number '{print $n}' | sed 's/bin\/java/bin\/javac/')
else
    echo "Java 8 not found in the alternatives list."
fi

# Verify the version
# java -version
# javac -version
