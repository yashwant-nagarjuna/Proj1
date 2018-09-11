defmodule Worker do
  def loop do
    receive do
      {pid,j,k,l} ->
        send(pid,{:ok,gen_array(j,k,l)})
      _->"error"
    end
    loop()
  end

  def gen_array(j,k,l) do
    #Generates an array for each work unit
    values = Enum.to_list(1..l)
    final = Enum.map(values, fn ele -> l*(j-1)+ele end)
     cal_squares(final,k)
  end
  def cal_squares(values,k) do
    # Calculates squares for each unit.
    for j <- values do
      res = Enum.map(j..j+k-1, fn x -> x*x end)
              |> Enum.sum()
      if is_perfect_square(res) == true do
        IO.puts j
      end
      # IO.puts ans
    end
  end

  def is_perfect_square(n) do
    # Checks if the sum of squares is a perfect square or not.
    val = :math.sqrt(n)
    if(trunc(val) == trunc(Float.ceil(val, 0))) do
      true
    end
  end
end
