defmodule CowsayTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Cowsay

  test "draw" do
    expected =
      " ________________________________________\n" <>
        "/ You have Egyptian flu: you're going to \\\n" <>
        "\\ be a mummy.                            /\n" <>
        "----------------------------------------\n" <>
        "\\   ^__^\n" <>
        "\\  (oo)\\_______\n" <>
        "    (__)\\       )\\/\\\n" <>
        "         ||----w |\n" <>
        "         ||     ||\n"

    assert expected == capture_io(fn -> CowSay.CLI.draw() end)
  end
end
