package webgl

import (
	"syscall/js"
)

type WebGLParameters struct {
	Extensions      []interface{}
	General         map[string]interface{}
	ShaderPrecision map[string]interface{}
}

func GetWebGLParameters() WebGLParameters {

	glContext := getWebglEngine()

	maxAnisotropy := func(e js.Value) js.Value {
		t := js.Value{}
		i := e.Call("getExtension", "EXT_texture_filter_anisotropic")
		if !i.Truthy() {
			i = e.Call("getExtension", "WEBKIT_EXT_texture_filter_anisotropic")
		}
		if !i.Truthy() {
			i = e.Call("getExtension", "MOZ_EXT_texture_filter_anisotropic")
		}

		if i.Truthy() {
			t = e.Call("getParameter", i.Get("MAX_TEXTURE_MAX_ANISOTROPY_EXT"))
			if t.Int() == 0 {
				t = js.ValueOf(2)
			}
		}

		return t
	}(glContext)

	webglParameters := map[string]interface{}{
		"MAX_ANISOTROPY": maxAnisotropy,
		"ANTIALIAS":      "no",
	}
	if glContext.Call("getContextAttributes").Get("antialias").Truthy() {
		webglParameters["ANTIALIAS"] = "yes"
	}

	parameters := []string{
		"ALPHA_BITS",
		"BLUE_BITS",
		"DEPTH_BITS",
		"GREEN_BITS",
		"MAX_COMBINED_TEXTURE_IMAGE_UNITS",
		"MAX_CUBE_MAP_TEXTURE_SIZE",
		"MAX_FRAGMENT_UNIFORM_VECTORS",
		"MAX_RENDERBUFFER_SIZE",
		"MAX_TEXTURE_IMAGE_UNITS",
		"MAX_TEXTURE_SIZE",
		"MAX_VARYING_VECTORS",
		"MAX_VERTEX_ATTRIBS",
		"MAX_VERTEX_TEXTURE_IMAGE_UNITS",
		"MAX_VERTEX_UNIFORM_VECTORS",
		"RED_BITS",
		"RENDERER",
		"SHADING_LANGUAGE_VERSION",
		"STENCIL_BITS",
		"VENDOR",
		"VERSION",
	}

	arrayParams := []string{
		"ALIASED_LINE_WIDTH_RANGE",
		"ALIASED_POINT_SIZE_RANGE",
		"MAX_VIEWPORT_DIMS",
	}

	shaders := []string{
		"VERTEX_SHADER",
		"FRAGMENT_SHADER",
	}

	precisions := []string{
		"HIGH_FLOAT",
		"MEDIUM_FLOAT",
		"LOW_FLOAT",
		"HIGH_INT",
		"MEDIUM_INT",
		"LOW_INT",
	}

	precisionAttributesKeys := []string{"rangeMin", "rangeMax", "precision"}

	precisionAttributes := map[string]interface{}{}

	for _, shader := range shaders {
		for _, precision := range precisions {
			for _, attrKey := range precisionAttributesKeys {
				precisionAttributes[shader+"_"+precision+"_"+attrKey] =
					glContext.Call("getShaderPrecisionFormat", glContext.Get(shader), glContext.Get(precision)).Get(attrKey)
			}
		}
	}

	for _, parameter := range parameters {
		webglParameters[parameter] = glContext.Call("getParameter", glContext.Get(parameter))
	}

	for _, parameter := range arrayParams {
		jsonParam := glContext.Call("getParameter", glContext.Get(parameter))
		webglParameters[parameter] = "[" + jsonParam.Index(0).String() + "," + jsonParam.Index(1).String() + "]"
	}

	webglExtensions := glContext.Call("getSupportedExtensions")

	extensions := make([]interface{}, webglExtensions.Length())
	for i := 0; i < webglExtensions.Length(); i++ {
		extensions[i] = webglExtensions.Index(i).String()
	}

	return WebGLParameters{
		Extensions:      extensions,
		General:         webglParameters,
		ShaderPrecision: precisionAttributes,
	}
}
