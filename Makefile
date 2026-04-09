.PHONY: build test start watch publish clean

build:
	npm run build

test:
	npm test

start:
	npm start

watch:
	npm run watch

publish:
	npm run build && npm publish --access public

clean:
	rm -rf dist
