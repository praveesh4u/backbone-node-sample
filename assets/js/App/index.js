// Generated by CoffeeScript 1.9.3
(function() {
  var appRouter;

  window.App = {
    Model: {},
    View: {},
    Collection: {}
  };

  appRouter = Backbone.Router.extend({
    routes: {
      "users": "allUsers",
      "users/:id": "getUser"
    },
    allUsers: function() {
      return console.log('All users function called');
    },
    getUser: function() {
      return console.log('Single user function!!');
    }
  });

}).call(this);
