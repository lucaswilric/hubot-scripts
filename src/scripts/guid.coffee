# Description
#   Generates a GUID
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot guid
#
# Author:
#   lucaswilric

createGUID = () ->
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace /[xy]/g, (c) ->
    r = Math.random()*16|0
    v = (if c == 'x' then r else (r&0x3|0x8))
    return v.toString(16)

module.exports = (robot) ->
  robot.respond /guid/i, (msg) ->
    msg.send createGUID()

