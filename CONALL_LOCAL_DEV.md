# Local Development Quick Reference

This document explains the shell aliases configured for switching between local and registry versions of the Terraform Airbyte provider.

## Prerequisites

- Go 1.23.0+
- Terraform 1.0+
- Shell aliases configured in `~/.zshrc`

## Available Commands

### `tf-local`

Switches Terraform to use your **locally built** provider binary.

```bash
tf-local
```

**What it does:**
- Sets `TF_CLI_CONFIG_FILE` to `~/.terraformrc-local`
- Terraform will use the binary at `~/tf-providers/airbyte-local/terraform-provider-airbyte`
- No `terraform init` required — the local binary is used directly

**Use when:** Testing local code changes before committing.

---

### `tf-registry`

Switches Terraform to use the **published registry** version.

```bash
tf-registry
```

**What it does:**
- Unsets `TF_CLI_CONFIG_FILE`
- Terraform will download the provider from the [Terraform Registry](https://registry.terraform.io/providers/airbytehq/airbyte)

**Use when:** Comparing behavior against the released version.

> **Note:** Run `terraform init -upgrade` after switching to registry to fetch the published provider.

---

### `tf-which`

Shows which provider configuration is currently active.

```bash
tf-which
```

**Example outputs:**
```
TF_CLI_CONFIG_FILE=/Users/c.ogribin/.terraformrc-local   # Using local build
TF_CLI_CONFIG_FILE=<unset - using registry>              # Using registry
```

---

### `tf-rebuild`

Rebuilds the local provider binary after making code changes.

```bash
tf-rebuild
```

**What it does:**
1. Changes to the provider repo directory
2. Runs `go build` to compile the provider
3. Outputs the binary to `~/tf-providers/airbyte-local/`

**Use when:** After modifying provider source code.

---

## Typical Workflow

### Testing Local Changes

```bash
# 1. Make code changes in the provider repo

# 2. Rebuild the provider
tf-rebuild

# 3. Switch to local build
tf-local

# 4. Test with Terraform
cd /path/to/terraform/config
terraform plan
terraform apply
```

### Comparing Local vs Registry

```bash
# Test with local build
tf-local
terraform plan > local-plan.txt

# Test with registry version
tf-registry
terraform init -upgrade
terraform plan > registry-plan.txt

# Compare
diff local-plan.txt registry-plan.txt
```

---

## File Locations

| File | Purpose |
|------|---------|
| `~/.terraformrc-local` | Config pointing to local binary |
| `~/.terraformrc-registry` | Config for registry (no overrides) |
| `~/tf-providers/airbyte-local/` | Directory containing local provider binary |
| `~/.zshrc` | Shell aliases defined here |

---

## Troubleshooting

### "command not found: tf-local"

The aliases aren't loaded. Either:
- Open a new terminal, or
- Run `source ~/.zshrc`

### Provider version mismatch

If Terraform complains about version constraints when using the local build:
- Local builds don't have version metadata
- The `dev_overrides` in `.terraformrc-local` bypasses version checks

### Changes not reflected

After modifying provider code:
1. Run `tf-rebuild` to recompile
2. Ensure you're using `tf-local` (check with `tf-which`)
3. Run `terraform plan` again (no init needed)

---

## Related Documentation

- [CONTRIBUTING.md](./CONTRIBUTING.md) — Full contributor guide
- [Terraform Provider Development](https://developer.hashicorp.com/terraform/plugin/framework)

