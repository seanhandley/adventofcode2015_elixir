File.read!("./input.txt")
|> to_charlist
|> Enum.map(&(if &1 == 40, do: 1, else: -1))
|> Enum.reduce_while({0, 0}, fn i, acc ->
   {step, level} = acc
   if level >= 0, do: {:cont, {step + 1, level + i}}, else: {:halt, step}
end)
|> IO.puts
