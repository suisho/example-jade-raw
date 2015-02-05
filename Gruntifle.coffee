module.exports = (grunt) ->
  grunt.initConfig
    harp :
      server :
        server :true
        source : 'styleguide/src'
      dist :
        source : 'styleguide/src'
        dest : 'styleguide/build'
  grunt.loadNpmTask("grunt-harp")
  
  