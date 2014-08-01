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
          "less/theme.css": "less/theme.less"
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
        src: 'less/*.css', 
        dest: 'css/'
      }
    },
    clean: {
      less: ['less/*.css'],
      css: ['css/theme.css']
    },

    cssmin: {
      minify: {
        files: {
          'css/theme.min.css':'css/theme.css'
        }
      }
    },

    watch: {
      css: {
        files: ['less/**/*'],
        tasks: 'css'
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-autoprefixer');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('css', ['less','autoprefixer','clean:less','cssmin','clean:css']);
  grunt.registerTask('default', 'css');
};