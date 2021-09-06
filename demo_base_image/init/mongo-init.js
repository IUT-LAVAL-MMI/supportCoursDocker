const database = _getEnv("MONGO_INITDB_DATABASE");

db = db.getSiblingDB(database);

db.createCollection('users');

db.users.insertMany([
 {
    id: 1,
    firstname: 'Richard',
    lastname: 'Perry',
  },
  {
    id: 2,
    firstname: 'Mike',
    lastname: 'Dixon',
  },
  {
    id: 3,
    firstname: 'Heather',
    lastname: 'Parker',
  }  
]);