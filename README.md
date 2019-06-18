BUD: Capital Budgeting
======================

TL;DR Business example of how to use BPE from Elixir.

Features
--------

* Usage Example of N2O, KVX, BPE, NITRO
* RocksDB support out of the box

Prerequisites
-------------

* cmake (rocksdb)

Run
---

Before running, [fullchain.pem](./priv/ssl/fullchain.pem) certificate has to be added into a system.

```
$ mix deps.get
$ mix compile
$ iex -S mix
```

Then open `https://localhost:8042/app/index.html`

Notes
-----

* [2019-04-11 BPE 4.4](https://tonpa.guru/stream/2019/2019-04-11%20Новая%20версия%20BPE.htm)

Credits
-------

* Maxim Sokhatsky [5HT](https://github.com/5HT)

OM A HUM
