# Test Results: Self-Managed Enterprise v2.0.1

**Date:** January 8, 2026  
**Target:** `https://airbyte-enterprise.conall.org/api/public/v1/`  
**Registry Version:** v0.13.0  
**Local Build:** Latest from `main` branch

---

## Test Summary

| Scenario | Create | Apply | Stability |
|----------|--------|-------|-----------|
| Registry v0.13.0 | ✅ 4 resources | ✅ Success | ⚠️ Drift bug |
| Local Build (Upgrade) | N/A | ✅ Success | ⚠️ Drift bug |
| Local Build (Clean) | ✅ 4 resources | ✅ Success | ⚠️ Drift bug |

---

## Scenario 1: Registry v0.13.0

### Plan
- **Result:** 4 to add, 0 to change, 0 to destroy
- **Output:** `registry-v0.13.0/plan.txt`

### Apply
- **Result:** 4 resources created successfully
- **Output:** `registry-v0.13.0/apply.txt`

---

## Scenario 2: Local Build (Upgrade from Registry State)

Tested switching from registry v0.13.0 to local build with existing state.

### Plan
- **Result:** 0 to add, 1 to change, 0 to destroy
- **Finding:** Local build detected a change in `api_key` field
- **Output:** `local-build-upgrade/plan.txt`

### Apply
- **Result:** 1 resource modified
- **Output:** `local-build-upgrade/apply.txt`

---

## Scenario 3: Local Build (Clean Install)

Tested fresh apply with local build after destroying all resources.

### Plan
- **Result:** 4 to add, 0 to change, 0 to destroy
- **Output:** `local-build-clean/plan.txt`

### Apply
- **Result:** 4 resources created successfully
- **Output:** `local-build-clean/apply.txt`

---

## Bug Found: Perpetual State Drift

### Description
The `airbyte_source_custom` resource shows perpetual drift on the `configuration.api_key` field:

```hcl
~ configuration = jsonencode(
    ~ {
        ~ api_key = "**********" -> "Bli8LtpYKu07NVlB9QQavwSLbCbLLLhn"
      }
  )
```

### Root Cause
- The Airbyte API returns masked sensitive values (`**********`)
- The provider compares the masked API response to the Terraform config value
- This comparison always shows a diff, causing perpetual "update in-place" plans

### Affected Versions
- ✅ **Registry v0.13.0** — Bug exists
- ✅ **Local Build** — Bug exists (not a regression)

### Impact
- Every `terraform plan` shows 1 change
- Every `terraform apply` updates the resource (no actual change)
- Does not break functionality, but causes user confusion

### Recommended Fix
The provider should either:
1. Use `DiffSuppressFunc` to ignore masked values
2. Store the original config value in state instead of the API response
3. Mark the field as `Sensitive` and skip comparison when masked

---

## Files Structure

```
outputs/
├── registry-v0.13.0/
│   ├── plan.txt
│   ├── apply.txt
│   └── destroy.txt
├── local-build-upgrade/
│   ├── plan.txt
│   └── apply.txt
├── local-build-clean/
│   ├── plan.txt
│   ├── apply.txt
│   └── plan-stability.txt
└── TEST_RESULTS.md
```

---

## Conclusion

✅ **Local build is compatible with registry v0.13.0**  
✅ **No regressions introduced**  
⚠️ **Pre-existing bug:** `airbyte_source_custom` has perpetual drift on sensitive fields

