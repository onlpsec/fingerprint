package webgl

import "syscall/js"

func getWebglEngine() js.Value {
	doc := js.Global().Get("document")
	canvas := doc.Call("createElement", "canvas")
	var gl js.Value
	defer func() {
		if r := recover(); r != nil {
			gl = js.Null()
		}
	}()
	gl = canvas.Call("getContext", "webgl")
	if gl.IsNull() {
		gl = canvas.Call("getContext", "experimental-webgl")
	}
	return gl
}
