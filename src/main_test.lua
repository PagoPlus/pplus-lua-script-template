require 'busted.runner'()
require 'busted'
require 'helpers.test_helpers'

describe("main", function()
  local main

  setup(function()
    main = require("main")
  end)

  it("sets a variable var for the script version", function()
    assert.equal('0.0.1', _G.script_version)
  end)

  it("returns a value from json", function ()
    assert.equal('bar', main['foo'])
  end)
end)