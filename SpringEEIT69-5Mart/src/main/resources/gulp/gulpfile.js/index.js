const gulp = require("gulp");
const $ = require("gulp-load-plugins")({ lazy: false });
const autoprefixer = require("autoprefixer");
const minimist = require("minimist");
const browserSync = require("browser-sync").create();
const { envOptions } = require("./envOptions");

let options = minimist(process.argv.slice(2), envOptions);
//現在開發狀態
console.log(`Current mode：${options.env}`);

function copyFile() {
    return gulp
        .src(envOptions.copyFile.src)
        .pipe(gulp.dest(envOptions.copyFile.path))
        .pipe(
            browserSync.reload({
                stream: true,
            })
        );
}

function sass() {
    const plugins = options.env === "prod" ? [autoprefixer(), require("cssnano")()] : [autoprefixer()];
    return gulp.src(envOptions.style.src).pipe($.sourcemaps.init()).pipe($.sass().on("error", $.sass.logError)).pipe($.postcss(plugins)).pipe($.sourcemaps.write(".")).pipe(gulp.dest(envOptions.style.path));
}

function clean() {
    return gulp
        .src(envOptions.clean.src, {
            read: false,
            allowEmpty: true,
        })
        .pipe($.clean({ force: true }));
}

function watch() {
    gulp.watch(envOptions.style.src, gulp.series(sass));
}

exports.clean = clean;

exports.build = gulp.series(clean, copyFile, sass);

exports.default = gulp.series(clean, copyFile, sass, gulp.parallel(watch));

