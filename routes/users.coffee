
express = require('express')
router = express.Router()
#User = GLOBAL.db.models.User

### GET home page. ###

router.get '/', (req, res, next) ->
  User = GLOBAL.db.User
  console.log User
  User.findAll().then (result)->
      res.json result
module.exports = router