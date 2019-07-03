-module(adm_kvs).
-compile(export_all).
-include_lib("nitro/include/nitro.hrl").
-include_lib("kvs/include/kvs.hrl").
-include_lib("kvs/include/cursors.hrl").

event(init) -> io:format("OK~n"),
   [ self() ! {direct,X} || X <- [streams] ],
   Disc = hd(string:tokens(os:cmd("du -hs rocksdb"),"\t")),
   io:format("Disk: ~p~n",[Disc]),
   nitro:update(disc, #span{id = disc, body = Disc}),
   RAM = case os:type() of
         {_,darwin} -> [L,C,R]=string:tokens(lists:filter(fun(X) ->
                       lists:member(X,"0123456789M") end,os:cmd("top -l 1 -s 0 | grep PhysMem")),"M"),
                       lists:concat([L,"/",list_to_integer(L)+list_to_integer(R),"M"]);
          {_,linux} -> [T,U,_,_,B,C] = lists:sublist(string:tokens(os:cmd("free")," \n"),8,6),
                       lists:concat([(nitro:to_integer(U)
                                    -(nitro:to_integer(B)
                                    +nitro:to_integer(C))) div 1000,
                                              "/",nitro:to_integer(T) div 1000,"M"]);
                          OS -> "Unknown OS: " ++ io_lib:format("~tp",[OS]) end,
   nitro:update(ram, #span{id = ram, body = RAM}),
   nitro:update(session, #span{id = session, body = n2o:sid()}),
   nitro:update(enode, #span{id = enode, body = lists:concat([node()])}),
   ok;

event(streams) ->
   [ nitro:insert_bottom(streams, #link{ href= "kvx.htm?writer=" ++ Id, 
     body = Id, postback = {link,Id}})  || #writer{id = Id} <- kvs:all(writer) ];

event({link,Id}) ->
   nitro:clear(datawin),
   [ nitro:insert_bottom(datawin, #panel{body=compact(Tuple)}) || Tuple <- kvs:feed(Id) ];

event(U) -> io:format("Unknown Event: ~p~n\n",[U]).

compact(Tuple) when is_tuple(Tuple) ->
     Min = erlang:min(10,size(Tuple)),
     Fields = lists:zip(lists:seq(1,Min),lists:sublist(tuple_to_list(Tuple),1,Min)),
     nitro:jse(iolist_to_binary([ io_lib:format("~p",[compact(F)]) || {_,F}<- Fields ]));
compact(Tuple) -> Tuple.
