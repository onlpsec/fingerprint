# Wasm Web Fingerprinting library
Js/Wasm Obfuscated fingerprinting, bot detection & API protection library

state: `Pre-alpha`

### To implement:
- [x] Canvas Fp
- [x] Implement ProtoBuf protocol for communication
- [ ] If not switching to another languge/compiling method, optimise wasm loading and glue code
- [ ] Advanced Canvas Fp
- [x] WebGl Fp & Params Fp
- [ ] Screen Fp / Browser properties
- [ ] Audio Fp
- [ ] Css / Js and other fp techniques
- [ ] Bot / Automation detection
- [ ] Use mouse movements & bezier
- [ ] Tls and Ja3 Fingerprinting
- [ ] Make a Browser fp (finegrained) and Device fp (large grained, targets device)
- [ ] Implement Obfuscation (although wasm is a first step) and Encryption
- [ ] Implement an api that gets the fingerprint and processes data
- [ ] Implement all fp's natively (without go) to increase speed (rust ?)
- [ ] Train a model on recognising bad fp's
- [ ] Implement techniques to make fp as authentic as possible and difficult to fake

### Compiling golang to wasm
navigate to `./scripts` and run:
```sh
make
```

<img width="883" alt="image" src="https://github.com/onlpsec/fingerprint/assets/98614666/709eb3dc-81a0-46d5-a05d-b4d2e0986b60">

### Running the script
navigate to `./test` and run:
```sh
go run serve.go
```

You can then open [localhost:8080](http://localhost:8080) and the Fingerprint will be logged to console  
The fingerprints can be Accessible through calling `getFp()`

<img width="412" alt="image" src="https://github.com/onlpsec/fingerprint/assets/98614666/07fff7c5-4ed3-42ef-8980-7063ea1d2e1d">

### Performance
- Fp takes `~ 10ms` to compute (on `apple m2 air`)
- Wasm size is `71kb` and `25kb`, before and after compression

### Optimizing compiled wasm from golang (both tinygo and gzip are used here)

- using [tinygo](https://github.com/tinygo-org/tinygo) ~ `75%` filesize reduction
```js
// using -no-debug and -opt=z to strip debug info and minimize filesize
tinygo build -o output.wasm -target wasm -no-debug -opt=z input.go
```
drawback: limited library implementation - solution: implement libraries natively like [`HexEncode`](https://github.com/onlpsec/fingerprint/blob/main/internal/crypto/hex.go).

- using [gzip](https://www.gnu.org/software/gzip/) ~ `50%` filesize reduction
```sh
gzip -9 -v -c input.wasm > output.min.wasm
```
drawbacks: + `21kb` from [gzip](https://github.com/onlpsec/fingerprint/blob/main/test/static/gzip.min.js) javascript library

VsCode settings (for gopls):
```sh
 GOOS=js GOARCH=wasm
```
- if not, you will get an annoying (fake) error for including `syscall/js`
  
### Credits
- https://newassets.hcaptcha.com/c/ac578c1/hsw.js
- https://github.com/fingerprintjs/fingerprintjs
