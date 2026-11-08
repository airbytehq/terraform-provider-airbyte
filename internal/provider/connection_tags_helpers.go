package provider

import tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"

func preserveConnectionTagOrder(tags, prior []tfTypes.Tag) []tfTypes.Tag {
	if len(prior) == 0 || len(tags) == 0 {
		return tags
	}
	for _, tag := range prior {
		if tag.TagID.IsNull() || tag.TagID.IsUnknown() {
			return tags
		}
	}
	ordered := make([]tfTypes.Tag, 0, len(tags))
	used := make([]bool, len(tags))
	for _, old := range prior {
		for i, tag := range tags {
			if !used[i] && old.TagID.Equal(tag.TagID) {
				ordered = append(ordered, tag)
				used[i] = true
				break
			}
		}
	}
	for i, tag := range tags {
		if !used[i] {
			ordered = append(ordered, tag)
		}
	}
	return ordered
}
