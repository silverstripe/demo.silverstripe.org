    var gulp = require('gulp'),
        sass = require('gulp-sass'),
      uglify = require('gulp-uglify'),
      rename = require('gulp-rename'),
      concat = require('gulp-concat'),
  sourcemaps = require('gulp-sourcemaps'),
autoprefixer = require('gulp-autoprefixer');

// Uglifies JS
gulp.task('scripts', function(){
  gulp.src('js/*.js')
  .pipe(concat('build.js'))
  .pipe(gulp.dest('js/build/'));
  // .pipe(rename('build.min.js'))
  // .pipe(uglify())
  // .pipe(gulp.dest('js/'));
});

// Compile SASS Task
gulp.task('sass', function(){
  gulp.src('scss/**/*.scss')
  .pipe(sourcemaps.init())
  .pipe(sass().on('error', sass.logError))
  .pipe(sourcemaps.write())
  .pipe(autoprefixer({browsers: ['last 2 versions', '> 5%', 'Firefox ESR']}))
  .pipe(gulp.dest('css/'));
});

// Watches JS and SASS
gulp.task('watch', function(){
    gulp.watch('js/**/*.js', ['scripts']);
    gulp.watch('scss/**/*.scss', ['sass']);
});

// Default Gulp action
gulp.task('default', ['scripts', 'sass']);
