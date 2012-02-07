REBAR = ./rebar
THRIFT = thrift

.PHONY: all compile compile-thrift test clean get-deps

all: compile

compile:
	@$(REBAR) compile

compile-thrift:
	@for file in test/*.thrift ; do \
		$(THRIFT) --out test --gen erl $$file ; \
	done

test: compile-thrift
	@$(REBAR) eunit skip_deps=true

clean:
	@rm -f test/*_{thrift,types,constants}.{erl,hrl}
	@$(REBAR) clean

get-deps:
	@$(REBAR) get-deps
