'use strict'

module.exports = (sequelize, DataTypes) ->
  TaskTest = sequelize.define('TaskTest', {
    name: DataTypes.STRING
    status: DataTypes.INTEGER
    date: DataTypes.DATE
  }, classMethods: associate: (models) ->
    # associations can be defined here
    return
  )
  TaskTest
