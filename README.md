# Install-DeepSeek-R1-with-Ollama-on-Ubuntu-Server---Automated-Bash-Script

1. Open Terminal:
    Access the terminal on your Ubuntu server. You can use SSH if you are connecting to a remote server.

2. Install Git (If Not Already Installed):
    Make sure Git is installed on your system. If it is not, you can install it with the following commands:
    sudo apt update
    sudo apt install git -y

3. Clone the GitHub Repository:
    Use the git clone command to download the repository containing the script. Replace REPOSITORY_URL with the appropriate GitHub repository URL. For example:
    git clone https://github.com/jamaludin1991/Install-DeepSeek-R1-with-Ollama-on-Ubuntu-Server---Automated-Bash-Script.git
    After running this command, a new folder with the repository name will be created in the current directory.

4. Navigate to the Repository Directory:
    Change into the directory of the cloned repository:
    cd repo-name

5. Make the Script Executable:
    Find the script file you want to run (e.g., install_deepseek_r1.sh) and make it executable:
    chmod +x install_deepseek_r1.sh

6. Run the Script with Sudo:
    Execute the script using sudo to provide administrative privileges:
    sudo ./install_deepseek_r1.sh

7. Wait for the Process to Complete:
    The script will start running. Wait until all steps are completed. You will see output in the terminal indicating the progress of the installation.

8. Verify the Installation:
    After the script finishes, you can verify that the DeepSeek-R1 model has been successfully downloaded by running:
    ollama list

9. Running the Model:
    To run the DeepSeek-R1 model, use the following command:
    ollama run deepseek-r1

Additional Notes:
Ensure you have a stable internet connection during the installation process, as the script will download Ollama and the DeepSeek-R1 model.
If you encounter errors during installation, check the error messages in the terminal for more information about what might have gone wrong.
If the DeepSeek-R1 model is not available, make sure to check the correct model name using the command ollama list.
