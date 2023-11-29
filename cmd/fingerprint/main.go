package main

import (
	"syscall/js"

	"github.com/onlpsec/fingerprint/internal/canvas"
	"github.com/onlpsec/fingerprint/internal/crypto"
	"github.com/onlpsec/fingerprint/internal/protobuf"
	"github.com/onlpsec/fingerprint/internal/types"
)

// func getFp(this js.Value, inputs []js.Value) interface{} {
// 	canvas_fingerprint := canvas.CanvasFp()

// 	proto_bean := map[int]interface{}{
// 		1: canvas_fingerprint,
// 		2: 2,
// 		3: map[int]interface{}{
// 			1: 1,
// 			2: 2,
// 			3: 3,
// 		},
// 	}

// 	return crypto.HexEncode(protobuf.ProtoBuf(proto_bean))
// }

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

func CanvasTest(this js.Value, inputs []js.Value) interface{} {
	hash, winding := canvas.CanvasFp()

	return types.FpStruct{
		Hash:    hash,
		Winding: winding,
	}
}

func main() {
	c := make(chan struct{}, 0)

	js.Global().Set("ProtoTest", js.FuncOf(ProtoTest))
	js.Global().Set("CanvasTest", js.FuncOf(CanvasTest))
	<-c
}
