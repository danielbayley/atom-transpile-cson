#import cson2json from './cson-json'
#import json2cson from './json-cson'
module.exports =
  activate: -> [
    require './cson-json'
    require './json-cson'
  ]
