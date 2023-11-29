package protobuf

import (
	"bytes"
	"sort"
)

type ProtoFieldType int

const (
	VARINT ProtoFieldType = iota
	INT64
	STRING
)

func write0(data *bytes.Buffer, byte byte) {
	data.WriteByte(byte & 0xFF)
}

func write(data *bytes.Buffer, bytes []byte) {
	data.Write(bytes)
}

func writeVarint(data *bytes.Buffer, vint uint32) {
	vint = vint & 0xFFFFFFFF
	for vint > 0x80 {
		write0(data, byte((vint&0x7F)|0x80))
		vint >>= 7
	}
	write0(data, byte(vint&0x7F))
}

func writeString(data *bytes.Buffer, str string) {
	writeVarint(data, uint32(len(str)))
	write(data, []byte(str))
}

func ProtoBuf(data map[int]interface{}) []byte {
	result := new(bytes.Buffer)

	// Get the keys and sort them
	keys := make([]int, 0, len(data))
	for k := range data {
		keys = append(keys, k)
	}
	sort.Ints(keys)

	// Iterate over the sorted keys
	for _, k := range keys {
		v := data[k]
		switch v := v.(type) {
		case int:
			key := (k << 3) | int(VARINT&7)
			writeVarint(result, uint32(key))
			writeVarint(result, uint32(v))

		case string:
			key := (k << 3) | int(STRING&7)
			writeVarint(result, uint32(key))
			writeString(result, v)

		case map[int]interface{}:
			key := (k << 3) | int(STRING&7)
			writeVarint(result, uint32(key))
			writeString(result, string(ProtoBuf(v)))

		default:
			panic("")
		}
	}
	return result.Bytes()
}
