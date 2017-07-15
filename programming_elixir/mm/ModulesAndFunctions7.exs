# -Convert a float to a string with two decimal digits. (Erlang)
# –Get the value of an operating-system environment variable. (Elixir)
# –Return the extension component of a file name (so return .exs if given"dave/test.exs"). (Elixir)
# –Return the process’s current working directory. (Elixir)
# –Convert a string containing JSON into Elixir data structures. (Justfind; don’t install.)
# –Execute a command in your operating system’s shell.


# -Convert a float to a string with two decimal digits. (Erlang)
:io.format("~.2f~n", [2.0])

# Get the value of an operating-system environment variable. (Elixir)
System.get_env("USER")

# Return the extension component of a file name (so return .exs if given"dave/test.exs"). (Elixir)
Path.extname("dave/test.exs")

# Return the process’s current working directory. (Elixir)
System.cwd()

# Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
# https://github.com/devinus/poison

# Execute a command in your operating system’s shell.
System.cmd "echo", ["hello"]
