eco       = require "eco"
{fixture} = require "fixtures"

module.exports =
  "requiring eco templates as modules": (test) ->
    test.expect 2
    require.paths.unshift __dirname + "/fixtures"

    hello = require "hello"
    test.ok typeof hello is "function"
    test.same fixture("hello.out.1"), hello name: "Sam"

    test.done()
