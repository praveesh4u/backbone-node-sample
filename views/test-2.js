		(function() {
		  var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
		    hasProp = {}.hasOwnProperty;

		  App.View.Test2View = (function(superClass) {
		    extend(Test2View, superClass);

		    function Test2View() {
		      console.log('Hello WOrld!');
		    }

		    return Test2View;

		  })(Backbone.View);

		}).call(this);
