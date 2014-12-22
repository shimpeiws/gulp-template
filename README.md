gulp-template
=============

* gulp + bower + browerify

# directories

```
.
├── README.md
├── bower.json
├──【ignored】bower_components
├── coffee
│   ├── lib
│   └── src
├── css
├── gulpfile.coffee
├── index.html
├── js
│   ├── 【ignored】lib
├── 【ignored】node_modules
├── package.json
└── sass
```

# run

```
% gulp
[08:56:10] Requiring external module coffee-script/register
[08:56:12] Using gulpfile ~/Desktop/src/gulp-template/gulpfile.coffee
[08:56:12] Starting 'default'...
gulp.run() has been deprecated. Use task dependencies or gulp.watch task triggering instead.
[08:56:12] Starting 'bower'...
[08:56:12] Starting 'browserify'...
[08:56:12] Starting 'coffee'...
[08:56:12] Starting 'sass'...
[08:56:12] Finished 'default' after 21 ms
[08:56:12] Finished 'browserify' after 16 ms
[08:56:12] Finished 'coffee' after 52 ms
[08:56:12] Finished 'bower' after 69 ms
[08:56:14] gulp-ruby-sass: directory
[08:56:14] gulp-ruby-sass: write test.css
[08:56:14] Finished 'sass' after 2 s
```

```
% gulp watch
[08:59:29] Requiring external module coffee-script/register
[08:59:31] Using gulpfile ~/Desktop/src/gulp-template/gulpfile.coffee
[08:59:31] Starting 'coffee'...
[08:59:31] Starting 'sass'...
[08:59:31] Finished 'coffee' after 40 ms
[08:59:33] gulp-ruby-sass: directory
[08:59:33] gulp-ruby-sass: write test.css
[08:59:33] Finished 'sass' after 2.18 s
[08:59:33] Starting 'build'...
[08:59:33] Finished 'build' after 10 μs
[08:59:33] Starting 'watch'...
[08:59:33] Finished 'watch' after 6.95 ms
```