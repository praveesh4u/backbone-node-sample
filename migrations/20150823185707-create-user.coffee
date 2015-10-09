'use strict'
module.exports =
  up: (queryInterface, Sequelize) ->
    queryInterface.createTable 'Users',
      id:
        allowNull: false
        autoIncrement: true
        primaryKey: true
        type: Sequelize.INTEGER
      firstName: type: Sequelize.STRING
      lastName: type: Sequelize.STRING
      password: type: Sequelize.STRING
      salt: type: Sequelize.STRING
      user_token: type: Sequelize.STRING
      is_active: type: Sequelize.BOOLEAN
      email: type: Sequelize.STRING
      createdAt:
        allowNull: false
        type: Sequelize.DATE
      updatedAt:
        allowNull: false
        type: Sequelize.DATE
  down: (queryInterface, Sequelize) ->
    queryInterface.dropTable 'Users'
