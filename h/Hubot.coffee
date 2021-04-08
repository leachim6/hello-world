module.exports = (robot) ->
  robot.respond /hello/i, (msg) ->
    msg.send 'Hello World'
