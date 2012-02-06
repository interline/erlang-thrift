REBAR = ./rebar

.PHONY: all compile test clean get-deps

all: compile

compile:
	@$(REBAR) compile

test:
	@$(REBAR) eunit skip_deps=true

clean:
	@$(REBAR) clean

get-deps:
	@$(REBAR) get-deps
