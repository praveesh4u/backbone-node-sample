/**
 * Created by venom on 23/8/15.
 */
var gulp = require("gulp"),
    gutil = require("gulp-util"),
    uglify = require("gulp-uglify"),
    concat = require("gulp-uglify"),
    gformat = require("gulp-format"),
    indent = require("gulp-indent"),
    debug = require('gulp-debug'),
    beautify = require("gulp-beautify"),
    coffee = require("gulp-coffee");

var jsSources =[
    './public/javascripts/App/**/*.js'
];
var coffeeSources =[
    './public/javascripts/App/**/*.coffee'
];
gulp.task('indent',function(){
    gulp.src(jsSources)
        .pipe(indent({
            tabs:true,
            amount:2
        })).pipe(debug())
        .pipe(gulp.dest("."));
});

gulp.task('beautify',function(){
        gulp.src(jsSources)
            .pipe(beautify({indentSize: 2}))
            .pipe(debug())
            .pipe(gulp.dest('./public/javascripts/App'));
});

gulp.task('coffee',function(){
   gulp.src(coffeeSources)
       .pipe(coffee({bare:false}).
        on('error',gutil.log))
       .pipe(gulp.dest('./public/javascripts/App'));


});
