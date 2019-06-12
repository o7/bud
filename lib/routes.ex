defmodule BUD.Routes do
  require N2O

  def finish(state, context), do: {:ok, state, context}

  def init(state, context) do
    %{path: path} = N2O.cx(context, :req)
    {:ok, state, N2O.cx(context, path: path, module: route_prefix(path))}
  end

  defp route_prefix(<<"/ws/", p::binary>>), do: route(p)
  defp route_prefix(<<"/", p::binary>>), do: route(p)
  defp route_prefix(path), do: route(path)

  defp route(<<>>), do: BUD.Login
  defp route(<<"index", _::binary>>), do: BUD.Index
  defp route(<<"login", _::binary>>), do: BUD.Login
  defp route(<<"app/index", _::binary>>), do: BUD.Index
  defp route(<<"app/login", _::binary>>), do: BUD.Login
  defp route(_), do: BUD.Login
end
