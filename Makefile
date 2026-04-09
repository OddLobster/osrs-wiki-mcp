.PHONY: build test start watch publish publish-patch publish-minor publish-major clean

build:
	npm run build

test:
	npm test

start:
	npm start

watch:
	npm run watch

publish-patch:
	npm version patch && npm run build && npm publish --access public

publish-minor:
	npm version minor && npm run build && npm publish --access public

publish-major:
	npm version major && npm run build && npm publish --access public

publish: publish-patch

clean:
	rm -rf dist
