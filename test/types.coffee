{expect} = require "chai"
types = require "./../lib/types"

describe "swk-types", ->
  it "is an object", ->
    expect(types).to.be.an "object"

  describe "which", ->
    it "is a method", ->
      expect(types.which).to.be.a "function"

    it "returns 'null' when value is null", ->
      expect(types.which(null)).to.equal "null"

    it "returns 'nan' when value is NaN", ->
      expect(types.which("a"/2)).to.equal "nan"

    it "returns 'number' when value is an integer", ->
      expect(types.which(123)).to.equal "number"

    it "returns 'number' when value is a float", ->
      expect(types.which(1.23)).to.equal "number"

    it "returns 'array' when value is an array", ->
      expect(types.which([])).to.equal "array"

    it "returns 'object' when value is an object", ->
      expect(types.which({})).to.equal "object"

    it "returns 'string' when value is a string", ->
      expect(types.which("foo")).to.equal "string"

    it "returns 'function' when value is a function", ->
      expect(types.which(->)).to.equal "function"

    it "returns 'boolean' when value is a boolean", ->
      expect(types.which(true)).to.equal "boolean"

    it "returns 'undefiend' when value is undefined", ->
      expect(types.which()).to.equal "undefined"

  describe "is", ->
    it "is a method", ->
      expect(types.is).to.be.a "function"

    it "returns true when the value matches the string identifier",  ->
      _types =
        "null": null,
        "nan": "foo"/1,
        "number":123,
        "number":1.23,
        "object":{},
        "array":[],
        "string":"foo",
        "function":->,
        "boolean":true,
        "undefined":undefined

      for typeIdentifier, type in types
        expect(types.which(type)).to.equal typeIdentifier

