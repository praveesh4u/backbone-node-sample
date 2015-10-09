'use strict'

module.exports = (sequelize, DataTypes) ->
  Task = sequelize.define('Task', {
    name: DataTypes.STRING
    status: DataTypes.INTEGER
    date: DataTypes.DATE
  },
    underscored: true
    timestamps: true
    classMethods:
      associate: (models)->
        Task.belongsTo(models.User)
  )
  Task
