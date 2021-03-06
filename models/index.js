// Generated by CoffeeScript 1.9.3
(function() {
  'use strict';
  var Sequelize, basename, config, db, env, fs, path, sequelize;

  fs = require('fs');

  path = require('path');

  Sequelize = require('sequelize');

  basename = path.basename(module.filename);

  env = process.env.NODE_ENV || 'development';

  config = GLOBAL.appConfig().mysql;

  sequelize = new Sequelize(config.database, config.username, config.password, config);

  db = {};

  fs.readdirSync(__dirname).filter(function(file) {
    return file.indexOf('.') !== 0 && file !== basename;
  }).forEach(function(file) {
    var model;
    if (file.slice(-3) !== '.js') {
      return;
    }
    model = sequelize['import'](path.join(__dirname, file));
    db[model.name] = model;
  });

  Object.keys(db).forEach(function(modelName) {
    if (db[modelName].associate) {
      db[modelName].associate(db);
    }
  });

  db.sequelize = sequelize;

  db.Sequelize = Sequelize;

  module.exports = db;

}).call(this);
