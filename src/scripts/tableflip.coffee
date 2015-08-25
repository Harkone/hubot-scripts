# Description:
#   Sometimes you got to flip a table
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   tableflip - TFbot will watch you flip some tables.
#   TFBot flip a table - TFBot will watch you flip a table.
#
# Author:
#   harkone (lee chen)

tableflips = [
  " (╯°□°）╯︵ ┻━┻",
  " (ﾉಥ益ಥ）ﾉ﻿ ┻━┻",
  " ┻━┻ ︵ヽ(`Д´)ﾉ︵﻿ ┻━┻",
  " (ノಠ益ಠ)ノ彡┻━┻",
  " (╯ಠ_ರೃ)╯︵ ┻━┻",
  " (┛❍ᴥ❍﻿)┛彡┻━┻",
  " (ʘ∇ʘ)ク 彡 ┻━┻",
  " (ノÒ益Ó)ノ彡▔▔▏",
  " /(ò.ó)┛彡┻━┻",
  " (┛◉Д◉)┛彡┻━┻"
]

module.exports = (robot) ->
  robot.hear /tableflip/i, (msg) ->
    msg.emote "watches " + msg.message.user.name + msg.random tableflips

  robot.respond /flip(.*)table/i, (msg) ->
    msg.send msg.random tableflips
