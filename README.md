<h2 align = "center">  COP5615: DISTRIBUTED OPERATING SYSTEMS </h2>
<h2 align = "center" > Project-1 </h2>

<p> <b>Submitted by: </b> <br/>
Student Name: Yashwant Nagarjuna Kuppa <br/>
UFID: 7181-4301 <br/>
No. of Group member(s): 1 <br/> </p>

#### Running the application from command-line

```elixir
mix run lib/proj1.ex arg1 arg2
```

#### Command for calculating the run time  
``` elixir
time mix run lib/proj1.ex
```
* For running the file for multiple outputs run the command `mix clean` and then run for multiple outputs.

============================================================

**Size of the work unit.** <br/>
I calculated the size of subproblem by trying various different values and I observed that optimal performance is obtained at `sqrt(n)` number of processes.

Three module are created.

1. `proj1.ex` -> This module takes in the user input `n`, `k` and divides the work among `sqrt(n)` actors. These actors will  be sent to the worker module to calculate the sum of the squares.
2. `worker.ex` -> This module calculates the sum of the squares and determines if it is a perfect square. The result is sent as a message to the scheduler module.
3. `scheduler.ex` -> This module takes the result from the worker module, prints the result and kills the process, returning the result.

Work unit: Each actor gets `sqrt(n)` range of numbers to operate upon.

================================================

**Output for** `elixir` **Project1 1000000 4**

```bash
$ mix run lib/proj1.ex 1000000 4
Compiling three files (.ex)

real 0m2.572s
user 0m7.809s
sys  0m0.255s
```
CPU time = user time + sys time
Hence, # cores used in the computation = CPU time/real time = 3.13

===========================================

**The largest problem managed to solve**

```elixir
mix run lib/proj1.ex 100000000 4
[]
```
Empty list.

===========================================