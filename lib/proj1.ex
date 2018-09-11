
defmodule Proj1 do
  # Takes input and senf the required inputs
  # to the main functions (proj1)
  def time_val(n,k) do
    l = trunc(:math.sqrt(n))
    {time,_} = :timer.tc(Proj1, :proj1, [n,k,l])

  end

  def proj1(n,k,l) do
    # Spawns the scheduler id and the required 
    # work units and calls them.
    values = Enum.to_list(1..trunc(n/l))
    scheduler_id = spawn(Scheduler, :res_loop,[])
    for j <- values do
      worker_id = spawn(Worker, :loop, [])
      send(worker_id, {scheduler_id,j,k,l})
    end
  end
end

[head,tail] = System.argv()
n = String.to_integer(head)
k = String.to_integer(tail)
Proj1.time_val(n,k)
# System.halt(0)
# Proj1.run(System.argv) |> IO.puts
# [n, k] = Enum.map(System.argv, fn(n) -> String.to_integer(n) end)
