ENTRY = src/main.js
EXIT = tar/bundle.js


all: serve

watch:
	watchify -r $(ENTRY) -o $(EXIT) --debug --verbose

build:
	browserify -r $(ENTRY) --outfile $(EXIT)

serve:
	node index.js

clean:
	rm $(EXIT)