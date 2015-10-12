(function() {
  module.exports = function(router) {
    return router.get("/", function(req, res) {
      return res.render('index', {
        title: 'Expressoaa'
      });
    });
  };

}).call(this);
