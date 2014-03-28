module.exports = function(grunt) {
  grunt.loadNpmTasks('dr-grunt-svg-sprites');
  grunt.loadNpmTasks('grunt-contrib-compass');
  grunt.loadNpmTasks('grunt-contrib-watch');

   grunt.initConfig({
      "svg-sprites": {
          options: {
              spriteElementPath: "images",
              spritePath: "images/sprites",
              cssPath: "styles/css",
          },
          svg: {
            options: {
                prefix: "icon",
                cssPrefix: '',
                sizes: {
                    large: 128
                },
                refSize: 128
            }
          }
      },
      "compass": {
        dist: {
          options: {
            config: 'config.rb'
          }
        }
      },
      "watch": {
        scripts: {
          files: ['**/*.scss'],
          tasks: ['compass'],
          options: {
            spawn: false,
          },
        },
        svg: {
          files: ['**/*.svg'],
          tasks: ['svg-sprites'],
          options: {
            spawn: true,
          },
        }
      },
  });

  grunt.registerTask('default', ["svg-sprites", "compass"]);
};