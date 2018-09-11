defmodule Scheduler do
  # Receive message from the worker
  # and produce the result
  def res_loop do
    receive do
      {:ok,_} ->
        #IO.puts number
        send self(), :exit
        res_loop()
    # Kills the process after it returns 
    # the message.
      :exit ->
        Process.exit(self(),:normal)
    # In case of other 
      _->
        res_loop()
    end
  end
end
