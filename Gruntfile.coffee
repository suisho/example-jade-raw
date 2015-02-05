module.exports = (grunt) ->
  grunt.initConfig
    harp :
      server :
        server :true
        source : 'styleguide/src'
      dist :
        source : 'styleguide/src'
        dest : 'styleguide/build'
  grunt.loadNpmTasks('grunt-harp')
  grunt.registerTask "default", ["grunt-harp"]
  
  