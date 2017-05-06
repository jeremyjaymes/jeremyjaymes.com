var gulp	= require("gulp"),
	sass	= require("gulp-sass"),
	hash	= require("gulp-hash"),
	del		= require("del")

var paths = {
	theme: './themes/j'
};

gulp.task("scss", function () {

	del([paths.theme + "/static/css/**/*"])

	gulp.src(paths.theme + "/scss/**/dist.scss")
		.pipe(sass({
			outputStyle : "compressed"
		}))
		.pipe(hash())
		.pipe(gulp.dest(paths.theme + "/static/css"))
		//Create a hash map
        .pipe(hash.manifest("hash.json"))
        //Put the map in the data directory
        .pipe(gulp.dest("data/css"))
})

gulp.task('copy', function() {
	gulp.src('node_modules/avalanche-css/_avalanche.scss')
		.pipe(gulp.dest(paths.theme + '/scss/layout'))
})

gulp.task("watch", ["scss"], function() {
	gulp.watch(paths.theme + "/scss/**/*", ["scss"])
})