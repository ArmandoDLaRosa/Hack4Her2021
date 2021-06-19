# GirUp Hack4Her 2021

## Build AWS EC3 RDS Server
![Amazon](https://github.com/ArmandoDLaRosa/Hack4Her2021/blob/main/Server/Create%20Database.png)

  ### Create Database
    1) Select in 'Choose a database creation method'
       Standard create
    2) Select in 'Engine options'
       2.0)  MySQL
       2.1) Edition MySQL community

  ### Template
    1)  Select Free Tier
  
  ### Settings
    1) Generate the DB instance identifier
    2) Generate Master username
    3) Generate Master password

  ### Connectivity
    Only approved ip addresses (from the team) may have access 
    to the server as administrators
    
    Added our IP addresses to inbound and outbound rules allowing all traffic

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
    10) Start NPM
