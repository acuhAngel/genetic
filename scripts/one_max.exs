genotype = fn -> for _ <- 1..1000, do: Enum.random(0..1) end
max_fitnes = 1000
fitness_function = fn chromosome -> Enum.sum (chromosome) end
slon = Genetic.run(fitness_function, genotype, max_fitnes, [])

IO.write("\n")
IO.inspect(slon)
