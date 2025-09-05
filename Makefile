.PHONY: test clean

# Build a.out from runtime.s
#a.out: runtime.s main.s
#	cc -o a.out runtime.s main.s
# Use a custom entry symbol for macOS Mach-O
# See: ld -e entry
# Build a.out from runtime.s and main.s with entry _start
a.out: runtime.s main.s
	cc -Wl,-e,_start -o a.out runtime.s main.s

main.s:
	go run main.go > main.s

# Build and run tests
test: a.out
	./test.sh

clean:
	rm -f a.out main.s