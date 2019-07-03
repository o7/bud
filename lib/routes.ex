defmodule BUD.Routes do
  use N2O, with: [:n2o, :nitro]

  def finish(state, context), do: {:ok, state, context}

  def init(state, context) do
    %{path: path} = cx(context, :req)
    {:ok, state, cx(context, path: path, module: route_prefix(path))}
  end

  def route_prefix(<<"/ws/", p::binary>>), do: route(p)
  def route_prefix(<<"/", p::binary>>), do: route(p)
  def route_prefix(path), do: route(path)

  def route(<<>>), do: BUD.Index
  def route(<<"bpe", _::binary>>), do: BUD.Index
  def route(<<"login", _::binary>>), do: BUD.Login
  def route(<<"forms", _::binary>>), do: BUD.Forms
  def route(<<"act", _::binary>>), do: BUD.Act
  def route(<<"kvs", _::binary>>), do: :adm_kvs
  def route(<<"app/bpe", _::binary>>), do: BUD.Index
  def route(<<"app/login", _::binary>>), do: BUD.Login
  def route(<<"app/forms", _::binary>>), do: BUD.Forms
  def route(<<"app/act", _::binary>>), do: BUD.Act
  def route(<<"app/kvs", _::binary>>), do: :adm_kvs
  def route(_), do: BUD.Login
end
