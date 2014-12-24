gulp = require 'gulp'
coffee = require 'gulp-coffee'
sass = require 'gulp-ruby-sass'
plumber = require 'gulp-plumber'
bower = require 'main-bower-files'
browserify = require 'gulp-browserify'
rename = require 'gulp-rename'
# coffeeify = require 'coffeeify'
source = require 'vinyl-source-stream'

files =
  coffee: 'coffee/src/**/*.coffee'
  coffeeLib: 'coffee/lib/**/*.coffee'
  sass: 'sass/**/*.scss'

dest =
  js: 'js/'
  css: 'css/'
  jsLib: 'js/lib/'

# 通常のcoffeeコンパイル
gulp.task 'coffee', ->
  gulp.src files.coffee
    .pipe plumber()
    .pipe coffee
      bare: true
    .pipe gulp.dest dest.js
    
# browserify
gulp.task 'browserify', ->
  gulp.src files.coffeeLib, read: false
  .pipe plumber()
  .pipe browserify
    transform: ['coffeeify']
    extentions: ['.coffee']
    debug: true
  .pipe rename 'app.js'
  .pipe gulp.dest dest.jsLib

gulp.task 'sass', ->
  gulp.src files.sass
    .pipe plumber()
    .pipe sass
      style: 'expanded'
    .pipe gulp.dest dest.css
    
gulp.task 'bower', ->
  gulp.src bower(), base: 'bower_components', bowerJson: 'bower.json'
    .pipe gulp.dest dest.jsLib
 
gulp.task 'watch', ['build'], ->
  gulp.watch [files.coffee, files.sass], ['coffee', 'sass']

gulp.task 'build', ['coffee', 'sass']

# gulp
gulp.task 'default', ->
  gulp.run ['bower', 'browserify', 'coffee', 'sass']