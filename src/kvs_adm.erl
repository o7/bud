-module(kvs_adm).
-compile(export_all).
-include_lib("nitro/include/nitro.hrl").
-include_lib("kvs/include/kvs.hrl").
-include_lib("kvs/include/cursors.hrl").

event(streams) ->
   [ nitro:insert_bottom(streams, #panel{body = [#link{ href= "kvs.htm?writer=" ++ Id,
     body = Id, postback = {link,Id}}," (" ++ integer_to_list(C) ++ ")"]})
     || #writer{id = Id, count = C} <- kvs:all(writer) ];

event({link,Id}) ->
   nitro:clear(datawin),
   [ nitro:insert_bottom(datawin, #panel{body=nitro:compact(Tuple)}) || Tuple <- kvs:feed(Id) ];

event(init) ->
   [ self() ! {direct,X} || X <- [streams,vm] ];

event(vm) ->
   nitro:update(disc, #span{id = disc, body = hd(string:tokens(os:cmd("du -hs rocksdb"),"\t"))}),
   nitro:update(ram, #span{id = ram, body = ram(os:type())}),
   nitro:update(session, #span{id = session, body = n2o:sid()}),
   nitro:update(enode, #span{id = enode, body = lists:concat([node()])});

event(_) -> [].

ram({_,darwin}) ->
   Mem = os:cmd("top -l 1 -s 0 | grep PhysMem"),
   [L,C,R]=string:tokens(lists:filter(fun(X) -> lists:member(X,"0123456789M") end, Mem),"M"),
   lists:concat([L,"/",list_to_integer(L)+list_to_integer(R),"M"]);

ram({_,linux}) ->
   [T,U,_,_,B,C] = lists:sublist(string:tokens(os:cmd("free")," \n"),8,6),
   Mem = (nitro:to_integer(U)-(nitro:to_integer(B)+nitro:to_integer(C))) div 1000,
   lists:concat([Mem,"/",nitro:to_integer(T) div 1000,"M"]);

ram(OS) ->
   "Unknown OS: " ++ io_lib:format("~tp",[OS]).
