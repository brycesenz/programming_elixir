# FIND THE LIBRARY

– Convert a float to a string with two decimal digits. (Erlang)

  io_lib:format("~.2f", [Float_Var]).



– Get the value of an operating-system environment variable. (Elixir)

  System.get_env(varname)



– Return the extension component of a file name (so return .exs if given
"dave/test.exs" ). (Elixir)

  Path.extname(path)



– Return the process’s current working directory. (Elixir)

  System.cwd()


– Convert a string containing JSON into Elixir data structures. (Just
find; don’t install.)

  Poison


– Execute a command in your operating system’s shell.

  System.cmd  -or-
  http://www.erlang.org/doc/man/os.html