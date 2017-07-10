var gulp = require('gulp')
webserver = require('gulp-webserver');

var SERVER_PORT = 4000;

gulp.task('default', ['serve']);

gulp.task('serve', function () {
  gulp.src('./docs')
    .pipe(webserver({
      livereload: true,
      open: true,
      port: SERVER_PORT
    }));
});