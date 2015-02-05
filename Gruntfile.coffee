module.exports = (grunt) ->
  grunt.initConfig
    harp :
      server :
        server :true
        source : 'styleguide/src'
      dist :
        source : 'styleguide/src'
        dest : 'styleguide/build'
    watch :
      dist:
        files : 'styleguide/src/'
        tasks : ['harp:dist']
      
  grunt.loadNpmTasks 'grunt-harp'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.registerTask "default", ["harp:dist", "harp:server"]
  
  