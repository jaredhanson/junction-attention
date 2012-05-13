NODE = node
TEST = ./node_modules/.bin/vows
TESTS ?= test/*-test.js

test:
	@NODE_ENV=test NODE_PATH=lib $(TEST) $(TEST_FLAGS) $(TESTS)

docs: docs/api.html

docs/api.html: lib/junction/*.js
	dox \
		--title junction-attention \
		--desc "Attention middleware for Junction" \
		$(shell find lib/junction-attention/* -type f) > $@

docclean:
	rm -f docs/*.{1,html}

.PHONY: test docs docclean
