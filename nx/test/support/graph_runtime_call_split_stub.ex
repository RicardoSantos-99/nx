defmodule Nx.Defn.GraphRuntimeCallSplitStub do
  @moduledoc false
  import Nx.Defn

  defn rt(x) do
    out = Nx.template(Nx.shape(x), Nx.type(x))
    Nx.runtime_call(out, x, [], &__MODULE__.cb/2)
  end

  def cb(y, _opts), do: Nx.negate(y)
end
