'use strict'

module.exports = (sequelize, DataTypes) ->
  BankWithdrawal = sequelize.define('BankWithdrawal', {
    amount: DataTypes.FLOAT
    status: DataTypes.BOOLEAN
    is_mail_sent: DataTypes.BOOLEAN
    bank_address: DataTypes.STRING
    iban: DataTypes.STRING
    bic: DataTypes.STRING
    swift: DataTypes.STRING
    email: DataTypes.STRING
  }, classMethods: associate: (models) ->
    # associations can be defined here
    return
  )
  BankWithdrawal
