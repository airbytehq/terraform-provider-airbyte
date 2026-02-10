package provider

import (
	"encoding/json"
	"strconv"

	"github.com/hashicorp/terraform-plugin-framework/types"
)

func extractJSONString(raw map[string]json.RawMessage, key string) string {
	v, ok := raw[key]
	if !ok {
		return ""
	}
	var s string
	if err := json.Unmarshal(v, &s); err != nil {
		return ""
	}
	return s
}

func extractJSONInt64(raw map[string]json.RawMessage, key string) types.Int64 {
	v, ok := raw[key]
	if !ok {
		return types.Int64Null()
	}
	var s string
	if err := json.Unmarshal(v, &s); err == nil {
		if i, err := strconv.ParseInt(s, 10, 64); err == nil {
			return types.Int64Value(i)
		}
	}
	var n json.Number
	if err := json.Unmarshal(v, &n); err == nil {
		if i, err := n.Int64(); err == nil {
			return types.Int64Value(i)
		}
	}
	var i int64
	if err := json.Unmarshal(v, &i); err == nil {
		return types.Int64Value(i)
	}
	return types.Int64Null()
}
