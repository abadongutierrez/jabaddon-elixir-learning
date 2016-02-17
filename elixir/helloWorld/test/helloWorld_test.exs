defmodule HelloWorldTest do
  use ExUnit.Case
  doctest HelloWorld
  # importing only HelloWorld.sum/2 and HelloWorld.sayHello/0
  import HelloWorld, only: [sum: 2, sayHello: 0]

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "sum" do
    # since we imported HelloWorld.sum/2 there is no need to use module HelloWorld here
    assert sum(1, 2) == 3
  end

  test "hello world!" do
      assert sayHello == "Hello World!"
  end
end
