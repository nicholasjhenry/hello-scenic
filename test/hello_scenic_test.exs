defmodule HelloScenicTest do
  use ExUnit.Case
  doctest HelloScenic

  test "greets the world" do
    assert HelloScenic.hello() == :world
  end
end
