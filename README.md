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

* [2019-03-07 FORMS 4.3](https://tonpa.guru/stream/2019/2019-03-07%20Новая%20версия%20FORMS.htm)
* [2019-04-11 BPE 4.4](https://tonpa.guru/stream/2019/2019-04-11%20Новая%20версия%20BPE.htm)
* [2019-04-13 KVX 6.4](https://tonpa.guru/stream/2019/2019-04-13%20Новая%20версия%20KVX.htm)
* [2019-06-10 N2O 6.6](https://tonpa.guru/stream/2019/2019-06-10%20N2O%20MIX.htm)
* [2019-06-19 BPE 6.6](https://tonpa.guru/stream/2019/2019-06-19%20BPE%20MIX.htm)
* [2019-06-21 BUD 6.6](https://tonpa.guru/stream/2019/2019-06-21%20Новые%20версии%20BUD%20и%20BANK.htm)
* [2019-03-07 FORMS 4.3](https://tonpa.guru/stream/2019/2019-03-07%20Новая%20версия%20FORMS.htm)

Credits
-------

* Maxim Sokhatsky [5HT](https://github.com/5HT)

OM A HUM
