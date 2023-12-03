package main

import (
	"syscall/js"
	"time"

	"github.com/onlpsec/fingerprint/internal/canvas"
	"github.com/onlpsec/fingerprint/internal/crypto"
	"github.com/onlpsec/fingerprint/internal/protobuf"
	"github.com/onlpsec/fingerprint/internal/webgl"
)

func ProtoTest(this js.Value, inputs []js.Value) interface{} {
	hash, winding := canvas.CanvasFp()

	proto_bean := map[int]interface{}{
		1: "field_ome",
		2: 2,
		3: map[int]interface{}{
			1: hash,
			2: winding,
		},
		4: "abcdef",
		5: "field_ome",
		6: 2,
		7: map[int]interface{}{
			1: 1,
			2: 2,
			3: map[int]interface{}{
				1: 1,
				2: 2,
			},
		},
		8: "abcdef",
	}

	return crypto.HexEncode(protobuf.ProtoBuf(proto_bean))
}

func getFp(this js.Value, inputs []js.Value) interface{} {
	start := time.Now()
	canvas_fp, canvas_winding := canvas.CanvasFp()
	webgl_fp := webgl.WebglFp()

	performance := time.Since(start).Seconds()

	return js.ValueOf(map[string]interface{}{
		"canvas": map[string]interface{}{
			"fp":      canvas_fp,
			"winding": canvas_winding,
		},
		"webgl": map[string]interface{}{
			"fp": webgl_fp,
		},
		"elapsed": performance,
	})
}

func main() {
	c := make(chan struct{}, 0)

	js.Global().Set("ProtoTest", js.FuncOf(ProtoTest))
	js.Global().Set("getFp", js.FuncOf(getFp))
	<-c
}
