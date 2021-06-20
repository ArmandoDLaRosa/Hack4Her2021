const sql = require('mysql');

const config = {
  user: 'dbadmin',
  password: 'kwTjn5G5Wt4u6GG4',
  database: 'hack4her',
  server: 'hack4her.c4hj7dzeiz1t.us-east-2.rds.amazonaws.com',
  options: {
    trustedConnection: true,
  },
};
const poolPromise = new sql.ConnectionPool(config)
  .connect()
  .then((pool) => {
    console.log('Connected to MYSQL');
    return pool;
  })
  .catch((err) => console.log('Database Connection Failed! Bad Config: ', err));

module.exports = {
  sql,
  poolPromise,
};

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});
