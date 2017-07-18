#import cson from 'cson'
module.exports =
  name: "json2cson" #json-cson
  from:
    scopeName: 'source.json'
    fileTypes: ['*=".json"']
  to:
    scopeName: 'source.coffee'
    ext: '.cson'

  transpile: (source, {indent}) ->
    cson = require 'cson'
    cson.createString (cson.parse source), indent: indent
