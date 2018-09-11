defmodule Scheduler do
  def res_loop do
    receive do
      {:ok,_} ->
        #IO.puts number
        send self(), :exit
        res_loop()
      :exit ->
        Process.exit(self(),:brutalkill)
      _->
        res_loop()
    end
  end
end
