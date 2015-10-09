window.App =
  Model : {}
  View : {}
  Collection : {}

appRouter= Backbone.Router.extend({
  routes:
    "users": "allUsers",
    "users/:id": "getUser"

  allUsers: ()->
    console.log 'All users function called'
  getUser: ()->
    console.log 'Single user function!!'


});