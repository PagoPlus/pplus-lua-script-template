require 'busted.runner'()
require 'busted'

describe("main", function()
  local main

  setup(function()
    main = require("main")
  end)

  it("sets a variable var for the script version", function()
    assert.equal('0.0.1', _G.script_version)
  end)
end)