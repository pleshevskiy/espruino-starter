ESP := espruino -j espruino.json

watch: build-w

all: build

build: clean
	$(ESP) main.js -o target.js

build-w:
	$(ESP) main.js -w

clean:
	rm -f target.js

ide:
	$(ESP) --ide

deps:
	npm install -g espruino