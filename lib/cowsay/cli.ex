defmodule CowSay.CLI do
  def main(args) do
    options = [switches: [file: :string], aliases: [f: :file]]
    {opts, _, _} = OptionParser.parse(args, options)
    IO.inspect(opts, label: "Command Line Arguments")
    draw()
  end

  def draw do
    draw_header()
    draw_cow()
  end

  defp draw_header do
    IO.puts(" " <> duplicate("_", 40))
    IO.puts("/ You have Egyptian flu: you're going to \\")
    IO.puts("\\ be a mummy.                            /")
    IO.puts("----------------------------------------")
  end

  defp draw_cow do
    IO.puts("\\   ^__^")
    IO.puts("\\  (oo)\\_______")
    IO.puts("    (__)\\       )\\/\\")
    IO.puts("         ||----w |")
    IO.puts("         ||     ||")
  end

  defp duplicate(char, times \\ 1) do
    String.duplicate(char, times)
  end
end
