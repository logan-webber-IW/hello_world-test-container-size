# ***Ballerina Quick Start***
### ***Ballerina Information Inside Respective folders README.md...*** 
<br />

## ***Dev Container Setup & Information:***

## Prerequisites:
*Install these programs to meet the required software for running your ballerina dev enviroment...*
   - "Git"
   - "Visual Studio Code"
   - "Remote - Containers" (VSCode exstension)
   - "Docker"

*Other setup tasks...*
   - If on windows have Docker setup for WSL
   - SSH Key setup for Github (ideally)

**Setting up Docker if you havn't already:**

1. Install and configure Docker for your operating system.
   - **Windows / macOS:**
       1. If you are using WSL 2 on Windows, to enable the Windows WSL 2 back-end: Right-click on the Docker taskbar item and select Settings. Check Use the WSL 2 based engine and verify your distribution is enabled under Resources > WSL Integration.
       2. Right-click on the Docker task bar item, select Settings and update Resources > File Sharing with any locations your source code is kept. See tips and tricks for troubleshooting. This option is not available if you have enabled the WSL 2 back-end in the step above.
   - **Linux:**
       1. Follow the official install instructions for Docker CE/EE for your distribution. If you are using Docker Compose, follow the Docker Compose directions as well.
       2. Add your user to the docker group by using a terminal to run: sudo usermod -aG docker $USER
       3. Sign out and back in again so your changes take effect.

2. Install Visual Studio Code or Visual Studio Code Insiders.

3. Install the Remote Development extension pack in Visual studio code.

4. Link for reference: https://code.visualstudio.com/docs/remote/containers `#GettingStarted`

<br />

## Running the Container:
*Follow these steps to setup your Ballerina Dev enviroment...*
1. Use template to create your own repository.
2. Clone your repository to a local directory.
3. Ensure that you have set your Github .gitconfig  username and email. This way you can use git within the container effectively. Run these commands from inside your respective OS terminal locally. Running the container will use your original .gitconfig to set the .gitconfig of the container.
   - `git config --global user.name "Your Name"`
   - `git config --global user.email "your.email@address"`
4. Open the repository in VS code.
5. Click the green box in the bottom left of your VS code -> Click "Open in container"
   - MAC: If you get an error regarding the download-ballerina.sh file during the booting of your container. Give you're user the necessary permissions to run the script. Navigate to the library-scripts directory and run: `sudo chmod 777 ballerina-download.sh`.
   - If your encounter any, please raise an issue in the Github repository for this quick start with the OS and error message recieved.
6. Once inside the container run the following commands to ensure everything is running smoothly. If one of these commands fail please contact Gabriel or raise and issue in the Github repo.
   - `bal version`
   - `docker ps` - Should return the images running on your machine. Including the image you are currently in on VS code.
   - `git config -l` - Should be able to see your user.name and user.email that were set locally.
7. You should now be all set to go! Your `/workspace` directory is where all of the code is kept/implemented. `/usr/lib` is there the downloaded software is kept. Have an explore.
8. Please head to "DevContainer Practices" to get more information on how to use Dev containers and practices we are following for this Quick Start to ensure it has a long and fruitful life cycle.

*Trouble shooting Link: `https://code.visualstudio.com/docs/remote/containers#`*

<br />

## DevContainer Practices:

*This section covers the basics of working in Dev Containers regarding this quick start. For more information on Visual Studio Code Dev containers - links will be provided below.*

**Visual Studio Code Plugin Addition:** <br />
One of the great things about Dev containers if you can have enviroment specific Visual Studio Code exstensions setup. If you happen to run accross a plugin that you thing has value to this Dev Enviroment please create an issue/CR in Github so we can add it for everyone in the future to use.

**Docker Information:** <br />
This container connects to the Docker Daemon running locally on your machine.

**Other Notes:** <br />
I will continue to maintain this Quick start as I think it could become a very useful place to begin Ballerina Projects. It would be great if while using this dev enviroment you come accross any DevContainer features or settings etc. you would like to be included in this quick start action that to Github or message Gabriel. This way we can ensure no one is having to setup the Ballerina Dev enviroment ever again.

**Learning Links:** <br />

`https://code.visualstudio.com/docs/remote/containers`

`https://code.visualstudio.com/docs/remote/containers-advanced`

<br /><br />

