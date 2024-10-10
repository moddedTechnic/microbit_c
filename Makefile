SRC_FILES := $(wildcard source/*)


all: out/MICROBIT.hex

out/MICROBIT.hex: out $(SRC_FILES)
	docker build -t microbit-tools --output out .

out:
	mkdir out


clean:
	rm -r out

