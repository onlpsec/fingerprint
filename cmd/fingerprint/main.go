package main

import (
	x "syscall/js"

	"github.com/onlpsec/fingerprint/internal/canvas"
)

func main() {
	c := make(chan struct{}, 0)

	x.Global().Set("getFp", x.FuncOf(canvas.CanvasFp))
	<-c
}
