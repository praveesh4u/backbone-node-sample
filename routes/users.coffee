JSONRenderer = require '../lib/jsonRenderer'
User = GLOBAL.db.User

module.exports = (router)->

	router.get '/users', (req,res,next)->
	  console.log 'Hello Users'
	  User.findAll().then (users)->
    	res.json JSONRenderer.users users