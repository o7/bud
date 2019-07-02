use Mix.Config

config :n2o,
  pickler: :n2o_secret,
  mq: :n2o_syn,
  port: 8043,
  upload: "./priv/static",
  protocols: [:n2o_nitro, :n2o_ftp],
  routes: BUD.Routes

config :kvs,
  dba: :kvs_rocks,
  dba_st: :kvs_st,
  schema: [:kvs, :kvs_stream, :bpe_metainfo]

config :form,
  registry: [BUD.Trace, BUD.Row, BUD.Act, BUD.Pass]
