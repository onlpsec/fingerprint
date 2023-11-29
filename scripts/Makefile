.PHONY: compile

compile:
	@echo "compiling to wasm ..."
	cd ../cmd/fingerprint/ && tinygo build -o ../../dist/script.wasm -target wasm -no-debug -opt=z main.go
	@size=$$(($$(wc -c < ../dist/script.wasm)/1024)) ; \
		printf "wasm size: %s kB\n" $$size
	@echo "compressing wasm with gzip..."
	gzip -9 -v -c ../dist/script.wasm > ../dist/script.min.wasm
	@size=$$(($$(wc -c < ../dist/script.min.wasm)/1024)) ; \
		printf "compressed wasm size: %s kB\n" $$size
	@echo "done. wasm is in ./dist/script.wasm"