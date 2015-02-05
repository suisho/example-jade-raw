module.exports = (grunt) ->
  grunt.initConfig
    sass :
      styleguide:
        files : [
          cwd : 'styleguide/src',
          src : '**/*.scss'
          dest : "build"
        ]
    jade :
      styleguide:
        options :
          basedir : "./"
        files : [
          expand : ture,
          cwd : "styleguide/src",
          src : "**/*.jade",
          dest : "build"
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
  grunt.registerTask "default", ["sass:styleguide", "jade:stylegude"]
  
  