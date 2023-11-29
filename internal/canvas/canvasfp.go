package canvas

import (
	"syscall/js"

	"github.com/onlpsec/fingerprint/internal/crypto"
)

func drawCircle(ctx js.Value, x, y, radius int) {
	Pi := 3.14159265358979323846264338327950288419716939937510582097494459
	ctx.Call("beginPath")
	ctx.Call("arc", x, y, radius, 0, Pi*2, true)
	ctx.Call("closePath")
	ctx.Call("fill")
}

func CanvasFp() (string, int) {

	canvas := js.Global().Get("document").Call("createElement", "canvas")
	canvas.Set("width", 2000)
	canvas.Set("height", 200)
	canvas.Get("style").Set("display", "inline")

	ctx := canvas.Call("getContext", "2d")
	ctx.Call("rect", 0, 0, 10, 10)
	ctx.Call("rect", 2, 2, 6, 6)

	has_winding := 0
	winding := ctx.Call("isPointInPath", 5, 5, "evenodd").Bool() == false
	if winding == true {
		has_winding = 1
	}

	ctx.Set("textBaseline", "alphabetic")
	ctx.Set("fillStyle", "#f60")
	ctx.Call("fillRect", 125, 1, 62, 20)
	ctx.Set("fillStyle", "#069")
	ctx.Set("font", "11pt Arial")
	ctx.Call("fillText", "Cwm fjordbank glyphs vext quiz, 😂😂", 2, 15)

	ctx.Set("fillStyle", "rgba(102, 204, 0, 0.2)")
	ctx.Set("font", "18pt Arial")
	ctx.Call("fillText", "Cwm fjordbank glyphs vext quiz, 😂😂", 4, 45)

	ctx.Set("globalCompositeOperation", "multiply")
	ctx.Set("fillStyle", "rgb(255,0,255)")
	drawCircle(ctx, 50, 50, 50)
	ctx.Set("fillStyle", "rgb(0,255,255)")
	drawCircle(ctx, 100, 50, 50)
	ctx.Set("fillStyle", "rgb(255,255,0)")
	drawCircle(ctx, 75, 100, 50)
	ctx.Set("fillStyle", "rgb(255,0,255)")

	drawCircle(ctx, 75, 75, 75)
	drawCircle(ctx, 75, 75, 25)
	ctx.Call("fill", "evenodd")

	hash := ""
	if canvas.Get("toDataURL").Truthy() {
		// x64hash128 unavailable in GO
		hash = crypto.X64hash128(canvas.Call("toDataURL").String())
	}

	return hash, has_winding
}
