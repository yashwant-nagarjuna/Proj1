# COP5615 DOS Project-1

# Student Name: Yashwant Nagarjuna Kuppa
## UFID: 71814301
## No. of Group member(s): 1
**Lucas Square Pyramid**

#### Running the application from command-line

```elixir
mix run lib/proj1.ex arg1 arg2
```

#### Running the program time 
``` elixir
time mix run lib/proj1.ex
```
* For running the file for multiple outputs please `mix clean` and then run for multiple outputs.

===========================================
**Size of the work unit.**
Three module are created.

1. proj1.ex -> This module takes in the user input `n`, `k` and divides the work among `sqrt(n)` actors. These actors will  be sent to the worker module to calculate the sum of the squares.
2. worker.ex -> This module calculates the sum of the squares and determines if it is a perfect square. The result is sent as a message to the scheduler module.
3. scheduler.ex -> This module takes the result from the worker module, prints the result and kills the process, returning the result.

Work unit: Each actor gets `sqrt(n)` range of numbers to operate upon.

===========================================

**Output for** `elixir` **Project1 1000000 4**

```bash
$ mix run lib/proj1.ex 1000000 4
Compiling three files (.ex)

real 0m3.155s
user 0m7.909s
sys  0m0.318
```
CPU time = user time + sys time
Hence, # cores used in the computation = CPU time/real time = 2.608

===========================================

**The largest problem managed to solve**

```elixir
mix run lib/proj1.ex 100000000 4
[]
```
Empty list.

===========================================




<!-- ## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `proj1` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:proj1, "~> 0.1.0"}
  ]
end
``` -->
<!-- 
Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/proj1](https://hexdocs.pm/proj1). -->



