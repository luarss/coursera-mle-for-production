#!/usr/bin/bash

# Automatic conda env setup + ipykernel
# Usage: 
# Go to desired folder, then run  `../../create_new_env.sh`
# You will be prompted for a environment name.
# Afterwards activate your environment and enjoy :)

# Prompt the user for a variable 'name' and check for errors
read -p "Enter a name for the Conda environment: " name

# Check if the 'name' variable is empty
if [ -z "$name" ]; then
    echo "Error: Name cannot be empty."
    exit 1
fi

# Execute 'conda create' without stopping
conda create -n $name python=3.10 -y

# Check if the conda environment was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Failed to create the Conda environment."
    exit 1
fi

# Activate the Conda environment
source activate $name

# Install packages from 'requirements.txt' using pip
pip install -r requirements.txt
pip install ipykernel
python -m ipykernel install --user --name=$name

# Check if the installation was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to install Python packages from 'requirements.txt'."
    exit 1
fi

echo "Environment '$name' created and activated successfully."
