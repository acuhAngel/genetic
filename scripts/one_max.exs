# 3rd version
defmodule OneMax do
  @behaviour Problem

  alias Types.Chromosome

  @impl true
  def genotype do
    genes = for _ <- 1..42, do: Enum.random(0..1)
    %Chromosome{genes: genes, size: 42}
  end

  @impl true
  def fitness_function(chromosome), do: Enum.sum(chromosome.genes)

  @impl true
  def terminate?([best | _]), do: best.fitness == 42
end

soln = Genetic.run(OneMax)
IO.write("\n")
IO.inspect(soln)

# 2nd version
# genotype = fn -> for _ <- 1..1000, do: Enum.random(0..1) end
# max_fitnes = 1000
# fitness_function = fn chromosome -> Enum.sum (chromosome) end
# slon = Genetic.run(fitness_function, genotype, max_fitnes, [])

# IO.write("\n")
# IO.inspect(slon)
