CSON = require 'cson-safe'
fs = require 'fs'

describe 'Snippets', ->
  it 'can be parsed without errors', ->
    expect(
      -> CSON.parse fs.readFileSync(__dirname + '/../snippets/raml.cson')
    ).not.toThrow()
