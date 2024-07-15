# Installing the Distro-Stable Version for Ubuntu

# Refresh your local package index by typing:
sudo apt update

# Run the following commands to update the package index and install Node.js and npm:
sudo apt install nodejs npm

# Once the installation is complete, run the commands below to check the version installed.
node --version
npm --version

# Run Node.js scripts from the command line

# Setting Up the Project
mkdir express-example
cd express-example

npm init
npm install express --save
npm install body-parser --save
npm install cookie-parser --save
npm install multer --save
npm install bootstrap@5.3.0

# To install the required modules for this project from package.json and package-lock.json
npm i

# When deploying to production, you may want to skip the development dependencies.
npm i --production

# Listing Modules
npm ls
npm ls --all

# Updating Modules
npm outdated

# Uninstalling Modules
npm un axios

# You can give app.js the executable permission by running:
chmod u+x app.js

# If your main Node.js application file is app.js, you can call it by typing:
node app.js