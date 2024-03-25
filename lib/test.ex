defmodule Test do
  @moduledoc """
  Documentation for `Test`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Test.hello()
      :world

  """
  use Timex

  def my_function() do
    korea_now = Timex.now("Asia/Seoul")
    IO.puts("This is my function")

    case korea_now do
      {:error, _} ->
        IO.puts("error")

      now ->
        IO.puts("korea now = #{now}")
    end
  end

  def hello do
    :world
  end

  def main(str) do
    my_function()

    multi_line_function = fn param1, param2 ->
      IO.puts("param1 = #{param1}")
      IO.puts("param2 = #{param2}")
    end

    multi_line_function.("hello", "world")
    i = str |> String.length()
    i / 2
  end
end
