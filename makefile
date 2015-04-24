ENTRY = src/main.js
EXIT = tar/bundle.js


all: serve

install:
	sudo npm install -g browserify
	sudo npm install -g watchify
	sudo npm install

watch:
	watchify $(ENTRY) -o $(EXIT) --debug --verbose

build:
	browserify $(ENTRY) > $(EXIT)

serve:
	node index.js

clean:
	rm $(EXIT)