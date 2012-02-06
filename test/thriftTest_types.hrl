-ifndef(_thriftTest_types_included).
-define(_thriftTest_types_included, yeah).

-define(thriftTest_Numberz_ONE, 1).
-define(thriftTest_Numberz_TWO, 2).
-define(thriftTest_Numberz_THREE, 3).
-define(thriftTest_Numberz_FIVE, 5).
-define(thriftTest_Numberz_SIX, 6).
-define(thriftTest_Numberz_EIGHT, 8).

%% struct bonk

-record(bonk, {message = undefined :: string(), 
               type = undefined :: integer()}).

%% struct bools

-record(bools, {im_true = undefined :: boolean(), 
                im_false = undefined :: boolean()}).

%% struct xtruct

-record(xtruct, {string_thing = undefined :: string(), 
                 byte_thing = undefined :: integer(), 
                 i32_thing = undefined :: integer(), 
                 i64_thing = undefined :: integer()}).

%% struct xtruct2

-record(xtruct2, {byte_thing = undefined :: integer(), 
                  struct_thing = #xtruct{} :: #xtruct{}, 
                  i32_thing = undefined :: integer()}).

%% struct xtruct3

-record(xtruct3, {string_thing = undefined :: string(), 
                  changed = undefined :: integer(), 
                  i32_thing = undefined :: integer(), 
                  i64_thing = undefined :: integer()}).

%% struct insanity

-record(insanity, {userMap = dict:new() :: dict(), 
                   xtructs = [] :: list()}).

%% struct crazyNesting

-record(crazyNesting, {string_field = undefined :: string(), 
                       set_field = sets:new() :: set(), 
                       list_field = [] :: list(), 
                       binary_field = undefined :: string()}).

%% struct xception

-record(xception, {errorCode = undefined :: integer(), 
                   message = undefined :: string()}).

%% struct xception2

-record(xception2, {errorCode = undefined :: integer(), 
                    struct_thing = #xtruct{} :: #xtruct{}}).

%% struct emptyStruct

-record(emptyStruct, {}).

%% struct oneField

-record(oneField, {field = #emptyStruct{} :: #emptyStruct{}}).

%% struct versioningTestV1

-record(versioningTestV1, {begin_in_both = undefined :: integer(), 
                           old_string = undefined :: string(), 
                           end_in_both = undefined :: integer()}).

%% struct versioningTestV2

-record(versioningTestV2, {begin_in_both = undefined :: integer(), 
                           newint = undefined :: integer(), 
                           newbyte = undefined :: integer(), 
                           newshort = undefined :: integer(), 
                           newlong = undefined :: integer(), 
                           newdouble = undefined :: float(), 
                           newstruct = #bonk{} :: #bonk{}, 
                           newlist = [] :: list(), 
                           newset = sets:new() :: set(), 
                           newmap = dict:new() :: dict(), 
                           newstring = undefined :: string(), 
                           end_in_both = undefined :: integer()}).

%% struct listTypeVersioningV1

-record(listTypeVersioningV1, {myints = [] :: list(), 
                               hello = undefined :: string()}).

%% struct listTypeVersioningV2

-record(listTypeVersioningV2, {strings = [] :: list(), 
                               hello = undefined :: string()}).

%% struct guessProtocolStruct

-record(guessProtocolStruct, {map_field = dict:new() :: dict()}).

%% struct largeDeltas

-record(largeDeltas, {b1 = #bools{} :: #bools{}, 
                      b10 = #bools{} :: #bools{}, 
                      b100 = #bools{} :: #bools{}, 
                      check_true = undefined :: boolean(), 
                      b1000 = #bools{} :: #bools{}, 
                      check_false = undefined :: boolean(), 
                      vertwo2000 = #versioningTestV2{} :: #versioningTestV2{}, 
                      a_set2500 = sets:new() :: set(), 
                      vertwo3000 = #versioningTestV2{} :: #versioningTestV2{}, 
                      big_numbers = [] :: list()}).

%% struct nestedListsI32x2

-record(nestedListsI32x2, {integerlist = [] :: list()}).

%% struct nestedListsI32x3

-record(nestedListsI32x3, {integerlist = [] :: list()}).

%% struct nestedMixedx2

-record(nestedMixedx2, {int_set_list = [] :: list(), 
                        map_int_strset = dict:new() :: dict(), 
                        map_int_strset_list = [] :: list()}).

%% struct listBonks

-record(listBonks, {bonk = [] :: list()}).

%% struct nestedListsBonk

-record(nestedListsBonk, {bonk = [] :: list()}).

%% struct boolTest

-record(boolTest, {b = true :: boolean(), 
                   s = "true" :: string()}).

%% struct structA

-record(structA, {s = undefined :: string()}).

%% struct structB

-record(structB, {aa = #structA{} :: #structA{}, 
                  ab = #structA{} :: #structA{}}).

-endif.
