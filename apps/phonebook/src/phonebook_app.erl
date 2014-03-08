-module(phonebook_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    lager:warning("Phonebook started!"),
    phonebook_sup:start_link().

stop(_State) ->
    ok.
