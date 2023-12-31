defmodule Mix.Tasks.SpellCheck do
  @moduledoc "Run codespell on the curriculum"
  @shortdoc @moduledoc

  use Mix.Task

  @impl true
  def run(_) do
    IO.puts("Running: mix spell_check")

    System.cmd(
      "codespell",
      [
        "--skip=./.git,./example_projects/*,./utils/.credo.exs,./utils/deps/*,./.git/*,./utils/lib/assets/*,",
        "-w"
      ],
      cd: "../"
    )
  end
end
