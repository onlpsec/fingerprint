package main

import (
	"syscall/js"

	"github.com/onlpsec/fingerprint/internal/canvas"
)

func main() {
	c := make(chan struct{}, 0)

	js.Global().Set("getFp", js.FuncOf(canvas.CanvasFp))
	<-c
}
