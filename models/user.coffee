'use strict'

module.exports = (sequelize, DataTypes) ->
  User = sequelize.define('User', {
    firstName: DataTypes.STRING
    lastName: DataTypes.STRING
    password: DataTypes.STRING
    salt: DataTypes.STRING
    user_token: DataTypes.STRING
    is_active: DataTypes.BOOLEAN
    email: DataTypes.STRING
  },
    tableName: "Users"
    underscored: true
    timestamps: true
    classMethods:
      associate: (models)->
        User.hasMany(models.Task)
      findById: (id, callback = ()->)->
        User.find(id).complete callback
      findByEmail: (email,callback)->
        User.find(email).complete callback
  )
  User
