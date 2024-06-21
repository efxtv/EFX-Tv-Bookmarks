#!/bin/bash

# Set the specific Java 8 path
java_8_path="/opt/jre1.8.0_381/bin/java"

# Check if the specific Java 8 path exists in the alternatives list
if update-alternatives --list java | grep -q "$java_8_path"; then
#    echo "Setting Java 8 as the default..."

    # Set the java alternative
    sudo update-alternatives --set java "$java_8_path" > '/dev/null' 2>&1

    # Set the javac alternative
#    javac_path="${java_8_path/bin\/java/bin\/javac}"
#    sudo update-alternatives --set javac "$javac_path"

#    echo "Java 8 has been set as the default."
else
    echo "Java 8 not found in the alternatives list."
fi

# Verify the version
#java -version
#javac -version
