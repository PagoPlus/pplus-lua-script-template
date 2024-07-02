JSON = require("JSON")

_G.json = {
  decode = function (str)
    return JSON:decode(str)
  end,

  encode = function (str)
    return JSON:encode(str)
  end,
}

_G.globals = {
  id = function ()
    return "test-id"
  end,

  runid = function ()
    return "test-run-id"
  end,

  print = _G.print,
}

_G.pplus = {
  set_script_metadata = function(metadata)
    return true, nil
  end,

  get_script_metadata = function ()
    return {
      name = "test",
      version = "0.0.1",
      description = "Test helpers package",
      settings_form = nil,
      settings_schema = nil
    }
  end,

  get_settings = function ()
    return nil
  end,

  get_token = function ()
    return nil
  end,

  get_api = function ()
    return "https://pagoplus.fly.dev/api/graphql"
  end,

  execute = function ()
    return "Not implemented for tests", nil
  end
}