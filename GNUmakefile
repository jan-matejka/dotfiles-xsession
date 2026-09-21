.DEFAULT_GOAL := build

.PHONY: build
build:

.PHONY: install
install: build

	install -m700 .xsession $(HOME)/.xsession

.PHONY: diff
diff:

	diff -burN $(HOME)/.xsession .xsession
.PHONY: clean
clean:
