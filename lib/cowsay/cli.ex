defmodule CowSay.CLI do
  @type_of_lines %{underscore: "_", hyphen: "-"}
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
    IO.puts(draw_line(40, " ", type: :underscore))
    IO.puts("/ You have Egyptian flu: you're going to \\")
    IO.puts("\\ be a mummy.                            /")
    IO.puts(draw_line(40, " ", type: :hyphen))
  end

  defp draw_cow do
    IO.puts("\\   ^__^")
    IO.puts(" \\  (oo)\\_______")
    IO.puts("    (__)\\       )\\/\\")
    IO.puts("         ||----w |")
    IO.puts("         ||     ||")
  end

  defp duplicate(char, times \\ 1) do
    String.duplicate(char, times)
  end

  defp draw_line(length, prepend \\ nil, opts \\ [])

  defp draw_line(length, prepend, opts) when is_list(opts) and is_number(length) do
    line_type = Keyword.get(opts, :type, :underscore)
    line_char = Map.get(@type_of_lines, line_type)
    draw_line(line_char, length, prepend)
  end

  defp draw_line(line_char, length, nil) do
    duplicate(line_char, length)
  end

  defp draw_line(line_char, length, prepend) do
    prepend <> duplicate(line_char, length)
  end
end
