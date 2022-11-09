all: one two three clean

one:
	touch one
two:
	touch two
three:
	touch three

clean:
	@rm -f one two three
