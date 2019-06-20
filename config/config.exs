use Mix.Config

config :n2o,
  pickler: :n2o_secret,
  upload: "./priv/static",
  protocols: [:n2o_nitro, :n2o_ftp],
  routes: BUD.Routes

config :kvx,
  dba: :kvx_rocks,
  dba_st: :kvx_st,
  schema: [:kvx, :kvx_stream]
