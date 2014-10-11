Function::implement = (members) ->
  prototype = @prototype

  for key of members
    if members[key] != prototype[key]
      if prototype.hasOwnProperty key
        warn "overwriting \"#{key}\" in #{@name || this}.prototype"

      Object.defineProperty prototype, key,
        value: members[key],
        enumerable: false

Function::methodize = (context) ->
  callback = this
  -> callback.apply context, [this].add arguments

Function.implement
  throttle: _.throttle.methodize()
  debounce: _.debounce.methodize()
  timeout: (wait) -> setTimeout this, wait
  interval: (wait) -> setInterval this, wait
  defer: -> setTimeout this, 1

