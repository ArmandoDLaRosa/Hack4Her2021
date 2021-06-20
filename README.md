# GirUp Hack4Her 2021

## Build Azure SQL Server
![Amazon](https://github.com/ArmandoDLaRosa/Hack4Her2021/blob/main/Server/azure.png)

  ### Create Database
    1) Select Create SQL Database
  ### Template
    1)  Azure for students
  
  ### Settings
    1) Generate the DB instance identifier
    2) Generate Master username
    3) Generate Master password

  ### Connectivity
    Only approved ip addresses (from the team) may have access 
    to the server as administrators
    
    Added our IP addresses to inbound and outbound rules allowing all traffic
    
## Web Application
  ### Create and set up Node JS Express
    1) Firstly, create 2 folders, main web application and web api
    2) Open the terminal
    3) Change directory to the main web application folder
    4) Check if npm and node are installed with commands in terminal (npm -v | node --version)
    5) Initialize npm with command npm init
    6) Fill the blanks
    7) Set app.js as the entry point, and accept all default settings
    8) Install libraries with the following command... npm install axios body-parser express ejs
    9) Add nodemon app.js to script inside the package.json file
    10) Create app.js file... Establish 3000 as port and recheck if npm is started by command app.listen(port,() => console.log(`Escuchando el puerto ${port}`))
    11) Start NPM
    12) Add static files and template engine settings to the app.js file
    13) Start NPM service again
  ### Web Design
    1) Created the front end using Bootstrap Studio
    2) Downloadad all files from BS, and uploaded those to the server
    3) Rearrenged those files in several folders, primarly by type of file
    4) Started main application server and web api server by command npm start
    5) Made last corrections to html files.
  
## Data visualisation
  ### Extraction
    1) Created some mock-up data to try the visualization, due to the pure nature of the data, its impossible to use real raw data, gathered from the web application as expected
    2) Downloaded mock-up data file as xlxs
  ### Tableau Connection
    1) Select file to explore
    2) Do the connections between the data columns
    3) Create some data visualization tools
    4) Integrate those tools into a simple dashboard
