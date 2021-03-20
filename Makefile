fs = fs
space = space
proc = proc

default:
	gcc sys/$(fs).c -o $(fs)
	gcc sys/$(space).c -o $(space)
	g++ $(proc).cpp -o $(proc)

clean:
	rm -rf $(fs)
	rm -rf $(space)
	rm -rf $(proc)
