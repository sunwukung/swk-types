module.exports =
  # confirms that the value is correctly identified as typeidentifier
  is: (typeIdentifier, value) ->
    typeIdentifier is @which value

  # returns the typeidentifier for the value
  which: (value) ->
    if value is null
      return 'null'
    if typeof value is 'number'
      if isNaN(value)
        return 'nan'
      return 'number'
    if typeof value is 'object'
      if typeof value.length is 'number'
        return 'array'
      return 'object'
    if typeof value is 'string'
      return 'string'
    if typeof value is 'function'
      return 'function'
    if typeof value is 'boolean'
      return 'boolean'
    if typeof value is 'undefined'
      return 'undefined'

