package main

import "os"

var myInt int = 40
var myInt2 int = 2
var myString string = "to stderr\n"

func main() {
	print("hello world\n")
	print("to stderr\n")
	print(myString)
	os.Exit(myInt + myInt2)
}
