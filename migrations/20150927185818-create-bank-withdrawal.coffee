'use strict'
module.exports =
  up: (queryInterface, Sequelize) ->
    queryInterface.createTable 'BankWithdrawals',
      id:
        allowNull: false
        autoIncrement: true
        primaryKey: true
        type: Sequelize.INTEGER
      amount: type: Sequelize.FLOAT
      status: type: Sequelize.BOOLEAN
      is_mail_sent: type: Sequelize.BOOLEAN
      bank_address: type: Sequelize.STRING
      iban: type: Sequelize.STRING
      bic: type: Sequelize.STRING
      swift: type: Sequelize.STRING
      email: type: Sequelize.NAME
      createdAt:
        allowNull: false
        type: Sequelize.DATE
      updatedAt:
        allowNull: false
        type: Sequelize.DATE
  down: (queryInterface, Sequelize) ->
    queryInterface.dropTable 'BankWithdrawals'
