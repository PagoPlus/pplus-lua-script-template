JSON = require("JSON")

_G.json = {
  decode = function (str)
    return JSON:decode(str)
  end,

  encode = function (str)
    return JSON:encode(str)
  end,
}
