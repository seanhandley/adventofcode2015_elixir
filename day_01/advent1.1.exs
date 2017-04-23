File.read!("./input.txt")
|> to_charlist
|> Enum.map(&(if &1 == 40, do: 1, else: -1))
|> Enum.sum
|> IO.puts
