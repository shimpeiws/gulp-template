gulp-template
=============

* gulp + bower + browserify

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

# setup

```
% npm install && bower install                                                                                                                                                         [0:21:58]
bower jquery#~2.1.3         not-cached git://github.com/jquery/jquery.git#~2.1.3
bower jquery#~2.1.3            resolve git://github.com/jquery/jquery.git#~2.1.3
bower lodash#~2.4.1         not-cached git://github.com/lodash/lodash.git#~2.4.1
bower lodash#~2.4.1            resolve git://github.com/lodash/lodash.git#~2.4.1
bower lodash#~2.4.1           download https://github.com/lodash/lodash/archive/2.4.1.tar.gz
bower jquery#~2.1.3           download https://github.com/jquery/jquery/archive/2.1.3.tar.gz
bower jquery#~2.1.3            extract archive.tar.gz
bower lodash#~2.4.1            extract archive.tar.gz
bower jquery#~2.1.3           resolved git://github.com/jquery/jquery.git#2.1.3
bower lodash#~2.4.1           resolved git://github.com/lodash/lodash.git#2.4.1
bower jquery#~2.1.3            install jquery#2.1.3
bower lodash#~2.4.1            install lodash#2.4.1
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