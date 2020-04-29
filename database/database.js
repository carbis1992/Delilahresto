
const Sequelize = require('sequelize');
const sequelize = new Sequelize('mysql://root@localhost:3306/delilah_resto');

sequelize.query('SELECT * FROM users', { type: sequelize.QueryTypes.SELECT })
    .then(users => console.log(users))
    .catch(error => console.log(error));

    