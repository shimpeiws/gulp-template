gulp = require 'gulp'
coffee = require 'gulp-coffee'
sass = require 'gulp-ruby-sass'
plumber = require 'gulp-plumber'
bower = require 'main-bower-files'
# browserify = require 'gulp-browserify'
browserify = require 'browserify'
rename = require 'gulp-rename'
coffeeify = require 'coffeeify'
source = require 'vinyl-source-stream'
debowerify = require 'debowerify'

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

gulp.task 'browserify' , ->
  browserify
    entries: ['./coffee/lib/main.coffee']
    extensions: ['.coffee']
  .bundle()
  .pipe source 'app.js'
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
  # gulp.run ['bower', 'coffee', 'sass']
  gulp.run ['bower', 'browserify', 'coffee', 'sass']