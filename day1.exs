defmodule Task2 do
  @digits %{
    "one" => 1,
    "two" => 2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9
  }

  def solve(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&convert_line/1)
    |> Enum.sum()
  end

  def convert_line(line) do
    10 * first_digit(line) + last_digit(String.reverse(line))
  end

  defp first_digit(line), do: extract_digit(line, @digits)
  defp last_digit(line), do: extract_digit(line, Map.new(@digits, fn {k, v} -> {String.reverse(k), v} end))

  defp extract_digit(line, digits) do
    Enum.find_value(digits, fn {pattern, value} ->
      if String.starts_with?(line, pattern), do: value, else: nil
    end) || 0
  end

  def run() do
    input = IO.read(:stdio, :all)
    solve(input)
    |> Integer.to_string()
    |> IO.puts
  end

end

Task2.run()

