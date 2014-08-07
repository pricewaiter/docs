module.exports = function(grunt) {
    grunt.initConfig({
        less: {
            development: {
                options: {
                    compress: false,
                    yuicompress: false,
                    optimization: 2
                },
                files: {
                    // target.css file: source.less file
                    "_assets/less/theme.css": "_assets/less/theme.less"
                }
            }
        },
        autoprefixer: {
            options: {
                // Task-specific options go here.????
            },
            multiple_files: {
                expand: true,
                flatten: true,
                src: '_assets/less/*.css',
                dest: '_assets/css/'
            }
        },
        clean: {
            less: ['_assets/less/*.css'],
            css: ['_assets/css/theme.css']
        },

        cssmin: {
            minify: {
                files: {
                    '_assets/css/theme.min.css': '_assets/css/theme.css'
                }
            }
        },

        watch: {
            css: {
                files: ['_assets/less/**/*'],
                tasks: 'css'
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-autoprefixer');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('css', ['less', 'autoprefixer', 'clean:less', 'cssmin', 'clean:css']);
    grunt.registerTask('default', 'css');
};
