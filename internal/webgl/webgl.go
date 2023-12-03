package webgl

import (
	"syscall/js"

	"github.com/onlpsec/fingerprint/internal/crypto"
)

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

func WebglFp() interface{} {
	webglContext := getWebglEngine()
	if webglContext.IsNull() {
		return -1
	}

	vShaderTemplate := "attribute vec2 attrVertex;varying vec2 varyinTexCoordinate;uniform vec2 uniformOffset;void main(){varyinTexCoordinate=attrVertex+uniformOffset;gl_Position=vec4(attrVertex,0,1);}"
	fShaderTemplate := "precision mediump float;varying vec2 varyinTexCoordinate;void main() {gl_FragColor=vec4(varyinTexCoordinate,0,1);}"

	vertexPosBuffer := webglContext.Call("createBuffer")
	webglContext.Call("bindBuffer", webglContext.Get("ARRAY_BUFFER"), vertexPosBuffer)

	vertices := []float32{-0.2, -0.9, 0, 0.4, -0.26, 0, 0, 0.732134444, 0}
	array := make([]interface{}, len(vertices))
	for i, v := range vertices {
		array[i] = v
	}
	jsVertices := js.ValueOf(array)
	float32Array := js.Global().Get("Float32Array").New(jsVertices)
	webglContext.Call("bufferData", webglContext.Get("ARRAY_BUFFER"), float32Array, webglContext.Get("STATIC_DRAW"))

	program := webglContext.Call("createProgram")
	vshader := webglContext.Call("createShader", webglContext.Get("VERTEX_SHADER"))
	webglContext.Call("shaderSource", vshader, vShaderTemplate)
	webglContext.Call("compileShader", vshader)
	fshader := webglContext.Call("createShader", webglContext.Get("FRAGMENT_SHADER"))
	webglContext.Call("shaderSource", fshader, fShaderTemplate)
	webglContext.Call("compileShader", fshader)

	webglContext.Call("attachShader", program, vshader)
	webglContext.Call("attachShader", program, fshader)
	webglContext.Call("linkProgram", program)
	webglContext.Call("useProgram", program)

	attrVertex := webglContext.Call("getAttribLocation", program, "attrVertex")
	webglContext.Call("enableVertexAttribArray", attrVertex)
	webglContext.Call("vertexAttribPointer", attrVertex, 2, webglContext.Get("FLOAT"), false, 0, 0)

	uniformOffset := webglContext.Call("getUniformLocation", program, "uniformOffset")
	webglContext.Call("uniform2f", uniformOffset, 1, 1)

	webglContext.Call("drawArrays", webglContext.Get("TRIANGLE_STRIP"), 0, len(vertices)/2)

	result := webglContext.Get("canvas").Call("toDataURL").String()

	return crypto.X64hash128(result)
}
