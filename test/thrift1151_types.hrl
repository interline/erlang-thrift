-ifndef(_thrift1151_types_included).
-define(_thrift1151_types_included, yeah).

%% struct structA

-record(structA, {x = undefined :: integer()}).

%% struct structB

-record(structB, {x = undefined :: integer()}).

%% struct structC

-record(structC, {x = #structA{} :: #structA{}}).

-endif.
