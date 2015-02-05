module.exports = (grunt) ->
  grunt.initConfig
    sass :
      styleguide:
        files : [
          cwd : 'styleguide/src',
          src : '*.scss'
          dest : "styleguide/build"
        ]
    jade :
      styleguide:
        options :
          basedir : "styleguide/src"
        files : [
          expand : true,
          cwd : "styleguide/src",
          src : "**/*.jade",
          dest : "styleguide/build"
        ]
    connect:
      styleguide:
        options:
          port : 1099
          hostname : "*"
          base : "styleguide/build"
    watch :
      dist:
        files : 'styleguide/src/'
        tasks : ['jade:dist']
      
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.registerTask "default", ["sass:styleguide", "jade:styleguide", "connect"]
  
  